@interface SBLockScreenViewControllerBase : UIViewController //base from Headers repo 
@end
%hook SBLockScreenViewControllerBase
- (void)viewDidLoad {
	%orig; //load orig if not valid

	NSString *superText = @"Hello Rohit <0_0>"; //enter any text to print out Over Lockscreen

//or an font you want
UIFont *font = [UIFont fontWithName:@"Helvetica Neue" size:30];  //you can use any font around just change stuff below too
NSLog(@"plain font: %@", font.fontName); // “HelveticaNeue”

UIFont *boldFont = [UIFont fontWithDescriptor:[[font fontDescriptor] fontDescriptorWithSymbolicTraits:UIFontDescriptorTraitBold] size:font.pointSize];
NSLog(@"bold version: %@", boldFont.fontName); // “HelveticaNeue-Bold”

UIFont *italicFont = [UIFont fontWithDescriptor:[[font fontDescriptor] fontDescriptorWithSymbolicTraits:UIFontDescriptorTraitItalic] size:font.pointSize];
NSLog(@"italic version: %@", italicFont.fontName); // “HelveticaNeue-Italic”

UIFont *boldItalicFont = [UIFont fontWithDescriptor:[[font fontDescriptor] fontDescriptorWithSymbolicTraits:UIFontDescriptorTraitBold | UIFontDescriptorTraitItalic] size:font.pointSize];
NSLog(@"bold & italic version: %@", boldItalicFont.fontName); // “HelveticaNeue-BoldItalic”


CGRect rect = CGRectIntegral([superText boundingRectWithSize:[UIScreen mainScreen].bounds.size options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading) attributes:@{NSFontAttributeName : font} context:nil]);

//create Label    
UILabel *tempLabel = [[UILabel alloc] initWithFrame:rect];
[tempLabel setText: superText];
[tempLabel setFont:boldItalicFont]; //setFontNameFrom above
[tempLabel setNumberOfLines:1];
tempLabel.textColor = [UIColor whiteColor]; 
[tempLabel setFrame:CGRectMake(20,30,500,500)];
[tempLabel setLineBreakMode:NSLineBreakByWordWrapping];
[self.view addSubview:tempLabel];
}
%end
