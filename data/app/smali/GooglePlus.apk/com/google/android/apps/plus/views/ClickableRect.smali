.class public Lcom/google/android/apps/plus/views/ClickableRect;
.super Ljava/lang/Object;
.source "ClickableRect.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ClickableRect$ClickableRectListener;
    }
.end annotation


# instance fields
.field private mClicked:Z

.field private mListener:Lcom/google/android/apps/plus/views/ClickableRect$ClickableRectListener;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IIIILcom/google/android/apps/plus/views/ClickableRect$ClickableRectListener;)V
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "listener"

    .prologue
    .line 28
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0, p5}, Lcom/google/android/apps/plus/views/ClickableRect;-><init>(Landroid/graphics/Rect;Lcom/google/android/apps/plus/views/ClickableRect$ClickableRectListener;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Lcom/google/android/apps/plus/views/ClickableRect$ClickableRectListener;)V
    .registers 3
    .parameter "rect"
    .parameter "listener"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ClickableRect;->mRect:Landroid/graphics/Rect;

    .line 33
    iput-object p2, p0, Lcom/google/android/apps/plus/views/ClickableRect;->mListener:Lcom/google/android/apps/plus/views/ClickableRect$ClickableRectListener;

    .line 34
    return-void
.end method


# virtual methods
.method public getRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableRect;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleEvent(III)Z
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x3

    if-ne p3, v2, :cond_8

    .line 39
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableRect;->mClicked:Z

    .line 69
    :goto_7
    return v0

    .line 43
    :cond_8
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_16

    .line 44
    if-ne p3, v0, :cond_14

    .line 45
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableRect;->mClicked:Z

    :cond_14
    move v0, v1

    .line 47
    goto :goto_7

    .line 50
    :cond_16
    packed-switch p3, :pswitch_data_2e

    goto :goto_7

    .line 52
    :pswitch_1a
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableRect;->mClicked:Z

    goto :goto_7

    .line 57
    :pswitch_1d
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ClickableRect;->mClicked:Z

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableRect;->mListener:Lcom/google/android/apps/plus/views/ClickableRect$ClickableRectListener;

    if-eqz v2, :cond_2a

    .line 58
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableRect;->mListener:Lcom/google/android/apps/plus/views/ClickableRect$ClickableRectListener;

    invoke-interface {v2, p0}, Lcom/google/android/apps/plus/views/ClickableRect$ClickableRectListener;->onClickableRectClick(Lcom/google/android/apps/plus/views/ClickableRect;)V

    .line 60
    :cond_2a
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableRect;->mClicked:Z

    goto :goto_7

    .line 50
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method
