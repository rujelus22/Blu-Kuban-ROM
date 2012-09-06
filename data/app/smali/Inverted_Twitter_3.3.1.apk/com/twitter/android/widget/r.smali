.class final Lcom/twitter/android/widget/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/RefreshableListView;

.field private b:I


# direct methods
.method constructor <init>(Lcom/twitter/android/widget/RefreshableListView;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I)V
    .registers 8

    const/4 v1, 0x0

    iput v1, p0, Lcom/twitter/android/widget/r;->b:I

    iget-object v0, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    iget-object v0, v0, Lcom/twitter/android/widget/RefreshableListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    iget-object v0, v0, Lcom/twitter/android/widget/RefreshableListView;->a:Landroid/widget/Scroller;

    const/16 v5, 0x1c2

    move v2, v1

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final run()V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    iget-object v3, v0, Lcom/twitter/android/widget/RefreshableListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    const/16 v1, 0x1c2

    if-ge v0, v1, :cond_42

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    move v1, v0

    :goto_20
    if-eqz v1, :cond_44

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    :goto_26
    iget v3, p0, Lcom/twitter/android/widget/r;->b:I

    sub-int/2addr v3, v0

    iput v0, p0, Lcom/twitter/android/widget/r;->b:I

    iget-object v4, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v4, v3}, Lcom/twitter/android/widget/RefreshableListView;->a(I)V

    iget-object v3, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v3}, Lcom/twitter/android/widget/RefreshableListView;->invalidate()V

    iget-object v3, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v3}, Lcom/twitter/android/widget/RefreshableListView;->d()V

    if-eqz v1, :cond_49

    iget-object v0, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :cond_42
    move v1, v2

    goto :goto_20

    :cond_44
    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    goto :goto_26

    :cond_49
    iget-object v1, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    iget-object v1, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V

    goto :goto_b

    :cond_60
    iget-object v0, p0, Lcom/twitter/android/widget/r;->a:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->c()V

    goto :goto_b
.end method
