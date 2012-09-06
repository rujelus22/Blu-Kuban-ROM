.class public final Lcom/dropbox/android/widget/z;
.super Landroid/app/AlertDialog;
.source "panda.py"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ProgressBar;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 102
    iget-object v2, p0, Lcom/dropbox/android/widget/z;->c:Landroid/widget/ProgressBar;

    if-gtz p1, :cond_22

    move v0, v1

    :goto_6
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 103
    iget-boolean v0, p0, Lcom/dropbox/android/widget/z;->f:Z

    if-eqz v0, :cond_24

    .line 104
    if-lez p1, :cond_1c

    iget-boolean v0, p0, Lcom/dropbox/android/widget/z;->g:Z

    if-nez v0, :cond_1c

    .line 107
    iput-boolean v1, p0, Lcom/dropbox/android/widget/z;->g:Z

    .line 108
    iget-object v0, p0, Lcom/dropbox/android/widget/z;->c:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/dropbox/android/widget/z;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 110
    :cond_1c
    iget-object v0, p0, Lcom/dropbox/android/widget/z;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 114
    :goto_21
    return-void

    .line 102
    :cond_22
    const/4 v0, 0x0

    goto :goto_6

    .line 112
    :cond_24
    iput p1, p0, Lcom/dropbox/android/widget/z;->e:I

    goto :goto_21
.end method

.method public final a(Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 4
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/dropbox/android/widget/z;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/android/filemanager/LocalEntry;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/an;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 81
    if-eqz v0, :cond_11

    .line 82
    iget-object v1, p0, Lcom/dropbox/android/widget/z;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :cond_11
    iget-object v0, p0, Lcom/dropbox/android/widget/z;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public final b(I)V
    .registers 3
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/widget/z;->g:Z

    .line 118
    iput p1, p0, Lcom/dropbox/android/widget/z;->d:I

    .line 119
    return-void
.end method

.method public final dismiss()V
    .registers 2

    .prologue
    .line 124
    :try_start_0
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 129
    :goto_3
    return-void

    .line 125
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 52
    invoke-virtual {p0, v3}, Lcom/dropbox/android/widget/z;->requestWindowFeature(I)Z

    .line 53
    invoke-virtual {p0}, Lcom/dropbox/android/widget/z;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    const v1, 0x7f03000a

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    const v0, 0x7f0d0033

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dropbox/android/widget/z;->c:Landroid/widget/ProgressBar;

    .line 57
    const v0, 0x7f0d0031

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/z;->a:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f0d0032

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/widget/z;->b:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0d0034

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 61
    new-instance v2, Lcom/dropbox/android/widget/A;

    invoke-direct {v2, p0}, Lcom/dropbox/android/widget/A;-><init>(Lcom/dropbox/android/widget/z;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0, v4}, Lcom/dropbox/android/widget/z;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/dropbox/android/widget/z;->setView(Landroid/view/View;)V

    .line 70
    iget v0, p0, Lcom/dropbox/android/widget/z;->e:I

    if-lez v0, :cond_55

    .line 71
    iget v0, p0, Lcom/dropbox/android/widget/z;->e:I

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/z;->a(I)V

    .line 73
    :cond_55
    iget-object v0, p0, Lcom/dropbox/android/widget/z;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 75
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public final onStart()V
    .registers 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/widget/z;->f:Z

    .line 93
    return-void
.end method

.method protected final onStop()V
    .registers 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/widget/z;->f:Z

    .line 99
    return-void
.end method
