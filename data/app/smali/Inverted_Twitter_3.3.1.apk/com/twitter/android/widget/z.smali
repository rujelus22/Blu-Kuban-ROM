.class final Lcom/twitter/android/widget/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/TapRefreshableListView;

.field private b:I


# direct methods
.method constructor <init>(Lcom/twitter/android/widget/TapRefreshableListView;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I)V
    .registers 8

    const/4 v1, 0x0

    iput v1, p0, Lcom/twitter/android/widget/z;->b:I

    iget-object v0, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/TapRefreshableListView;->a(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    iget-object v0, v0, Lcom/twitter/android/widget/TapRefreshableListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    iget-object v0, v0, Lcom/twitter/android/widget/TapRefreshableListView;->a:Landroid/widget/Scroller;

    const/4 v2, -0x6

    const/16 v5, 0x5aa

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TapRefreshableListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final run()V
    .registers 7

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v2, v5}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v2

    if-nez v2, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v2, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v2, v0}, Lcom/twitter/android/widget/TapRefreshableListView;->c(I)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v2}, Lcom/twitter/android/widget/TapRefreshableListView;->f()V

    :cond_19
    iget-object v2, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    iget-object v3, v2, Lcom/twitter/android/widget/TapRefreshableListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    const/16 v4, 0x5aa

    if-gt v2, v4, :cond_4c

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_4c

    move v2, v0

    :goto_2c
    if-eqz v2, :cond_4e

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    :goto_32
    iget v3, p0, Lcom/twitter/android/widget/z;->b:I

    sub-int/2addr v3, v0

    iput v0, p0, Lcom/twitter/android/widget/z;->b:I

    iget-object v0, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TapRefreshableListView;->getChildCount()I

    move-result v4

    move v0, v1

    :goto_3e
    if-ge v0, v4, :cond_53

    iget-object v1, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/TapRefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_4c
    move v2, v1

    goto :goto_2c

    :cond_4e
    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    goto :goto_32

    :cond_53
    iget-object v0, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TapRefreshableListView;->invalidate()V

    if-eqz v2, :cond_60

    iget-object v0, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TapRefreshableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :cond_60
    iget-object v0, p0, Lcom/twitter/android/widget/z;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/TapRefreshableListView;->b(I)V

    goto :goto_b
.end method
