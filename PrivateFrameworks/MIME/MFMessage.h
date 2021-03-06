/*
* This header is generated by classdump-dyld 1.0
* on Tuesday, February 23, 2016 at 5:14:24 PM Argentina Standard Time
* Operating System: Version 9.0.2 (Build 13A452)
* Image Source: /System/Library/PrivateFrameworks/MIME.framework/MIME
* classdump-dyld is licensed under GPLv3, Copyright © 2013-2016 by Elias Limneos.
*/

#import <Foundation/Foundation.h>

@class MFMessageStore, NSString, NSArray, MFMimePart, NSURL;

@interface MFMessage : NSObject <NSCopying> {

	MFMessageStore* _store;
	unsigned _preferredEncoding;
	NSString* _senderAddressComment;
	unsigned _dateSentInterval;
	unsigned _dateReceivedInterval;
	unsigned long long _generationNumber;
	NSString* _subject;
	NSArray* _to;
	NSArray* _cc;
	NSArray* _bcc;
	NSArray* _sender;
	NSString* _contentType;
	long long _messageIDHeaderHash;
	long long _conversationID;
	NSString* _summary;
	NSString* _externalID;
	MFMimePart* _parentPart;
	NSURL* _messageURL;
	NSString* _cachedMessageIDHeader;
	unsigned _calculatedAttachmentInfo : 1;
	unsigned short _numberOfAttachments;

}

@property (nonatomic,retain) MFMimePart * parentPart;              //@synthesize parentPart=_parentPart - In the implementation block
+(id)messageWithRFC822Data:(id)arg1 ;
+(Class)dataMessageStoreToUse;
+(id)messageWithRFC822Data:(id)arg1 withParentPart:(id)arg2 ;
+(void)setMessageClassForStore:(id)arg1 ;
-(id)externalID;
-(void)setContentType:(id)arg1 ;
-(id)messageStore;
-(id)headersIfAvailable;
-(id)messageBodyIfAvailable;
-(void)setDateSentTimeIntervalSince1970:(double)arg1 ;
-(long long)conversationID;
-(id)messageURL;
-(void)deleteBodyData;
-(id)bestAlternativeInPart:(id)arg1 ;
-(id)defaultAlternativeInPart:(id)arg1 ;
-(unsigned short)numberOfAttachments;
-(void)setNumberOfAttachments:(unsigned)arg1 isSigned:(BOOL)arg2 isEncrypted:(BOOL)arg3 ;
-(id)headers;
-(unsigned)preferredEncoding;
-(id)senders;
-(id)dateSent;
-(id)firstSender;
-(id)additionalHeadersForReply;
-(id)preferredEmailAddressToReplyWith;
-(id)additionalHeadersForForward;
-(id)cc;
-(id)messageData;
-(id)persistentID;
-(void)dealloc;
-(id)init;
-(id)path;
-(id)copyWithZone:(NSZone*)arg1 ;
-(id)contentType;
-(unsigned)uid;
-(void)setSubject:(id)arg1 ;
-(void)setSender:(id)arg1 ;
-(id)subject;
-(id)messageID;
-(unsigned long long)messageSize;
-(void)setParentPart:(MFMimePart *)arg1 ;
-(BOOL)_doesDateAppearToBeSane:(id)arg1 ;
-(id)_copyDateFromReceivedHeadersInHeaders:(id)arg1 ;
-(id)_copyDateFromDateHeaderInHeaders:(id)arg1 ;
-(void)_setDateReceivedFromHeaders:(id)arg1 ;
-(void)_setDateSentFromHeaders:(id)arg1 ;
-(id)uniqueArray:(id)arg1 withStore:(id)arg2 ;
-(long long)_messageIDHeaderHashIvar;
-(id)bodyDataIsComplete:(BOOL*)arg1 isPartial:(BOOL*)arg2 ;
-(id)bodyDataIsComplete:(BOOL*)arg1 isPartial:(BOOL*)arg2 downloadIfNecessary:(BOOL)arg3 ;
-(id)headerDataDownloadIfNecessary:(BOOL)arg1 ;
-(void)_calculateAttachmentInfoFromBody:(id)arg1 ;
-(id)subjectIfCached;
-(BOOL)needsDateReceived;
-(id)bodyDataIsComplete:(BOOL*)arg1 ;
-(id)dataForMimePart:(id)arg1 inRange:(NSRange)arg2 isComplete:(BOOL*)arg3 ;
-(BOOL)fetchDataForMimePart:(id)arg1 inRange:(NSRange)arg2 withConsumer:(id)arg3 isComplete:(BOOL*)arg4 downloadIfNecessary:(BOOL)arg5 ;
-(void)setNumberOfAttachments:(unsigned)arg1 ;
-(id)headerData;
-(BOOL)isMessageContentsLocallyAvailable;
-(void)setPreferredEncoding:(unsigned)arg1 ;
-(BOOL)calculatedNumberOfAttachments;
-(void)calculateAttachmentInfoFromBody:(id)arg1 ;
-(double)dateReceivedAsTimeIntervalSince1970;
-(double)dateSentAsTimeIntervalSince1970;
-(id)senderAddressComment;
-(BOOL)messageData:(id*)arg1 messageSize:(unsigned long long*)arg2 isComplete:(BOOL*)arg3 downloadIfNecessary:(BOOL)arg4 ;
-(MFMimePart *)parentPart;
-(void)setCc:(id)arg1 ;
-(id)bcc;
-(void)setBcc:(id)arg1 ;
-(long long)messageIDHash;
-(void)setMessageIDHash:(long long)arg1 ;
-(id)remoteID;
-(id)dataPathForMimePart:(id)arg1 ;
-(void)setMessageData:(id)arg1 isPartial:(BOOL)arg2 ;
-(id)dataConsumerForMimePart:(id)arg1 ;
-(BOOL)canBeDeleted;
-(BOOL)isLibraryMessage;
-(id)attachmentStorageLocation;
-(void)setMessageStore:(id)arg1 ;
-(unsigned long long)generationNumber;
-(id)dataForMimePart:(id)arg1 inRange:(NSRange)arg2 isComplete:(BOOL*)arg3 downloadIfNecessary:(BOOL)arg4 didDownload:(BOOL*)arg5 ;
-(id)messageBodyUpdatingFlags:(BOOL)arg1 ;
-(id)messageBodyIfAvailableUpdatingFlags:(BOOL)arg1 ;
-(id)dateReceived;
-(id)messageDataIsComplete:(BOOL*)arg1 downloadIfNecessary:(BOOL)arg2 ;
-(void)setConversationID:(long long)arg1 ;
-(void)setGenerationNumber:(unsigned long long)arg1 ;
-(id)sendersIfCached;
-(id)toIfCached;
-(id)ccIfCached;
-(id)bccIfCached;
-(void)setMessageInfo:(id)arg1 to:(id)arg2 cc:(id)arg3 bcc:(id)arg4 sender:(id)arg5 dateReceivedTimeIntervalSince1970:(double)arg6 dateSentTimeIntervalSince1970:(double)arg7 messageIDHash:(long long)arg8 conversationID:(long long)arg9 summary:(id)arg10 ;
-(void)setExternalID:(id)arg1 ;
-(void)setMessageIDHeader:(id)arg1 ;
-(void)setSubject:(id)arg1 to:(id)arg2 cc:(id)arg3 bcc:(id)arg4 sender:(id)arg5 dateReceived:(double)arg6 dateSent:(double)arg7 messageIDHash:(long long)arg8 conversationIDHash:(long long)arg9 summary:(id)arg10 withOptions:(unsigned)arg11 ;
-(void)setDateReceivedTimeIntervalSince1970:(double)arg1 ;
-(id)messageIDHeader;
-(id)messageIDHeaderInFortyBytesOrLess;
-(void)loadCachedHeaderValuesFromHeaders:(id)arg1 ;
-(void)setMessageURL:(id)arg1 ;
-(long long)generationCompare:(id)arg1 ;
-(id)dataForMimePart:(id)arg1 ;
-(void)setMessageInfoFromMessage:(id)arg1 ;
-(id)summary;
-(id)to;
-(void)setTo:(id)arg1 ;
-(id)bodyData;
-(id)messageBody;
@end

