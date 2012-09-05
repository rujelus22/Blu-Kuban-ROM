.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataPhoto.java"


# instance fields
.field public mAlbumCaption:Ljava/lang/String;

.field public mAlbumID:Ljava/lang/String;

.field public mAlbumName:Ljava/lang/String;

.field public mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

.field public mAuthor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;

.field public mAuthorID:Ljava/lang/String;

.field public mAuthorName:Ljava/lang/String;

.field public mComment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

.field public mCommentsCount:Ljava/lang/Integer;

.field public mContent:Ljava/lang/String;

.field public mCounts:Ljava/lang/Integer;

.field public mID:Ljava/lang/String;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

.field public mLocation:Ljava/lang/String;

.field public mMainPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMainPhoto;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

.field public mOwnerID:Ljava/lang/String;

.field public mOwnerName:Ljava/lang/String;

.field public mPlace:Ljava/lang/String;

.field public mRecommendsCount:Ljava/lang/Integer;

.field public mResolution:Ljava/lang/String;

.field public mSP:Ljava/lang/String;

.field public mShootTime:Ljava/lang/Long;

.field public mSize:Ljava/lang/Integer;

.field public mStatus:Ljava/lang/String;

.field public mTag:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

.field public mThumbnail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThumbnail;

.field public mThumbnailUrl:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mURL:Ljava/lang/String;

.field public mUploadTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 121
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 127
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 129
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 130
    return-void
.end method
