.class Lcom/google/googlenav/ui/view/dialog/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aY;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/aY;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ba;->a:Lcom/google/googlenav/ui/view/dialog/aY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ba;->a:Lcom/google/googlenav/ui/view/dialog/aY;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aY;->b(Lcom/google/googlenav/ui/view/dialog/aY;)Lcom/google/googlenav/ui/view/dialog/bc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/bc;->a()V

    .line 164
    return-void
.end method
