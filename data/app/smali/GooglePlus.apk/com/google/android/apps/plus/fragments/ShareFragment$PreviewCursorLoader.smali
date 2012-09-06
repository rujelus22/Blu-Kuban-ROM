.class Lcom/google/android/apps/plus/fragments/ShareFragment$PreviewCursorLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "ShareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewCursorLoader"
.end annotation


# instance fields
.field private mCachedData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 480
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$PreviewCursorLoader;->mCachedData:Z

    .line 489
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->esLoadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public isCachedData()Z
    .registers 2

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$PreviewCursorLoader;->mCachedData:Z

    return v0
.end method

.method public setCachedData(Z)V
    .registers 2
    .parameter "cachedData"

    .prologue
    .line 504
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$PreviewCursorLoader;->mCachedData:Z

    .line 505
    return-void
.end method
