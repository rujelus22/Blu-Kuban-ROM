.class Lcom/google/googlenav/ui/wizard/jd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ja;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 2
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jd;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jd;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ja;->c(Lcom/google/googlenav/ui/wizard/ja;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jd;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ja;->c(Lcom/google/googlenav/ui/wizard/ja;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "g"

    if-ne v0, v1, :cond_19

    .line 387
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jd;->a:Lcom/google/googlenav/ui/wizard/ja;

    const-string v1, "m"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->b(Lcom/google/googlenav/ui/wizard/ja;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jd;->a:Lcom/google/googlenav/ui/wizard/ja;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ja;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_2b

    .line 394
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jd;->a:Lcom/google/googlenav/ui/wizard/ja;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ja;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 395
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jd;->a:Lcom/google/googlenav/ui/wizard/ja;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/ja;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 397
    :cond_2b
    return-void
.end method
