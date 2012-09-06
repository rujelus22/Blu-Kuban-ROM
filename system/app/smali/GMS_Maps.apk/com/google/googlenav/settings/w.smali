.class Lcom/google/googlenav/settings/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/k;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/s;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/googlenav/settings/w;->a:Lcom/google/googlenav/settings/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/googlenav/settings/w;->a:Lcom/google/googlenav/settings/s;

    invoke-static {v0}, Lcom/google/googlenav/settings/s;->f(Lcom/google/googlenav/settings/s;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/settings/x;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/x;-><init>(Lcom/google/googlenav/settings/w;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method
