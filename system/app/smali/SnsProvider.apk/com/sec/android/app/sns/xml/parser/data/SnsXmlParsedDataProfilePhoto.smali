.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataProfilePhoto.java"


# instance fields
.field public mAlbumID:Ljava/lang/String;

.field public mFullViewURL:Ljava/lang/String;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

.field public mMidViewURL:Ljava/lang/String;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

.field public mResolution:Ljava/lang/String;

.field public mSize:Ljava/lang/Integer;

.field public mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mSize:Ljava/lang/Integer;

    .line 18
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mResolution:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mAlbumID:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mMidViewURL:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mFullViewURL:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 28
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    return-void
.end method
