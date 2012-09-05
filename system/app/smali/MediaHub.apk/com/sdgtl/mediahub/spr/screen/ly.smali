.class final Lcom/sdgtl/mediahub/spr/screen/ly;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/lx;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/lx;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ly;->a:Lcom/sdgtl/mediahub/spr/screen/lx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ly;->a:Lcom/sdgtl/mediahub/spr/screen/lx;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/lx;->a(Lcom/sdgtl/mediahub/spr/screen/lx;)Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->k(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
