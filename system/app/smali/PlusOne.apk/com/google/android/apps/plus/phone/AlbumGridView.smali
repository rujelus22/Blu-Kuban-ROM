.class public Lcom/google/android/apps/plus/phone/AlbumGridView;
.super Landroid/widget/GridView;
.source "AlbumGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/AlbumGridView$OnMeasuredListener;
    }
.end annotation


# instance fields
.field private mOnMeasuredListener:Lcom/google/android/apps/plus/phone/AlbumGridView$OnMeasuredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumGridView;->mOnMeasuredListener:Lcom/google/android/apps/plus/phone/AlbumGridView$OnMeasuredListener;

    if-eqz v0, :cond_c

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumGridView;->mOnMeasuredListener:Lcom/google/android/apps/plus/phone/AlbumGridView$OnMeasuredListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/phone/AlbumGridView$OnMeasuredListener;->onMeasured(Lcom/google/android/apps/plus/phone/AlbumGridView;)V

    .line 42
    :cond_c
    return-void
.end method

.method public setOnMeasuredListener(Lcom/google/android/apps/plus/phone/AlbumGridView$OnMeasuredListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/AlbumGridView;->mOnMeasuredListener:Lcom/google/android/apps/plus/phone/AlbumGridView$OnMeasuredListener;

    .line 50
    return-void
.end method
