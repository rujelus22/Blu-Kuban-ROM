.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataStatus.java"


# instance fields
.field public mCommentsCount:Ljava/lang/Integer;

.field public mCreateTime:Ljava/lang/Long;

.field public mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

.field public mForwardable:Ljava/lang/String;

.field public mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

.field public mID:Ljava/lang/String;

.field public mIsFavorite:Ljava/lang/Boolean;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

.field public mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

.field public mStatus:Ljava/lang/String;

.field public mUTCoffset:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 65
    const/16 v0, 0x19

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
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 73
    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 74
    return-void
.end method
