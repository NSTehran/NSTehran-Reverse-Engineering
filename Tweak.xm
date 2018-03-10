
%hook SecurityClass
- (id)md5HashFromString:(id)arg1 {
	return @"37E83C833757E64C1FB7570A8DBC74AB";
}
- (_Bool)isValidPassword:(id)arg1 {
	return YES;
}
- (void)setLoginStatus:(_Bool)arg1 {
	%log;
	return %orig;
}
- (_Bool)getLoginStatus {
	return YES;
}
- (id)callLastRequestForTransfer {
	return @{@"success":@YES, @"message": @"انتقال وجه به هاشم کیمیایی با موفقیت انجام شد"};
}
- (id)callMoneyTransferNetworkRequestOnBody:(id)arg1 {
	return @{@"success": @YES, @"message": @"آیا شما موافق انتقال وجه به هاشم کیمیایی میباشید؟"};
}
- (id)generateNetworkRequestForBankID:(id)arg1 andAmount:(id)arg2 {
	return @{@"bank_id":@"6219861030762784",@"amount":@"100000000"};
}
- (id)generateRequestToken {
	return %orig;
}
%end

%hook AuthorizedViewController
- (void)viewDidLoad {
	UILabel *label = MSHookIvar<UILabel *>(self, "_creditLabel");
	label.text = @"Your Credit : $1,200,000";
	%orig;
}
%end