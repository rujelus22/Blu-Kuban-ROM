.class public final Lcom/sprint/w/installer/util/UrlImageCache;
.super Lcom/sprint/w/installer/util/SoftReferenceHashTable;
.source "UrlImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sprint/w/installer/util/SoftReferenceHashTable",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/sprint/w/installer/util/UrlImageCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    new-instance v0, Lcom/sprint/w/installer/util/UrlImageCache;

    invoke-direct {v0}, Lcom/sprint/w/installer/util/UrlImageCache;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/util/UrlImageCache;->mInstance:Lcom/sprint/w/installer/util/UrlImageCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sprint/w/installer/util/SoftReferenceHashTable;-><init>()V

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/sprint/w/installer/util/UrlImageCache;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/sprint/w/installer/util/UrlImageCache;->mInstance:Lcom/sprint/w/installer/util/UrlImageCache;

    return-object v0
.end method
