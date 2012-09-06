.class Lcom/estrongs/android/pop/view/fg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ff;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fg;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 12

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_80

    :cond_4
    :goto_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/fg;->a:Lcom/estrongs/android/pop/view/ff;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/fg;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/view/fg;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->b(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/pop/view/ff;->a(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fg;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;Z)V

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    move v1, v2

    :goto_28
    if-ge v1, v4, :cond_4

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v5, v3, v1

    iget-object v6, p0, Lcom/estrongs/android/pop/view/fg;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v6}, Lcom/estrongs/android/pop/view/ff;->c(Lcom/estrongs/android/pop/view/ff;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lcom/estrongs/android/pop/view/fg;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v6}, Lcom/estrongs/android/pop/view/ff;->c(Lcom/estrongs/android/pop/view/ff;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4b

    :cond_47
    :goto_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    :cond_4b
    iget-object v7, p0, Lcom/estrongs/android/pop/view/fg;->a:Lcom/estrongs/android/pop/view/ff;

    iget-object v7, v7, Lcom/estrongs/android/pop/view/ff;->d:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_47

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/hk;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/hk;->b:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/estrongs/android/pop/view/fg;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-virtual {v7, v6, v5, v2}, Lcom/estrongs/android/pop/view/ff;->a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_47

    :pswitch_6b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/fg;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->d(Lcom/estrongs/android/pop/view/ff;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fg;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->e(Lcom/estrongs/android/pop/view/ff;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fg;->a:Lcom/estrongs/android/pop/view/ff;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;Z)V

    goto :goto_4

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6b
        :pswitch_6b
    .end packed-switch
.end method
