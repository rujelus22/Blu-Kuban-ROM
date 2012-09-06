.class Lcom/google/googlenav/ui/view/dialog/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/s;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/u;->a:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/u;->a:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/s;->c(Lcom/google/googlenav/ui/view/dialog/s;)Lcom/google/googlenav/ui/view/dialog/D;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 176
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/u;->a:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/s;->c(Lcom/google/googlenav/ui/view/dialog/s;)Lcom/google/googlenav/ui/view/dialog/D;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/D;->a()V

    .line 178
    :cond_11
    return-void
.end method
