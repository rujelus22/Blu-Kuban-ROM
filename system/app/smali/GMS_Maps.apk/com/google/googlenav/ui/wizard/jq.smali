.class Lcom/google/googlenav/ui/wizard/jq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/jp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/jp;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jq;->a:Lcom/google/googlenav/ui/wizard/jp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_20

    .line 46
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jq;->a:Lcom/google/googlenav/ui/wizard/jp;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jp;->dismiss()V

    .line 47
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jq;->a:Lcom/google/googlenav/ui/wizard/jp;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/jp;->a(Lcom/google/googlenav/ui/wizard/jp;)Lcom/google/googlenav/ui/wizard/jr;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/jr;->a(I)V

    .line 49
    :cond_20
    return-void
.end method
