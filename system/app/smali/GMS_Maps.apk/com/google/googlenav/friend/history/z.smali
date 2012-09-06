.class Lcom/google/googlenav/friend/history/z;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/friend/history/H;

.field final synthetic f:Lcom/google/googlenav/friend/history/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/history/w;LY/c;Ljava/lang/String;Lcom/google/googlenav/friend/history/H;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/googlenav/friend/history/z;->f:Lcom/google/googlenav/friend/history/w;

    iput-object p3, p0, Lcom/google/googlenav/friend/history/z;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/friend/history/z;->b:Lcom/google/googlenav/friend/history/H;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    iget-object v1, p0, Lcom/google/googlenav/friend/history/z;->f:Lcom/google/googlenav/friend/history/w;

    iget-object v2, p0, Lcom/google/googlenav/friend/history/z;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/history/w;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 196
    if-nez v1, :cond_1c

    .line 197
    new-instance v1, Lcom/google/googlenav/friend/history/A;

    invoke-direct {v1, p0}, Lcom/google/googlenav/friend/history/A;-><init>(Lcom/google/googlenav/friend/history/z;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    :goto_1b
    return-void

    .line 204
    :cond_1c
    new-instance v2, Lcom/google/googlenav/friend/history/B;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/friend/history/B;-><init>(Lcom/google/googlenav/friend/history/z;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b
.end method
