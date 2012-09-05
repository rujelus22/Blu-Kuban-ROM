.class public Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
.super Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
.source "SnsXmlParsedDataAuth.java"


# instance fields
.field public mCryptSessionKeyValue:Ljava/lang/String;

.field public mLougoutSessionKey:Ljava/lang/String;

.field public mOAuthURL:Ljava/lang/String;

.field public mPersistKey:Ljava/lang/String;

.field public mPersistKeyExpire:Ljava/lang/Integer;

.field public mRemoteLoginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

.field public mServerAddr:Ljava/lang/String;

.field public mbPersistyKeyLogined:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mPersistKey:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mLougoutSessionKey:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mPersistKeyExpire:Ljava/lang/Integer;

    .line 19
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mbPersistyKeyLogined:Ljava/lang/Boolean;

    .line 21
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mCryptSessionKeyValue:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mServerAddr:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mOAuthURL:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mRemoteLoginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V
    .registers 3
    .parameter "mParsedData"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mPersistKey:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mLougoutSessionKey:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mPersistKeyExpire:Ljava/lang/Integer;

    .line 19
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mbPersistyKeyLogined:Ljava/lang/Boolean;

    .line 21
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mCryptSessionKeyValue:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mServerAddr:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mOAuthURL:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mRemoteLoginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    .line 36
    invoke-virtual {p0, p0, p1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->copyBaseMembers(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    .line 39
    return-void
.end method
