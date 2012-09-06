.class Lcom/google/googlenav/ui/view/dialog/aQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/aO;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aQ;->a:Lcom/google/googlenav/ui/view/dialog/aO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aQ;->a:Lcom/google/googlenav/ui/view/dialog/aO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aO;->a(Lcom/google/googlenav/ui/view/dialog/aO;)Lcom/google/googlenav/ui/view/dialog/aS;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/aS;->b()V

    .line 99
    return-void
.end method
