.class Lcom/sec/android/app/ve/view/effect/transition/TransitionView$1;
.super Ljava/lang/Object;
.source "TransitionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/effect/transition/TransitionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 53
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_11

    .line 60
    check-cast p1, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->gotFocus()V

    .line 61
    return-void

    .line 55
    .restart local p1
    :cond_11
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v2, :cond_22

    .line 57
    check-cast v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->lostFocus()V

    .line 54
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
