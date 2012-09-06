.class Lcom/estrongs/android/pop/app/bw;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->e(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

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
    .registers 8

    new-instance v0, Lcom/estrongs/android/pop/app/cj;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/cj;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-virtual {v1, p2, v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Landroid/view/View;Lcom/estrongs/android/pop/app/cj;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/estrongs/android/pop/app/cj;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->e(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/estrongs/android/pop/app/cj;->b:Landroid/widget/TextView;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_32

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cj;->c:Landroid/widget/ImageView;

    const v2, 0x7f02003c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_31
    return-object v1

    :cond_32
    iget-object v0, v0, Lcom/estrongs/android/pop/app/cj;->c:Landroid/widget/ImageView;

    const v2, 0x7f02003b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_31
.end method
