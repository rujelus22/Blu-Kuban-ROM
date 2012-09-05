.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataFriend.java"


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mBirthday:Ljava/lang/String;

.field public mCity:Ljava/lang/String;

.field public mCompany:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

.field public mFirstName:Ljava/lang/String;

.field public mFullName:Ljava/lang/String;

.field public mID:Ljava/lang/String;

.field public mJobTitle:Ljava/lang/String;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

.field public mLastName:Ljava/lang/String;

.field public mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

.field public mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

.field public mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

.field public mSP:Ljava/lang/String;

.field public mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 85
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 91
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 93
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 94
    return-void
.end method
