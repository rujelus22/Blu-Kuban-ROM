.class Lcom/google/googlenav/ui/wizard/bb;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/bi;

.field final synthetic f:Lcom/google/googlenav/ui/wizard/ba;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ba;LY/c;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/bi;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bb;->f:Lcom/google/googlenav/ui/wizard/ba;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/bb;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/bb;->b:Lcom/google/googlenav/ui/wizard/bi;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bb;->f:Lcom/google/googlenav/ui/wizard/ba;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aY;->c(Lcom/google/googlenav/ui/wizard/aY;)Lcom/google/googlenav/friend/history/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/w;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 141
    new-instance v2, Lcom/google/googlenav/ui/wizard/bc;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/wizard/bc;-><init>(Lcom/google/googlenav/ui/wizard/bb;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method
