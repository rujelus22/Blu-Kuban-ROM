.class Lcom/google/googlenav/ui/wizard/fQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fL;)V
    .registers 2
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fQ;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fQ;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fL;->b(Lcom/google/googlenav/ui/wizard/fL;)Lcom/google/googlenav/ui/wizard/fU;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fQ;->a:Lcom/google/googlenav/ui/wizard/fL;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/fL;->c(Lcom/google/googlenav/ui/wizard/fL;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/fU;->a(Ljava/lang/String;)V

    .line 284
    return-void
.end method
