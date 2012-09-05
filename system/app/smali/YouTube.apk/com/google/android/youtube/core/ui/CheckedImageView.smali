.class public Lcom/google/android/youtube/core/ui/CheckedImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final a:[I


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/ui/CheckedImageView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/CheckedImageView;->b:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 4
    .parameter

    .prologue
    .line 25
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/CheckedImageView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 27
    sget-object v1, Lcom/google/android/youtube/core/ui/CheckedImageView;->a:[I

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/ui/CheckedImageView;->mergeDrawableStates([I[I)[I

    .line 29
    :cond_11
    return-object v0
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/CheckedImageView;->b:Z

    if-eq v0, p1, :cond_9

    .line 42
    iput-boolean p1, p0, Lcom/google/android/youtube/core/ui/CheckedImageView;->b:Z

    .line 43
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/CheckedImageView;->refreshDrawableState()V

    .line 45
    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/CheckedImageView;->b:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/CheckedImageView;->setChecked(Z)V

    .line 34
    return-void

    .line 33
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
