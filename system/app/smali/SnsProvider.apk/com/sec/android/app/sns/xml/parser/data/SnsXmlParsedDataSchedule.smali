.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataSchedule.java"


# instance fields
.field public mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

.field public mContent:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mEndTime:Ljava/lang/Long;

.field public mHostName:Ljava/lang/String;

.field public mID:Ljava/lang/String;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

.field public mOwner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

.field public mPhotoThumbnail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhotoThumbnail;

.field public mPlace:Ljava/lang/String;

.field public mPostTime:Ljava/lang/Long;

.field public mRSVP:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

.field public mSP:Ljava/lang/String;

.field public mStartTime:Ljava/lang/Long;

.field public mTitle:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 70
    const/16 v0, 0x17

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 76
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 78
    const/16 v0, 0x17

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 79
    return-void
.end method
