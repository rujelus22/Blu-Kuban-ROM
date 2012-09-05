.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataPeople.java"


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mFriendship:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;

.field public mID:Ljava/lang/String;

.field public mInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

.field public mModifyTime:Ljava/lang/Long;

.field public mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

.field public mName:Ljava/lang/String;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

.field public mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

.field public mSP:Ljava/lang/String;

.field public mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 114
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 120
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 122
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 123
    return-void
.end method
