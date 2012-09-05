.class public Lcom/google/googlenav/ui/wizard/hH;
.super Landroid/app/ProgressDialog;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hG;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hG;Landroid/content/Context;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hH;->a:Lcom/google/googlenav/ui/wizard/hG;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/googlenav/ui/wizard/hG;->a(Lcom/google/googlenav/ui/wizard/hG;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/hH;->setProgressStyle(I)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/hH;->setIndeterminate(Z)V

    :goto_13
    invoke-static {p1}, Lcom/google/googlenav/ui/wizard/hG;->b(Lcom/google/googlenav/ui/wizard/hG;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/hH;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p0}, Lcom/google/googlenav/ui/wizard/hH;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void

    :cond_22
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/hH;->setProgressStyle(I)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/hH;->setIndeterminate(Z)V

    goto :goto_13
.end method


# virtual methods
.method public a(II)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/hH;->setProgress(I)V

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/wizard/hH;->setMax(I)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p2, v0, :cond_10

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hH;->a:Lcom/google/googlenav/ui/wizard/hG;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hG;->o()V

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
