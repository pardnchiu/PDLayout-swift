//
//  PDLayout.swift
//
//  Created by Pardn Chiu on 2023/04/25
//  Copyright © 2023 Pardn Ltd. All rights reserved.
//

import Foundation
import UIKit

extension NSLayoutYAxisAnchor {
	func eq(_ target: NSLayoutYAxisAnchor,_ value: CGFloat) -> NSLayoutConstraint { return self.constraint(equalTo: target, constant: value) };
	func gt(_ target: NSLayoutYAxisAnchor,_ value: CGFloat) -> NSLayoutConstraint { return self.constraint(greaterThanOrEqualTo: target, constant: value) };
	func lt(_ target: NSLayoutYAxisAnchor,_ value: CGFloat) -> NSLayoutConstraint { return self.constraint(lessThanOrEqualTo: target, constant: value) };
};

extension NSLayoutXAxisAnchor {
	func eq(_ target: NSLayoutXAxisAnchor,_ value: CGFloat) -> NSLayoutConstraint { return self.constraint(equalTo: target, constant: value) };
	func gt(_ target: NSLayoutXAxisAnchor,_ value: CGFloat) -> NSLayoutConstraint { return self.constraint(greaterThanOrEqualTo: target, constant: value) };
	func lt(_ target: NSLayoutXAxisAnchor,_ value: CGFloat) -> NSLayoutConstraint { return self.constraint(lessThanOrEqualTo: target, constant: value) };
};

extension NSLayoutDimension {
	func eq(_ value: CGFloat) -> NSLayoutConstraint { return self.constraint(equalToConstant: value) };
	func gt(_ value: CGFloat) -> NSLayoutConstraint { return self.constraint(greaterThanOrEqualToConstant: value) };
	func lt(_ value: CGFloat) -> NSLayoutConstraint { return self.constraint(lessThanOrEqualToConstant: value) };
		
	func eq(_ target: NSLayoutDimension,_ value: CGFloat) -> NSLayoutConstraint { return self.constraint(equalTo: target, multiplier: value) };
	func gt(_ target: NSLayoutDimension,_ value: CGFloat) -> NSLayoutConstraint { return self.constraint(greaterThanOrEqualTo: target, multiplier: value) };
	func lt(_ target: NSLayoutDimension,_ value: CGFloat) -> NSLayoutConstraint { return self.constraint(lessThanOrEqualTo: target, multiplier: value) };
};

extension UIView {
	
	var fx: NSLayoutXAxisAnchor { get { return self.centerXAnchor } };
	var fy: NSLayoutYAxisAnchor { get { return self.centerYAnchor } };
	var ft: NSLayoutYAxisAnchor { get { return self.topAnchor } };
	var fl: NSLayoutXAxisAnchor { get { return self.leftAnchor } };
	var fb: NSLayoutYAxisAnchor { get { return self.bottomAnchor } };
	var fr: NSLayoutXAxisAnchor { get { return self.rightAnchor } };
	var fw: NSLayoutDimension   { get { return self.widthAnchor } };
	var fh: NSLayoutDimension   { get { return self.heightAnchor } };
		
	func autolayout(_ bool: Bool) 		    -> UIView { self.translatesAutoresizingMaskIntoConstraints = !bool; return self; };
	func Xeq(X target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fx.eq(target.fx, value).isActive = true; return self; };
	func Xeq(L target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fx.eq(target.fl, value).isActive = true; return self; };
	func Xeq(R target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fx.eq(target.fr, value).isActive = true; return self; };
	func Leq(X target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fl.eq(target.fx, value).isActive = true; return self; };
	func Leq(L target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fl.eq(target.fl, value).isActive = true; return self; };
	func Leq(R target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fl.eq(target.fr, value).isActive = true; return self; };
	func Req(X target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fr.eq(target.fx, value).isActive = true; return self; };
	func Req(L target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fr.eq(target.fl, value).isActive = true; return self; };
	func Req(R target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fr.eq(target.fr, value).isActive = true; return self; };
	
	func Yeq(Y target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fy.eq(target.fy, value).isActive = true; return self; };
	func Yeq(T target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fy.eq(target.ft, value).isActive = true; return self; };
	func Yeq(B target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fy.eq(target.fb, value).isActive = true; return self; };
	func Teq(Y target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).ft.eq(target.fy, value).isActive = true; return self; };
	func Teq(T target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).ft.eq(target.ft, value).isActive = true; return self; };
	func Teq(B target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).ft.eq(target.fb, value).isActive = true; return self; };
	func Beq(Y target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fb.eq(target.fy, value).isActive = true; return self; };
	func Beq(T target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fb.eq(target.ft, value).isActive = true; return self; };
	func Beq(B target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fb.eq(target.fb, value).isActive = true; return self; };
	
	func Weq(W target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fw.eq(target.fw, value).isActive = true; return self; };
	func Weq(H target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fw.eq(target.fh, value).isActive = true; return self; };
	func Weq(_ value: CGFloat) 		    -> UIView { self.autolayout(true).fw.eq(value).isActive = true; return self; };
	
	func Heq(W target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fh.eq(target.fw, value).isActive = true; return self; };
	func Heq(H target: UIView,_ value: CGFloat) -> UIView { self.autolayout(true).fh.eq(target.fh, value).isActive = true; return self; };
	func Heq(_ value: CGFloat) 		    -> UIView { self.autolayout(true).fh.eq(value).isActive = true; return self; };	
};

