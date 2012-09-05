.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataTarget.java"


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mID:Ljava/lang/String;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

.field public mMyComments:Ljava/lang/Integer;

.field public mMyRecommends:Ljava/lang/Integer;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

.field public mSubID:Ljava/lang/String;

.field public mTotalComments:Ljava/lang/Integer;

.field public mTotalRecommends:Ljava/lang/Integer;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 39
    const/16 v0, 0x1a

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 45
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 47
    const/16 v0, 0x1a

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 48
    return-void
.end method
