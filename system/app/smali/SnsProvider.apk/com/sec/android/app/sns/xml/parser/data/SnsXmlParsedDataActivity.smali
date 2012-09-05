.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataActivity.java"


# instance fields
.field public mActTime:Ljava/lang/Long;

.field public mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

.field public mApplication:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataApplication;

.field public mAttachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

.field public mCommentSubID:Ljava/lang/String;

.field public mCommentTargetID:Ljava/lang/String;

.field public mCommentType:Ljava/lang/String;

.field public mCommentable:Ljava/lang/Boolean;

.field public mCommentsCount:Ljava/lang/Integer;

.field public mContent:Ljava/lang/String;

.field public mCreateTime:Ljava/lang/Long;

.field public mDeletable:Ljava/lang/Boolean;

.field public mForwardable:Ljava/lang/String;

.field public mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

.field public mID:Ljava/lang/String;

.field public mIconURL:Ljava/lang/String;

.field public mIsFavorite:Ljava/lang/Boolean;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

.field public mPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

.field public mRecommendable:Ljava/lang/String;

.field public mRecommendsCount:Ljava/lang/Integer;

.field public mSP:Ljava/lang/String;

.field public mTag:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

.field public mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

.field public mTargetID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 119
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 122
    return-void
.end method
