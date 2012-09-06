.class Lcom/google/googlenav/ui/view/dialog/aB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/az;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/az;Landroid/os/Handler;Landroid/widget/ImageView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aB;->c:Lcom/google/googlenav/ui/view/dialog/az;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/aB;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/aB;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aB;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/aC;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/aC;-><init>(Lcom/google/googlenav/ui/view/dialog/aB;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method
