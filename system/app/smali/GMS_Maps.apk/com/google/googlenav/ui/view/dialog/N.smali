.class Lcom/google/googlenav/ui/view/dialog/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/k;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/k;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/n;->a:Lcom/google/googlenav/ui/view/dialog/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/n;->a:Lcom/google/googlenav/ui/view/dialog/k;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/k;->a(Lcom/google/googlenav/ui/view/dialog/k;)Lcom/google/googlenav/ui/view/dialog/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/o;->b()V

    .line 155
    return-void
.end method
