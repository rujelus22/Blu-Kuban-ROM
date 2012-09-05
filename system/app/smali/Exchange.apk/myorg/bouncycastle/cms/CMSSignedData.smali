.class public Lmyorg/bouncycastle/cms/CMSSignedData;
.super Ljava/lang/Object;
.source "CMSSignedData.java"


# static fields
.field private static final HELPER:Lmyorg/bouncycastle/cms/CMSSignedHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedData;->HELPER:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    return-void
.end method
