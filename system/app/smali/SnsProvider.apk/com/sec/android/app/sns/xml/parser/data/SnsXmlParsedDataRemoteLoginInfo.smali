.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
.source "SnsXmlParsedDataRemoteLoginInfo.java"


# instance fields
.field public mContext:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

.field public mLoginPeopleID:Ljava/lang/String;

.field public mLoginUserName:Ljava/lang/String;

.field public mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

.field public mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

.field public mSP:Ljava/lang/String;

.field public mSessionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mSP:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mLoginUserName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mLoginPeopleID:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mDisplayName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mSessionKey:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mContext:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 28
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    .line 30
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    return-void
.end method
