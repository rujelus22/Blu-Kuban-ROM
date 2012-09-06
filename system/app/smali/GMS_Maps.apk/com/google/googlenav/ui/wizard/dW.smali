.class Lcom/google/googlenav/ui/wizard/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/dp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dp;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dw;->b:Lcom/google/googlenav/ui/wizard/dp;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dw;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 469
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_10

    .line 474
    :goto_5
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/googlenav/ui/wizard/dx;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/dx;-><init>(Lcom/google/googlenav/ui/wizard/dw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    return-void

    .line 470
    :catch_10
    move-exception v0

    goto :goto_5
.end method
