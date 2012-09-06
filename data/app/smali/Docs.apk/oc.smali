.class public Loc;
.super Landroid/app/AlertDialog;
.source "CustomProgressDialog.java"


# instance fields
.field private a:I

.field private a:Landroid/os/Handler;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/ProgressBar;

.field private a:Landroid/widget/TextView;

.field private a:Ljava/lang/CharSequence;

.field private a:Ljava/lang/String;

.field private b:I

.field private b:Landroid/widget/TextView;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 39
    invoke-static {p1}, Lop;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 31
    iput v0, p0, Loc;->a:I

    .line 32
    const/4 v2, -0x1

    iput v2, p0, Loc;->b:I

    .line 35
    iput v0, p0, Loc;->c:I

    .line 36
    const/16 v2, 0x64

    iput v2, p0, Loc;->d:I

    .line 40
    if-eq p2, v1, :cond_18

    if-nez p2, :cond_19

    :cond_18
    move v0, v1

    :cond_19
    invoke-static {v0}, LafQ;->a(Z)V

    .line 42
    iput p2, p0, Loc;->a:I

    .line 43
    return-void
.end method

.method static synthetic a(Loc;)I
    .registers 2
    .parameter

    .prologue
    .line 24
    iget v0, p0, Loc;->d:I

    return v0
.end method

.method static synthetic a(Loc;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Loc;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Loc;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Loc;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Loc;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Loc;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Loc;)I
    .registers 2
    .parameter

    .prologue
    .line 24
    iget v0, p0, Loc;->c:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Loc;->a:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Loc;->a:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 117
    iget-object v0, p0, Loc;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    :cond_c
    return-void
.end method

.method public b(JJLjava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 100
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_18

    .line 101
    long-to-int v0, p1

    iput v0, p0, Loc;->c:I

    .line 102
    iput v2, p0, Loc;->d:I

    .line 108
    :goto_c
    iput-object p5, p0, Loc;->a:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Loc;->a:Landroid/os/Handler;

    if-eqz v0, :cond_17

    .line 110
    iget-object v0, p0, Loc;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    :cond_17
    return-void

    .line 105
    :cond_18
    const-wide/32 v0, 0x10000

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    long-to-int v0, v0

    iput v0, p0, Loc;->c:I

    .line 106
    const/high16 v0, 0x1

    iput v0, p0, Loc;->d:I

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Loc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 49
    iget v0, p0, Loc;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8a

    sget v0, LcU;->progress_bar_dialog:I

    .line 52
    :goto_f
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    sget v0, LcS;->progress_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Loc;->a:Landroid/widget/ProgressBar;

    .line 54
    sget v0, LcS;->message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loc;->a:Landroid/widget/TextView;

    .line 55
    sget v0, LcS;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loc;->b:Landroid/widget/TextView;

    .line 56
    sget v0, LcS;->title_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Loc;->a:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p0, v1}, Loc;->setView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Loc;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_51

    .line 60
    iget-object v0, p0, Loc;->a:Landroid/widget/ProgressBar;

    iget v1, p0, Loc;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 61
    iget-object v0, p0, Loc;->a:Landroid/widget/ProgressBar;

    iget v1, p0, Loc;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 64
    :cond_51
    iget-object v0, p0, Loc;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_60

    iget-object v0, p0, Loc;->a:Ljava/lang/String;

    if-eqz v0, :cond_60

    .line 65
    iget-object v0, p0, Loc;->a:Landroid/widget/TextView;

    iget-object v1, p0, Loc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_60
    iget-object v0, p0, Loc;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Loc;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6f

    .line 69
    iget-object v0, p0, Loc;->b:Landroid/widget/TextView;

    iget-object v1, p0, Loc;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_6f
    iget-object v0, p0, Loc;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_7f

    iget v0, p0, Loc;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7f

    .line 73
    iget-object v0, p0, Loc;->a:Landroid/widget/ImageView;

    iget v1, p0, Loc;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    :cond_7f
    new-instance v0, Lod;

    invoke-direct {v0, p0}, Lod;-><init>(Loc;)V

    iput-object v0, p0, Loc;->a:Landroid/os/Handler;

    .line 96
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 97
    return-void

    .line 49
    :cond_8a
    sget v0, LcU;->progress_spinner_dialog:I

    goto :goto_f
.end method

.method public setIcon(I)V
    .registers 3
    .parameter

    .prologue
    .line 123
    iput p1, p0, Loc;->b:I

    .line 124
    iget-object v0, p0, Loc;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 125
    iget-object v0, p0, Loc;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    :cond_b
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0}, Loc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Loc;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Loc;->a:Ljava/lang/CharSequence;

    .line 132
    iget-object v0, p0, Loc;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 133
    iget-object v0, p0, Loc;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_b
    return-void
.end method
