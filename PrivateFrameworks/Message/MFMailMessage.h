/*
* This header is generated by classdump-dyld 1.0
* on Tuesday, February 23, 2016 at 5:14:18 PM Argentina Standard Time
* Operating System: Version 9.0.2 (Build 13A452)
* Image Source: /System/Library/PrivateFrameworks/Message.framework/Message
* classdump-dyld is licensed under GPLv3, Copyright © 2013-2016 by Elias Limneos.
*/

#import <MIME/MFMessage.h>

@class MFMessageInfo;

@interface MFMailMessage : MFMessage {

	unsigned long long _messageFlags;
	unsigned char _subjectPrefixLength;
	unsigned long long _modSequenceNumber;
	MFMessageInfo* _info;
	BOOL _shouldUseMailDrop;

}

@property (assign) unsigned long long modSequenceNumber; 
@property (assign,nonatomic) BOOL shouldUseMailDrop;                  //@synthesize shouldUseMailDrop=_shouldUseMailDrop - In the implementation block
+(id)forwardedMessagePrefixWithSpacer:(BOOL)arg1 ;
+(unsigned)validatePriority:(int)arg1 ;
+(Class)dataMessageStoreToUse;
+(unsigned)displayablePriorityForPriority:(int)arg1 ;
-(void)setSummary:(id)arg1 ;
-(unsigned long long)conversationFlags;
-(id)mailbox;
-(id)messageStore;
-(void)setConversationFlags:(unsigned long long)arg1 ;
-(unsigned long long)messageFlags;
-(unsigned short)numberOfAttachments;
-(id)loadMeetingMetadata;
-(id)loadMeetingExternalID;
-(id)subjectNotIncludingReAndFwdPrefix;
-(void)dealloc;
-(int)priority;
-(id)URL;
-(void)setSubject:(id)arg1 ;
-(id)subject;
-(void)setMessageFlags:(unsigned long long)arg1 ;
-(void)setMessageFlagsWithoutCommitting:(unsigned long long)arg1 ;
-(id)copyMessageInfo;
-(id)originalMailboxURL;
-(void)setMutableInfoFromMessage:(id)arg1 ;
-(void)markAsViewed;
-(void)markAsNotViewed;
-(void)markAsFlagged;
-(void)markAsNotFlagged;
-(void)markAsReplied;
-(void)markAsForwarded;
-(id)externalConversationID;
-(id)remoteMailboxURL;
-(unsigned long long)modSequenceNumber;
-(void)setSubject:(id)arg1 to:(id)arg2 cc:(id)arg3 bcc:(id)arg4 sender:(id)arg5 dateReceived:(double)arg6 dateSent:(double)arg7 messageIDHash:(long long)arg8 conversationIDHash:(long long)arg9 summary:(id)arg10 withOptions:(unsigned)arg11 ;
-(id)subjectAndPrefixLength:(unsigned*)arg1 ;
-(id)bestAlternativePart:(BOOL*)arg1 ;
-(id)loadMeetingData;
-(void)loadCachedHeaderValuesFromHeaders:(id)arg1 ;
-(void)setPriorityFromHeaders:(id)arg1 ;
-(id)mailMessageStore;
-(void)setModSequenceNumber:(unsigned long long)arg1 ;
-(BOOL)shouldSetSummary;
-(id)bestAlternativePart;
-(BOOL)shouldUseMailDrop;
-(void)setShouldUseMailDrop:(BOOL)arg1 ;
-(id)account;
@end

