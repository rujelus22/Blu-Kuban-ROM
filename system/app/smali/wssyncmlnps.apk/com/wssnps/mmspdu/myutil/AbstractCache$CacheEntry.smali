.class Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;
.super Ljava/lang/Object;
.source "AbstractCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/mmspdu/myutil/AbstractCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field hit:I

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 90
    .local p0, this:Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;,"Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry<TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wssnps/mmspdu/myutil/AbstractCache$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    .local p0, this:Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;,"Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry<TV;>;"
    invoke-direct {p0}, Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;-><init>()V

    return-void
.end method
