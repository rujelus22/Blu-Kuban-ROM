.class Lcom/android/launcher2/PagedViewWidgetImageView;
.super Landroid/widget/ImageView;
.source "PagedViewWidgetImageView.java"


# instance fields
.field public mAllowRequestLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 30
    return-void
.end method


# virtual methods
.method public requestLayout()V
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    if-eqz v0, :cond_7

    .line 34
    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 36
    :cond_7
    return-void
.end method
