.class Lcom/google/googlenav/ui/view/dialog/bQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Laz/f;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/bO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bO;Landroid/widget/EditText;Laz/f;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bQ;->c:Lcom/google/googlenav/ui/view/dialog/bO;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/bQ;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/bQ;->b:Laz/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 544
    const-string v0, "r"

    const-string v1, ""

    invoke-static {v0, v1}, Laz/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bQ;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 548
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bQ;->c:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->d(Lcom/google/googlenav/ui/view/dialog/bO;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const/16 v1, 0x33d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 553
    :goto_2e
    return-void

    .line 551
    :cond_2f
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bQ;->b:Laz/f;

    invoke-virtual {v1, v0}, Laz/f;->a(Ljava/lang/String;)V

    goto :goto_2e
.end method
