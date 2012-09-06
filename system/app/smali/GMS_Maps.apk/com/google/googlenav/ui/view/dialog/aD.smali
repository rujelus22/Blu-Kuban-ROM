.class Lcom/google/googlenav/ui/view/dialog/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/X;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/X;)V
    .registers 2
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ad;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ad;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/X;->b(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/ui/view/dialog/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/ah;->c()V

    .line 316
    return-void
.end method
