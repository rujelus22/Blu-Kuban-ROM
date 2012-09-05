.class public Lcom/google/android/apps/books/util/ReaderUtils;
.super Ljava/lang/Object;
.source "ReaderUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldDisplayTwoPages(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/ReaderUtils;->shouldDisplayTwoPages(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public static shouldDisplayTwoPages(Landroid/content/res/Resources;)Z
    .registers 3
    .parameter "resources"

    .prologue
    const/4 v0, 0x1

    .line 19
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-le v1, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
