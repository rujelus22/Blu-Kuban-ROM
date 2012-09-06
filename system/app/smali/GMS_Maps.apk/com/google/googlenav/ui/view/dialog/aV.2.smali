.class Lcom/google/googlenav/ui/view/dialog/aV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/aT;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aV;->a:Lcom/google/googlenav/ui/view/dialog/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aV;->a:Lcom/google/googlenav/ui/view/dialog/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aT;->a(Lcom/google/googlenav/ui/view/dialog/aT;)Lcom/google/googlenav/ui/view/dialog/aX;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/aX;->b()V

    .line 109
    return-void
.end method
