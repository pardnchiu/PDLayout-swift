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

enum PDConstraint {
	case xeqx;
	case xeql;
	case xeqr;
	case leqx;
	case leql;
	case leqr;
	case reqx;
	case reql;
	case reqr;
	case yeqy;
	case yeqt;
	case yeqb;
	case teqy;
	case teqt;
	case teqb;
	case beqy;
	case beqt;
	case beqb;
	case weqw;
	case weqh;
	case weq;
	case heqw;
	case heqh;
	case heq;
};

struct PDLayout {
	var constraint: PDConstraint
	var target: Any?
	var value: CGFloat;

	init(_ constraint: PDConstraint,_ target: Any?,_ value: CGFloat) {
			self.constraint = constraint;
			self.target     = target;
			self.value      = value;
	};

	init(_ constraint: PDConstraint,_ value: CGFloat) {
		 self.constraint = constraint;
		 self.target     = nil;
		 self.value      = value;
	};
};

func Xeq(X target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.xeqx, target, value) };
func Xeq(L target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.xeql, target, value) };
func Xeq(R target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.xeqr, target, value) };
func Leq(X target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.leqx, target, value) };
func Leq(L target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.leql, target, value) };
func Leq(R target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.leqr, target, value) };
func Req(X target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.reqx, target, value) };
func Req(L target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.reql, target, value) };
func Req(R target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.reqr, target, value) };

func Yeq(Y target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.yeqy, target, value) };
func Yeq(T target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.yeqt, target, value) };
func Yeq(B target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.yeqb, target, value) };
func Teq(Y target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.teqy, target, value) };
func Teq(T target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.teqt, target, value) };
func Teq(B target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.teqb, target, value) };
func Beq(Y target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.beqy, target, value) };
func Beq(T target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.beqt, target, value) };
func Beq(B target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.beqb, target, value) };

func Weq(W target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.weqw, target, value) };
func Weq(H target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.weqh, target, value) };
func Weq(_ value: CGFloat) -> PDLayout 									{ return PDLayout(.weq, value) };

func Heq(W target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.heq, target, value) };
func Heq(H target: UIView,_ value: CGFloat) -> PDLayout { return PDLayout(.heq, target, value) };
func Heq(_ value: CGFloat) -> PDLayout 									{ return PDLayout(.heq, value) };

extension UIView {
		
		func PDLayout(_ layouts: [PDLayout]) {
				self.translatesAutoresizingMaskIntoConstraints = false;
				layouts.forEach {
						switch $0.constraint {
						case .xeqx: if let target = $0.target as? UIView { self.centerXAnchor.eq(target.centerXAnchor, $0.value).isActive = true; };
						case .xeql: if let target = $0.target as? UIView { self.centerXAnchor.eq(target.leftAnchor, $0.value).isActive = true; };
						case .xeqr: if let target = $0.target as? UIView { self.centerXAnchor.eq(target.rightAnchor, $0.value).isActive = true; };
						case .leqx: if let target = $0.target as? UIView { self.leftAnchor.eq(target.centerXAnchor, $0.value).isActive = true; };
						case .leql: if let target = $0.target as? UIView { self.leftAnchor.eq(target.leftAnchor, $0.value).isActive = true; };
						case .leqr: if let target = $0.target as? UIView { self.leftAnchor.eq(target.rightAnchor, $0.value).isActive = true; };
						case .reqx: if let target = $0.target as? UIView { self.rightAnchor.eq(target.centerXAnchor, $0.value).isActive = true; };
						case .reql: if let target = $0.target as? UIView { self.rightAnchor.eq(target.leftAnchor, $0.value).isActive = true; };
						case .reqr: if let target = $0.target as? UIView { self.rightAnchor.eq(target.rightAnchor, $0.value).isActive = true; };
							
						case .yeqy: if let target = $0.target as? UIView { self.centerYAnchor.eq(target.centerYAnchor, $0.value).isActive = true; };
						case .yeqt: if let target = $0.target as? UIView { self.centerYAnchor.eq(target.topAnchor, $0.value).isActive = true; };
						case .yeqb: if let target = $0.target as? UIView { self.centerYAnchor.eq(target.bottomAnchor, $0.value).isActive = true; };
						case .teqy: if let target = $0.target as? UIView { self.topAnchor.eq(target.centerYAnchor, $0.value).isActive = true; };
						case .teqt: if let target = $0.target as? UIView { self.topAnchor.eq(target.topAnchor, $0.value).isActive = true; };
						case .teqb: if let target = $0.target as? UIView { self.topAnchor.eq(target.bottomAnchor, $0.value).isActive = true; };
						case .beqy: if let target = $0.target as? UIView { self.bottomAnchor.eq(target.centerYAnchor, $0.value).isActive = true; };
						case .beqt: if let target = $0.target as? UIView { self.bottomAnchor.eq(target.topAnchor, $0.value).isActive = true; };
						case .beqb: if let target = $0.target as? UIView { self.bottomAnchor.eq(target.bottomAnchor, $0.value).isActive = true; };
							
						case .weqw: if let target = $0.target as? UIView { self.widthAnchor.eq(target.widthAnchor, $0.value).isActive = true; };
						case .weqh: if let target = $0.target as? UIView { self.widthAnchor.eq(target.heightAnchor, $0.value).isActive = true; };
						case .weq	: if ($0.target == nil) { self.widthAnchor.eq($0.value).isActive = true; return; };
							
						case .heqw: if let target = $0.target as? UIView { self.heightAnchor.eq(target.widthAnchor, $0.value).isActive = true; };
						case .heqh: if let target = $0.target as? UIView { self.heightAnchor.eq(target.heightAnchor, $0.value).isActive = true; };
						case .heq	: if ($0.target == nil) { self.heightAnchor.eq($0.value).isActive = true; return; };
						};
				};
		};
};

