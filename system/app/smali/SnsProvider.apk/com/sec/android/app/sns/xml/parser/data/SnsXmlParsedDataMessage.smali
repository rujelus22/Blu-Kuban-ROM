.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataMessage.java"


# instance fields
.field public mContent:Ljava/lang/String;

.field public mFolder:Ljava/lang/String;

.field public mID:Ljava/lang/String;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

.field public mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

.field public mResult:Ljava/lang/String;

.field public mSP:Ljava/lang/String;

.field public mSendTime:Ljava/lang/Long;

.field public mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

.field public mSent:Ljava/lang/String;

.field public mThreadID:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUnread:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 65
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 71
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 73
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 74
    return-void
.end method
