.class public Lmyorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;
.super Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator;
.source "CMSAuthenticatedDataGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 2
    .parameter "rand"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator;-><init>(Ljava/security/SecureRandom;)V

    .line 58
    return-void
.end method
