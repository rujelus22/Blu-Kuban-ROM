.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataComment.java"


# instance fields
.field public mCommenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

.field public mContent:Ljava/lang/String;

.field public mCreateTime:Ljava/lang/Long;

.field public mID:Ljava/lang/String;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

.field public mResult:Ljava/lang/String;

.field public mSP:I

.field public mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

.field public mTargetID:Ljava/lang/String;

.field public mbRecommend:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 51
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 54
    return-void
.end method
