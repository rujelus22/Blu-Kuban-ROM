.class public Lcom/google/googlenav/ui/wizard/jt;
.super Landroid/app/ProgressDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/js;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/js;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jt;->a:Lcom/google/googlenav/ui/wizard/js;

    .line 162
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-static {p1}, Lcom/google/googlenav/ui/wizard/js;->a(Lcom/google/googlenav/ui/wizard/js;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 167
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/jt;->setProgressStyle(I)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/jt;->setIndeterminate(Z)V

    .line 173
    :goto_13
    invoke-static {p1}, Lcom/google/googlenav/ui/wizard/js;->b(Lcom/google/googlenav/ui/wizard/js;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/jt;->setMessage(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p0, p0}, Lcom/google/googlenav/ui/wizard/jt;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 180
    return-void

    .line 170
    :cond_22
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/jt;->setProgressStyle(I)V

    .line 171
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/jt;->setIndeterminate(Z)V

    goto :goto_13
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    const/4 v0, 0x4

    if-ne p2, v0, :cond_10

    .line 191
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    .line 192
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jt;->a:Lcom/google/googlenav/ui/wizard/js;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/js;->h()V

    .line 194
    :cond_e
    const/4 v0, 0x1

    .line 201
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
