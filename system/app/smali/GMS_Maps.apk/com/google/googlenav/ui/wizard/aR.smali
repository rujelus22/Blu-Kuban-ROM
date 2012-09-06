.class Lcom/google/googlenav/ui/wizard/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/am;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/am;)V
    .registers 2
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ar;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 516
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 517
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ar;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/ui/wizard/am;)Lcom/google/googlenav/ui/wizard/aB;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ar;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/am;->b(Lcom/google/googlenav/ui/wizard/am;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/aB;->b(Ljava/lang/String;)V

    .line 521
    :goto_1d
    return-void

    .line 519
    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ar;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/ui/wizard/am;)Lcom/google/googlenav/ui/wizard/aB;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ar;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/am;->e(Lcom/google/googlenav/ui/wizard/am;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/aB;->b(Ljava/lang/String;)V

    goto :goto_1d
.end method
