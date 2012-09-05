.class Lcom/google/googlenav/ui/wizard/cH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/cA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cA;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cH;->b:Lcom/google/googlenav/ui/wizard/cA;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cH;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_10

    :goto_5
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/googlenav/ui/wizard/cI;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/cI;-><init>(Lcom/google/googlenav/ui/wizard/cH;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_10
    move-exception v0

    goto :goto_5
.end method
