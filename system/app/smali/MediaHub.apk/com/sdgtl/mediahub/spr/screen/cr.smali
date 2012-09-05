.class final Lcom/sdgtl/mediahub/spr/screen/cr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/cq;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/cq;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/cr;->a:Lcom/sdgtl/mediahub/spr/screen/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cr;->a:Lcom/sdgtl/mediahub/spr/screen/cq;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cq;->a(Lcom/sdgtl/mediahub/spr/screen/cq;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->g(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->g()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cr;->a:Lcom/sdgtl/mediahub/spr/screen/cq;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/cq;->a(Lcom/sdgtl/mediahub/spr/screen/cq;)Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->i(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
