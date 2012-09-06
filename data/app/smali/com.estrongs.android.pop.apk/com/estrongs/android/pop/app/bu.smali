.class Lcom/estrongs/android/pop/app/bu;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bu;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
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
    .registers 9

    new-instance v0, Lcom/estrongs/android/pop/app/cj;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/cj;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bu;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-virtual {v1, p2, v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Landroid/view/View;Lcom/estrongs/android/pop/app/cj;)Landroid/view/View;

    move-result-object v1

    if-nez p1, :cond_34

    iget-object v2, v0, Lcom/estrongs/android/pop/app/cj;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const v4, 0x7f0902d8

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1d
    iget-object v2, v0, Lcom/estrongs/android/pop/app/cj;->b:Landroid/widget/TextView;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    check-cast p3, Lcom/estrongs/android/pop/app/MyListView;

    invoke-virtual {p3}, Lcom/estrongs/android/pop/app/MyListView;->a()I

    move-result v2

    if-eq v2, p1, :cond_45

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cj;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_33
    return-object v1

    :cond_34
    iget-object v2, v0, Lcom/estrongs/android/pop/app/cj;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const v4, 0x7f0902d9

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_45
    iget-object v0, v0, Lcom/estrongs/android/pop/app/cj;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_33
.end method
