.class final Lcom/sdgtl/mediahub/spr/screen/jw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/jv;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/jv;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/jw;->a:Lcom/sdgtl/mediahub/spr/screen/jv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jw;->a:Lcom/sdgtl/mediahub/spr/screen/jv;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/jv;->a(Lcom/sdgtl/mediahub/spr/screen/jv;)Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->g(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
