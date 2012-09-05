.class final Lcom/sdgtl/mediahub/spr/screen/ms;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/mr;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/mr;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ms;->a:Lcom/sdgtl/mediahub/spr/screen/mr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ms;->a:Lcom/sdgtl/mediahub/spr/screen/mr;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/mr;->a(Lcom/sdgtl/mediahub/spr/screen/mr;)Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->d(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
