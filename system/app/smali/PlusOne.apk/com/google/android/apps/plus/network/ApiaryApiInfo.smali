.class public final Lcom/google/android/apps/plus/network/ApiaryApiInfo;
.super Ljava/lang/Object;
.source "ApiaryApiInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2ba6046fa3ebca2aL


# instance fields
.field private final mApiKey:Ljava/lang/String;

.field private final mCertificate:Ljava/lang/String;

.field private final mClientId:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mSdkVersion:Ljava/lang/String;

.field private final mSourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "apiKey"
    .parameter "clientId"
    .parameter "packageName"
    .parameter "certificate"
    .parameter "sdkVersion"

    .prologue
    .line 36
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V
    .registers 7
    .parameter "apiKey"
    .parameter "clientId"
    .parameter "packageName"
    .parameter "certificate"
    .parameter "sdkVersion"
    .parameter "sourceInfo"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->mApiKey:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->mClientId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->mPackageName:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->mCertificate:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->mSourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 31
    iput-object p5, p0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->mSdkVersion:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->mApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->mCertificate:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->mSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->mSourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    return-object v0
.end method
