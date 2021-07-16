// Copyright (c) 2021 ippee
// This source code is under the MIT License.
// See http://opensource.org/licenses/mit-license.php

extern crate clipboard;

use clipboard::ClipboardProvider;
use clipboard::ClipboardContext;

use std::ffi::CStr;
use std::ffi::CString;
use std::os::raw::c_char;

#[no_mangle]
pub extern "C" fn get_contents() -> *const c_char {
  let mut ctx: ClipboardContext = ClipboardProvider::new().expect("ClipboardProvider::new failed");

  match ctx.get_contents() {
    Ok(v) => {
      let cstring = CString::new(v).expect("CString::new failed");
      return cstring.into_raw();
    },
    Err(_e) => panic!("Failed to get the clipboard contents"),
  }
}

#[no_mangle]
pub extern "C" fn set_contents(data: *const c_char) {
  let cstr = unsafe { CStr::from_ptr(data) };
  let rstr = cstr.to_str().expect("Failed to cast of CStr to &str");

  let mut ctx: ClipboardContext = ClipboardProvider::new().expect("ClipboardProvider::new failed");
  ctx.set_contents(rstr.to_owned()).expect("ctx.set_contents failed");
}

#[cfg(test)]
mod tests {
  use crate::{get_contents, set_contents};
  use std::ffi::CStr;
  use std::ffi::CString;

  #[test]
fn set_get_clipboard_contents() {
    let contents = CString::new("All the world's a stage").expect("CString::new failed");
    let expected_ptr = contents.into_raw();

    set_contents(expected_ptr);
    let actual_ptr = get_contents();

    let expected = unsafe { CStr::from_ptr(expected_ptr) };
    let actual = unsafe { CStr::from_ptr(actual_ptr) };

    assert_eq!(actual, expected);
  }
}
