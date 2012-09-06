.class Lcom/estrongs/android/widget/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/FileBrowserDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/FileBrowserDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/f;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 13

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_c2

    :cond_4
    :goto_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0, v3}, Lcom/estrongs/android/widget/FileBrowserDialog;->a(Lcom/estrongs/android/widget/FileBrowserDialog;Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->a(Lcom/estrongs/android/widget/FileBrowserDialog;)Lcom/estrongs/android/widget/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/widget/al;->a()Lcom/estrongs/android/widget/an;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ap;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/widget/f;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v2}, Lcom/estrongs/android/widget/FileBrowserDialog;->b(Lcom/estrongs/android/widget/FileBrowserDialog;)Z

    move-result v2

    if-eqz v2, :cond_be

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v1, v3}, Lcom/estrongs/android/widget/FileBrowserDialog;->b(Lcom/estrongs/android/widget/FileBrowserDialog;Z)V

    move v2, v3

    :goto_2a
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    move v5, v3

    :goto_2f
    if-ge v5, v6, :cond_4

    invoke-virtual {p1, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v4, v2, v5

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ap;->c()I

    move-result v7

    if-ge v4, v7, :cond_4

    invoke-virtual {v0, v4}, Lcom/estrongs/android/widget/ap;->a(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_47

    :cond_43
    :goto_43
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2f

    :cond_47
    invoke-static {v7}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    if-eqz v1, :cond_43

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/estrongs/android/pop/e/a;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_8d

    invoke-static {v8, v7, v3}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v8, p0, Lcom/estrongs/android/widget/f;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v8}, Lcom/estrongs/android/widget/FileBrowserDialog;->c(Lcom/estrongs/android/widget/FileBrowserDialog;)Ljava/util/Queue;

    move-result-object v8

    monitor-enter v8

    :try_start_6e
    iget-object v9, p0, Lcom/estrongs/android/widget/f;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v9}, Lcom/estrongs/android/widget/FileBrowserDialog;->c(Lcom/estrongs/android/widget/FileBrowserDialog;)Ljava/util/Queue;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8c

    iget-object v9, p0, Lcom/estrongs/android/widget/f;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v9}, Lcom/estrongs/android/widget/FileBrowserDialog;->c(Lcom/estrongs/android/widget/FileBrowserDialog;)Ljava/util/Queue;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/estrongs/android/widget/f;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v7}, Lcom/estrongs/android/widget/FileBrowserDialog;->d(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/os/ConditionVariable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/ConditionVariable;->open()V

    :cond_8c
    monitor-exit v8
    :try_end_8d
    .catchall {:try_start_6e .. :try_end_8d} :catchall_97

    :cond_8d
    if-eqz v4, :cond_43

    aget-object v1, v1, v3

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_43

    :catchall_97
    move-exception v0

    :try_start_98
    monitor-exit v8
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v0

    :pswitch_9a
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->e(Lcom/estrongs/android/widget/FileBrowserDialog;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->c(Lcom/estrongs/android/widget/FileBrowserDialog;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    :try_start_a9
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->c(Lcom/estrongs/android/widget/FileBrowserDialog;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_bb

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/widget/FileBrowserDialog;->a(Lcom/estrongs/android/widget/FileBrowserDialog;Z)V

    goto/16 :goto_4

    :catchall_bb
    move-exception v0

    :try_start_bc
    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v0

    :cond_be
    move v2, v1

    goto/16 :goto_2a

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9a
        :pswitch_9a
    .end packed-switch
.end method
