.class final Lcom/sdgtl/mediahub/spr/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/aj;->a(Landroid/os/Handler;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
