.class Lcom/estrongs/android/pop/app/bv;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bv;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bv;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    iget-object v1, v0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bv;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bv;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    iget-object v1, v0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    monitor-enter v1

    :try_start_5
    new-instance v0, Lcom/estrongs/android/pop/app/cj;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/cj;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/bv;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-virtual {v2, p2, v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Landroid/view/View;Lcom/estrongs/android/pop/app/cj;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/bv;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    array-length v3, v3

    if-lt p1, v3, :cond_37

    iget-object v3, v0, Lcom/estrongs/android/pop/app/cj;->a:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/estrongs/android/pop/app/cj;->c:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cj;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const v4, 0x7f0902d5

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_35
    monitor-exit v1

    return-object v2

    :cond_37
    iget-object v3, v0, Lcom/estrongs/android/pop/app/cj;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/bv;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    iget-object v5, v5, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    aget-object v5, v5, p1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/estrongs/android/pop/view/a/c;->b(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/estrongs/android/pop/app/cj;->a:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/estrongs/android/pop/app/cj;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/bv;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->d(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Lcom/estrongs/android/pop/c;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/bv;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    iget-object v5, v5, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    aget-object v5, v5, p1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast p3, Lcom/estrongs/android/pop/app/MyListView;

    invoke-virtual {p3}, Lcom/estrongs/android/pop/app/MyListView;->a()I

    move-result v3

    if-eq v3, p1, :cond_a9

    iget-object v3, v0, Lcom/estrongs/android/pop/app/cj;->c:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cj;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bv;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/bv;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    iget-object v4, v4, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1

    goto :goto_35

    :catchall_a6
    move-exception v0

    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_5 .. :try_end_a8} :catchall_a6

    throw v0

    :cond_a9
    :try_start_a9
    iget-object v3, v0, Lcom/estrongs/android/pop/app/cj;->b:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cj;->c:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bv;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/bv;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    iget-object v4, v4, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p1
    :try_end_d5
    .catchall {:try_start_a9 .. :try_end_d5} :catchall_a6

    goto/16 :goto_35
.end method
