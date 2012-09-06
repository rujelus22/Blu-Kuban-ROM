.class Lcom/google/googlenav/ui/view/dialog/aC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aB;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/aB;)V
    .registers 2
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aC;->a:Lcom/google/googlenav/ui/view/dialog/aB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aC;->a:Lcom/google/googlenav/ui/view/dialog/aB;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/aB;->c:Lcom/google/googlenav/ui/view/dialog/az;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aC;->a:Lcom/google/googlenav/ui/view/dialog/aB;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/aB;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/az;->a(Lcom/google/googlenav/ui/view/dialog/az;Landroid/widget/ImageView;)Z

    .line 215
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aC;->a:Lcom/google/googlenav/ui/view/dialog/aB;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/aB;->c:Lcom/google/googlenav/ui/view/dialog/az;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/az;->d(Lcom/google/googlenav/ui/view/dialog/az;)Lah/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aC;->a:Lcom/google/googlenav/ui/view/dialog/aB;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/aB;->c:Lcom/google/googlenav/ui/view/dialog/az;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/az;->c(Lcom/google/googlenav/ui/view/dialog/az;)Lah/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lah/a;->b(Lah/p;)V

    .line 216
    return-void
.end method
