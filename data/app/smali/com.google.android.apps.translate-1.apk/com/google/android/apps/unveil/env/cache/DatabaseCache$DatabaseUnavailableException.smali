.class Lcom/google/android/apps/unveil/env/cache/DatabaseCache$DatabaseUnavailableException;
.super Ljava/lang/RuntimeException;
.source "DatabaseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/cache/DatabaseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseUnavailableException"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/env/cache/DatabaseCache$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache$DatabaseUnavailableException;-><init>()V

    return-void
.end method
