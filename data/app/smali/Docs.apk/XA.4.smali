.class public LXA;
.super Ljava/lang/Object;
.source "CipherUtilitiesImpl.java"

# interfaces
.implements LXz;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Ljavax/crypto/SecretKey;
    .registers 3

    .prologue
    .line 40
    sget-object v0, LXB;->a:Ljavax/crypto/KeyGenerator;

    if-nez v0, :cond_c

    .line 41
    new-instance v0, LFw;

    const-string v1, "KeyGenerator not initialized."

    invoke-direct {v0, v1}, LFw;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_c
    sget-object v0, LXB;->a:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method
