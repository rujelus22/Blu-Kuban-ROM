.class public Lmyorg/bouncycastle/cms/CMSSignedDataParser;
.super Lmyorg/bouncycastle/cms/CMSContentInfoParser;
.source "CMSSignedDataParser.java"


# static fields
.field private static final HELPER:Lmyorg/bouncycastle/cms/CMSSignedHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    return-void
.end method
