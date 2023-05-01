/**
 Copyright 2023 Pardn Ltd 帕登國際有限公司.
 Created by Pardn Chiu 邱敬幃.
 Email: chiuchingwei@icloud.com
 */

import Foundation
import UIKit

extension NSLayoutXAxisAnchor {
	func eq(_ anchor: NSLayoutXAxisAnchor) -> NSLayoutConstraint { return self.constraint(equalTo: anchor) };
	func ge(_ anchor: NSLayoutXAxisAnchor) -> NSLayoutConstraint { return self.constraint(greaterThanOrEqualTo: anchor) };
	func le(_ anchor: NSLayoutXAxisAnchor) -> NSLayoutConstraint { return self.constraint(lessThanOrEqualTo: anchor) };

	func eq(_ anchor: NSLayoutXAxisAnchor,_ val: CGFloat) -> NSLayoutConstraint { return self.constraint(equalTo: anchor, constant: val) };
	func ge(_ anchor: NSLayoutXAxisAnchor,_ val: CGFloat) -> NSLayoutConstraint { return self.constraint(greaterThanOrEqualTo: anchor, constant: val) };
	func le(_ anchor: NSLayoutXAxisAnchor,_ val: CGFloat) -> NSLayoutConstraint { return self.constraint(lessThanOrEqualTo: anchor, constant: val) };
};

extension NSLayoutYAxisAnchor {
	func eq(_ anchor: NSLayoutYAxisAnchor) -> NSLayoutConstraint { return self.constraint(equalTo: anchor) };
	func ge(_ anchor: NSLayoutYAxisAnchor) -> NSLayoutConstraint { return self.constraint(greaterThanOrEqualTo: anchor) };
	func le(_ anchor: NSLayoutYAxisAnchor) -> NSLayoutConstraint { return self.constraint(lessThanOrEqualTo: anchor) };

	func eq(_ anchor: NSLayoutYAxisAnchor,_ val: CGFloat) -> NSLayoutConstraint { return self.constraint(equalTo: anchor, constant: val) };
	func ge(_ anchor: NSLayoutYAxisAnchor,_ val: CGFloat) -> NSLayoutConstraint { return self.constraint(greaterThanOrEqualTo: anchor, constant: val) };
	func le(_ anchor: NSLayoutYAxisAnchor,_ val: CGFloat) -> NSLayoutConstraint { return self.constraint(lessThanOrEqualTo: anchor, constant: val) };
};

extension NSLayoutDimension {
	func eq(_ val: CGFloat) -> NSLayoutConstraint { return self.constraint(equalToConstant: val) };
	func ge(_ val: CGFloat) -> NSLayoutConstraint { return self.constraint(greaterThanOrEqualToConstant: val) };
	func le(_ val: CGFloat) -> NSLayoutConstraint { return self.constraint(lessThanOrEqualToConstant: val) };

	func eq(_ anchor: NSLayoutDimension) -> NSLayoutConstraint { return self.constraint(equalTo: anchor) };
	func ge(_ anchor: NSLayoutDimension) -> NSLayoutConstraint { return self.constraint(greaterThanOrEqualTo: anchor) };
	func le(_ anchor: NSLayoutDimension) -> NSLayoutConstraint { return self.constraint(lessThanOrEqualTo: anchor) };

	func eq(_ anchor: NSLayoutDimension,_ val: CGFloat) -> NSLayoutConstraint { return self.constraint(equalTo: anchor, constant: val) };
	func ge(_ anchor: NSLayoutDimension,_ val: CGFloat) -> NSLayoutConstraint { return self.constraint(greaterThanOrEqualTo: anchor, constant: val) };
	func le(_ anchor: NSLayoutDimension,_ val: CGFloat) -> NSLayoutConstraint { return self.constraint(lessThanOrEqualTo: anchor, constant: val) };
};

extension UIView {

	var lytX: NSLayoutXAxisAnchor { get { return self.centerXAnchor } };
	var lytL: NSLayoutXAxisAnchor { get { return self.leftAnchor } };
	var lytR: NSLayoutXAxisAnchor { get { return self.rightAnchor } };

	var lytY: NSLayoutYAxisAnchor { get { return self.centerYAnchor } };
	var lytT: NSLayoutYAxisAnchor { get { return self.topAnchor } };
	var lytB: NSLayoutYAxisAnchor { get { return self.bottomAnchor } };

	var lytW: NSLayoutDimension 	{ get { return self.widthAnchor } };
	var lytH: NSLayoutDimension 	{ get { return self.heightAnchor } };

	func end() {};
	func autolayout(_ bool: Bool) -> UIView { self.translatesAutoresizingMaskIntoConstraints = !bool; return self; };

	func Xeq(X anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytX.eq(anchor.lytX, val).isActive = true; return self; };
	func Xeq(L anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytX.eq(anchor.lytL, val).isActive = true; return self; };
	func Xeq(R anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytX.eq(anchor.lytR, val).isActive = true; return self; };

	func Leq(X anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytL.eq(anchor.lytX, val).isActive = true; return self; };
	func Leq(L anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytL.eq(anchor.lytL, val).isActive = true; return self; };
	func Leq(R anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytL.eq(anchor.lytR, val).isActive = true; return self; };

	func Req(X anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytR.eq(anchor.lytX, val).isActive = true; return self; };
	func Req(L anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytR.eq(anchor.lytL, val).isActive = true; return self; };
	func Req(R anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytR.eq(anchor.lytR, val).isActive = true; return self; };

	func Yeq(Y anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytY.eq(anchor.lytY, val).isActive = true; return self; };
	func Yeq(T anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytY.eq(anchor.lytT, val).isActive = true; return self; };
	func Yeq(B anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytY.eq(anchor.lytB, val).isActive = true; return self; };

	func Teq(Y anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytT.eq(anchor.lytY, val).isActive = true; return self; };
	func Teq(T anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytT.eq(anchor.lytT, val).isActive = true; return self; };
	func Teq(B anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytT.eq(anchor.lytB, val).isActive = true; return self; };

	func Beq(Y anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytB.eq(anchor.lytY, val).isActive = true; return self; };
	func Beq(T anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytB.eq(anchor.lytT, val).isActive = true; return self; };
	func Beq(B anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytB.eq(anchor.lytB, val).isActive = true; return self; };

	func Weq(W anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytW.eq(anchor.lytW, val).isActive = true; return self; };
	func Weq(H anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytW.eq(anchor.lytH, val).isActive = true; return self; };

	func Heq(W anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytH.eq(anchor.lytW, val).isActive = true; return self; };
	func Heq(H anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytH.eq(anchor.lytH, val).isActive = true; return self; };

	func Xeq(X anchor: UIView) -> UIView 	{ self.autolayout(true).lytX.eq(anchor.lytX).isActive = true; return self; };
	func Xeq(L anchor: UIView) -> UIView 	{ self.autolayout(true).lytX.eq(anchor.lytL).isActive = true; return self; };
	func Xeq(R anchor: UIView) -> UIView 	{ self.autolayout(true).lytX.eq(anchor.lytR).isActive = true; return self; };

	func Leq(X anchor: UIView) -> UIView 	{ self.autolayout(true).lytL.eq(anchor.lytX).isActive = true; return self; };
	func Leq(L anchor: UIView) -> UIView 	{ self.autolayout(true).lytL.eq(anchor.lytL).isActive = true; return self; };
	func Leq(R anchor: UIView) -> UIView 	{ self.autolayout(true).lytL.eq(anchor.lytR).isActive = true; return self; };

	func Req(X anchor: UIView) -> UIView 	{ self.autolayout(true).lytR.eq(anchor.lytX).isActive = true; return self; };
	func Req(L anchor: UIView) -> UIView 	{ self.autolayout(true).lytR.eq(anchor.lytL).isActive = true; return self; };
	func Req(R anchor: UIView) -> UIView 	{ self.autolayout(true).lytR.eq(anchor.lytR).isActive = true; return self; };

	func Yeq(Y anchor: UIView) -> UIView 	{ self.autolayout(true).lytY.eq(anchor.lytY).isActive = true; return self; };
	func Yeq(T anchor: UIView) -> UIView 	{ self.autolayout(true).lytY.eq(anchor.lytT).isActive = true; return self; };
	func Yeq(B anchor: UIView) -> UIView 	{ self.autolayout(true).lytY.eq(anchor.lytB).isActive = true; return self; };

	func Teq(Y anchor: UIView) -> UIView 	{ self.autolayout(true).lytT.eq(anchor.lytY).isActive = true; return self; };
	func Teq(T anchor: UIView) -> UIView 	{ self.autolayout(true).lytT.eq(anchor.lytT).isActive = true; return self; };
	func Teq(B anchor: UIView) -> UIView 	{ self.autolayout(true).lytT.eq(anchor.lytB).isActive = true; return self; };

	func Beq(Y anchor: UIView) -> UIView 	{ self.autolayout(true).lytB.eq(anchor.lytY).isActive = true; return self; };
	func Beq(T anchor: UIView) -> UIView 	{ self.autolayout(true).lytB.eq(anchor.lytT).isActive = true; return self; };
	func Beq(B anchor: UIView) -> UIView 	{ self.autolayout(true).lytB.eq(anchor.lytB).isActive = true; return self; };

	func Weq(W anchor: UIView) -> UIView 	{ self.autolayout(true).lytW.eq(anchor.lytW).isActive = true; return self; };
	func Weq(H anchor: UIView) -> UIView 	{ self.autolayout(true).lytW.eq(anchor.lytH).isActive = true; return self; };

	func Heq(W anchor: UIView) -> UIView 	{ self.autolayout(true).lytH.eq(anchor.lytW).isActive = true; return self; };
	func Heq(H anchor: UIView) -> UIView 	{ self.autolayout(true).lytH.eq(anchor.lytH).isActive = true; return self; };

	func Weq(_ val: CGFloat) -> UIView 		{ self.autolayout(true).lytW.eq(val).isActive = true; return self; };
	func Heq(_ val: CGFloat) -> UIView 		{ self.autolayout(true).lytH.eq(val).isActive = true; return self; };

	func Xge(X anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytX.ge(anchor.lytX, val).isActive = true; return self; };
	func Xge(L anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytX.ge(anchor.lytL, val).isActive = true; return self; };
	func Xge(R anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytX.ge(anchor.lytR, val).isActive = true; return self; };

	func Lge(X anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytL.ge(anchor.lytX, val).isActive = true; return self; };
	func Lge(L anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytL.ge(anchor.lytL, val).isActive = true; return self; };
	func Lge(R anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytL.ge(anchor.lytR, val).isActive = true; return self; };

	func Rge(X anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytR.ge(anchor.lytX, val).isActive = true; return self; };
	func Rge(L anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytR.ge(anchor.lytL, val).isActive = true; return self; };
	func Rge(R anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytR.ge(anchor.lytR, val).isActive = true; return self; };

	func Yge(Y anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytY.ge(anchor.lytY, val).isActive = true; return self; };
	func Yge(T anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytY.ge(anchor.lytT, val).isActive = true; return self; };
	func Yge(B anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytY.ge(anchor.lytB, val).isActive = true; return self; };

	func Tge(Y anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytT.ge(anchor.lytY, val).isActive = true; return self; };
	func Tge(T anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytT.ge(anchor.lytT, val).isActive = true; return self; };
	func Tge(B anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytT.ge(anchor.lytB, val).isActive = true; return self; };

	func Bge(Y anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytB.ge(anchor.lytY, val).isActive = true; return self; };
	func Bge(T anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytB.ge(anchor.lytT, val).isActive = true; return self; };
	func Bge(B anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytB.ge(anchor.lytB, val).isActive = true; return self; };

	func Wge(W anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytW.ge(anchor.lytW, val).isActive = true; return self; };
	func Wge(H anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytW.ge(anchor.lytH, val).isActive = true; return self; };

	func Hge(W anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytH.ge(anchor.lytW, val).isActive = true; return self; };
	func Hge(H anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytH.ge(anchor.lytH, val).isActive = true; return self; };

	func Xge(X anchor: UIView) -> UIView 	{ self.autolayout(true).lytX.ge(anchor.lytX).isActive = true; return self; };
	func Xge(L anchor: UIView) -> UIView 	{ self.autolayout(true).lytX.ge(anchor.lytL).isActive = true; return self; };
	func Xge(R anchor: UIView) -> UIView 	{ self.autolayout(true).lytX.ge(anchor.lytR).isActive = true; return self; };

	func Lge(X anchor: UIView) -> UIView 	{ self.autolayout(true).lytL.ge(anchor.lytX).isActive = true; return self; };
	func Lge(L anchor: UIView) -> UIView 	{ self.autolayout(true).lytL.ge(anchor.lytL).isActive = true; return self; };
	func Lge(R anchor: UIView) -> UIView 	{ self.autolayout(true).lytL.ge(anchor.lytR).isActive = true; return self; };

	func Rge(X anchor: UIView) -> UIView 	{ self.autolayout(true).lytR.ge(anchor.lytX).isActive = true; return self; };
	func Rge(L anchor: UIView) -> UIView 	{ self.autolayout(true).lytR.ge(anchor.lytL).isActive = true; return self; };
	func Rge(R anchor: UIView) -> UIView 	{ self.autolayout(true).lytR.ge(anchor.lytR).isActive = true; return self; };

	func Yge(Y anchor: UIView) -> UIView 	{ self.autolayout(true).lytY.ge(anchor.lytY).isActive = true; return self; };
	func Yge(T anchor: UIView) -> UIView 	{ self.autolayout(true).lytY.ge(anchor.lytT).isActive = true; return self; };
	func Yge(B anchor: UIView) -> UIView 	{ self.autolayout(true).lytY.ge(anchor.lytB).isActive = true; return self; };

	func Tge(Y anchor: UIView) -> UIView 	{ self.autolayout(true).lytT.ge(anchor.lytY).isActive = true; return self; };
	func Tge(T anchor: UIView) -> UIView 	{ self.autolayout(true).lytT.ge(anchor.lytT).isActive = true; return self; };
	func Tge(B anchor: UIView) -> UIView 	{ self.autolayout(true).lytT.ge(anchor.lytB).isActive = true; return self; };

	func Bge(Y anchor: UIView) -> UIView 	{ self.autolayout(true).lytB.ge(anchor.lytY).isActive = true; return self; };
	func Bge(T anchor: UIView) -> UIView 	{ self.autolayout(true).lytB.ge(anchor.lytT).isActive = true; return self; };
	func Bge(B anchor: UIView) -> UIView 	{ self.autolayout(true).lytB.ge(anchor.lytB).isActive = true; return self; };

	func Wge(W anchor: UIView) -> UIView 	{ self.autolayout(true).lytW.ge(anchor.lytW).isActive = true; return self; };
	func Wge(H anchor: UIView) -> UIView 	{ self.autolayout(true).lytW.ge(anchor.lytH).isActive = true; return self; };

	func Hge(W anchor: UIView) -> UIView 	{ self.autolayout(true).lytH.ge(anchor.lytW).isActive = true; return self; };
	func Hge(H anchor: UIView) -> UIView 	{ self.autolayout(true).lytH.ge(anchor.lytH).isActive = true; return self; };

	func Wge(_ val: CGFloat) -> UIView 		{ self.autolayout(true).lytW.ge(val).isActive = true; return self; };
	func Hge(_ val: CGFloat) -> UIView 		{ self.autolayout(true).lytH.ge(val).isActive = true; return self; };

	func Xle(X anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytX.le(anchor.lytX, val).isActive = true; return self; };
	func Xle(L anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytX.le(anchor.lytL, val).isActive = true; return self; };
	func Xle(R anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytX.le(anchor.lytR, val).isActive = true; return self; };

	func Lle(X anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytL.le(anchor.lytX, val).isActive = true; return self; };
	func Lle(L anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytL.le(anchor.lytL, val).isActive = true; return self; };
	func Lle(R anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytL.le(anchor.lytR, val).isActive = true; return self; };

	func Rle(X anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytR.le(anchor.lytX, val).isActive = true; return self; };
	func Rle(L anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytR.le(anchor.lytL, val).isActive = true; return self; };
	func Rle(R anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytR.le(anchor.lytR, val).isActive = true; return self; };

	func Yle(Y anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytY.le(anchor.lytY, val).isActive = true; return self; };
	func Yle(T anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytY.le(anchor.lytT, val).isActive = true; return self; };
	func Yle(B anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytY.le(anchor.lytB, val).isActive = true; return self; };

	func Tle(Y anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytT.le(anchor.lytY, val).isActive = true; return self; };
	func Tle(T anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytT.le(anchor.lytT, val).isActive = true; return self; };
	func Tle(B anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytT.le(anchor.lytB, val).isActive = true; return self; };

	func Ble(Y anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytB.le(anchor.lytY, val).isActive = true; return self; };
	func Ble(T anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytB.le(anchor.lytT, val).isActive = true; return self; };
	func Ble(B anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytB.le(anchor.lytB, val).isActive = true; return self; };

	func Wle(W anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytW.le(anchor.lytW, val).isActive = true; return self; };
	func Wle(H anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytW.le(anchor.lytH, val).isActive = true; return self; };

	func Hle(W anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytH.le(anchor.lytW, val).isActive = true; return self; };
	func Hle(H anchor: UIView,_ val: CGFloat) -> UIView { self.autolayout(true).lytH.le(anchor.lytH, val).isActive = true; return self; };

	func Xle(X anchor: UIView) -> UIView 	{ self.autolayout(true).lytX.le(anchor.lytX).isActive = true; return self; };
	func Xle(L anchor: UIView) -> UIView 	{ self.autolayout(true).lytX.le(anchor.lytL).isActive = true; return self; };
	func Xle(R anchor: UIView) -> UIView 	{ self.autolayout(true).lytX.le(anchor.lytR).isActive = true; return self; };

	func Lle(X anchor: UIView) -> UIView 	{ self.autolayout(true).lytL.le(anchor.lytX).isActive = true; return self; };
	func Lle(L anchor: UIView) -> UIView 	{ self.autolayout(true).lytL.le(anchor.lytL).isActive = true; return self; };
	func Lle(R anchor: UIView) -> UIView 	{ self.autolayout(true).lytL.le(anchor.lytR).isActive = true; return self; };

	func Rle(X anchor: UIView) -> UIView 	{ self.autolayout(true).lytR.le(anchor.lytX).isActive = true; return self; };
	func Rle(L anchor: UIView) -> UIView 	{ self.autolayout(true).lytR.le(anchor.lytL).isActive = true; return self; };
	func Rle(R anchor: UIView) -> UIView 	{ self.autolayout(true).lytR.le(anchor.lytR).isActive = true; return self; };

	func Yle(Y anchor: UIView) -> UIView 	{ self.autolayout(true).lytY.le(anchor.lytY).isActive = true; return self; };
	func Yle(T anchor: UIView) -> UIView 	{ self.autolayout(true).lytY.le(anchor.lytT).isActive = true; return self; };
	func Yle(B anchor: UIView) -> UIView 	{ self.autolayout(true).lytY.le(anchor.lytB).isActive = true; return self; };

	func Tle(Y anchor: UIView) -> UIView 	{ self.autolayout(true).lytT.le(anchor.lytY).isActive = true; return self; };
	func Tle(T anchor: UIView) -> UIView 	{ self.autolayout(true).lytT.le(anchor.lytT).isActive = true; return self; };
	func Tle(B anchor: UIView) -> UIView 	{ self.autolayout(true).lytT.le(anchor.lytB).isActive = true; return self; };

	func Ble(Y anchor: UIView) -> UIView 	{ self.autolayout(true).lytB.le(anchor.lytY).isActive = true; return self; };
	func Ble(T anchor: UIView) -> UIView 	{ self.autolayout(true).lytB.le(anchor.lytT).isActive = true; return self; };
	func Ble(B anchor: UIView) -> UIView 	{ self.autolayout(true).lytB.le(anchor.lytB).isActive = true; return self; };

	func Wle(W anchor: UIView) -> UIView 	{ self.autolayout(true).lytW.le(anchor.lytW).isActive = true; return self; };
	func Wle(H anchor: UIView) -> UIView 	{ self.autolayout(true).lytW.le(anchor.lytH).isActive = true; return self; };

	func Hle(W anchor: UIView) -> UIView 	{ self.autolayout(true).lytH.le(anchor.lytW).isActive = true; return self; };
	func Hle(H anchor: UIView) -> UIView 	{ self.autolayout(true).lytH.le(anchor.lytH).isActive = true; return self; };

	func Wle(_ val: CGFloat) -> UIView 		{ self.autolayout(true).lytW.le(val).isActive = true; return self; };
	func Hle(_ val: CGFloat) -> UIView 		{ self.autolayout(true).lytH.le(val).isActive = true; return self; };
};
