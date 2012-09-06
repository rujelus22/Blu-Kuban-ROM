.class Lcom/google/googlenav/ui/view/dialog/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/R;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/R;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/T;->a:Lcom/google/googlenav/ui/view/dialog/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/T;->a:Lcom/google/googlenav/ui/view/dialog/R;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/R;->a(Lcom/google/googlenav/ui/view/dialog/R;)Lcom/google/googlenav/ui/view/dialog/W;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 147
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/T;->a:Lcom/google/googlenav/ui/view/dialog/R;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/R;->a(Lcom/google/googlenav/ui/view/dialog/R;)Lcom/google/googlenav/ui/view/dialog/W;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/W;->b()V

    .line 149
    :cond_11
    return-void
.end method
