.class abstract Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StubKeyManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/emailcommon/utility/SSLUtils$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 5
    .parameter "keyType"
    .parameter "issuers"
    .parameter "socket"

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 4
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 4
    .parameter "keyType"
    .parameter "issuers"

    .prologue
    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
