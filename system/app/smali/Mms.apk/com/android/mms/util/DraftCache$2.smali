.class final Lcom/android/mms/util/DraftCache$2;
.super Landroid/database/ContentObserver;
.source "DraftCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DraftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfUpdate"

    .prologue
    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z

    .line 66
    return-void
.end method
