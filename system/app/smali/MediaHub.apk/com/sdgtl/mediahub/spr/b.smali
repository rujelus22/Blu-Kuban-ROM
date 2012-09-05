.class final Lcom/sdgtl/mediahub/spr/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/b;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/b;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/Main;->finish()V

    return-void
.end method
