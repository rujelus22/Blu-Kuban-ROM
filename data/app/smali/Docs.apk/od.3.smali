.class Lod;
.super Landroid/os/Handler;
.source "CustomProgressDialog.java"


# instance fields
.field final synthetic a:Loc;


# direct methods
.method constructor <init>(Loc;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lod;->a:Loc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    iget-object v0, p0, Lod;->a:Loc;

    invoke-static {v0}, Loc;->a(Loc;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 81
    iget-object v0, p0, Lod;->a:Loc;

    invoke-static {v0}, Loc;->a(Loc;)I

    move-result v0

    if-lez v0, :cond_51

    .line 82
    iget-object v0, p0, Lod;->a:Loc;

    invoke-static {v0}, Loc;->a(Loc;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lod;->a:Loc;

    invoke-static {v1}, Loc;->a(Loc;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 83
    iget-object v0, p0, Lod;->a:Loc;

    invoke-static {v0}, Loc;->a(Loc;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lod;->a:Loc;

    invoke-static {v1}, Loc;->b(Loc;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 89
    :cond_31
    :goto_31
    iget-object v0, p0, Lod;->a:Loc;

    invoke-static {v0}, Loc;->a(Loc;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lod;->a:Loc;

    invoke-static {v0}, Loc;->a(Loc;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 90
    iget-object v0, p0, Lod;->a:Loc;

    invoke-static {v0}, Loc;->a(Loc;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lod;->a:Loc;

    invoke-static {v1}, Loc;->a(Loc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_50
    return-void

    .line 85
    :cond_51
    iget-object v0, p0, Lod;->a:Loc;

    invoke-static {v0}, Loc;->a(Loc;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_31
.end method
