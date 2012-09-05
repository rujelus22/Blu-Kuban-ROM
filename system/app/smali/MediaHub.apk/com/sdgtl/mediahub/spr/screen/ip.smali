.class final Lcom/sdgtl/mediahub/spr/screen/ip;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/io;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/io;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ip;->a:Lcom/sdgtl/mediahub/spr/screen/io;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ip;->a:Lcom/sdgtl/mediahub/spr/screen/io;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/io;->a(Lcom/sdgtl/mediahub/spr/screen/io;)Lcom/sdgtl/mediahub/spr/screen/MyPage;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(Lcom/sdgtl/mediahub/spr/screen/MyPage;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->g()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ip;->a:Lcom/sdgtl/mediahub/spr/screen/io;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/io;->a(Lcom/sdgtl/mediahub/spr/screen/io;)Lcom/sdgtl/mediahub/spr/screen/MyPage;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->c(Lcom/sdgtl/mediahub/spr/screen/MyPage;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
