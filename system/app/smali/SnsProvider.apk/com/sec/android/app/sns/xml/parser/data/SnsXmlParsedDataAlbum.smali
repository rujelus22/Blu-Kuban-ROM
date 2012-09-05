.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataAlbum.java"


# instance fields
.field public mCoverPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;

.field public mCreateTime:Ljava/lang/Long;

.field public mCreatorID:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mID:Ljava/lang/String;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

.field public mModifyTime:Ljava/lang/Long;

.field public mName:Ljava/lang/String;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

.field public mPhotosCount:Ljava/lang/Integer;

.field public mPlace:Ljava/lang/String;

.field public mProfilePhotos:Ljava/lang/Boolean;

.field public mSP:Ljava/lang/String;

.field public mVisible:Ljava/lang/String;

.field public mWapID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 70
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 73
    return-void
.end method
