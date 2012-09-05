.class public final Lcom/sdgtl/mediahub/spr/contentProvider/d;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Ljava/lang/Runnable;

.field private c:Lcom/a/a/a/a/d/a;

.field private d:Landroid/os/Handler;

.field private e:J


# direct methods
.method public constructor <init>(JILandroid/os/Handler;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/a/a/d/a;

    invoke-direct {v0}, Lcom/a/a/a/a/d/a;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->c:Lcom/a/a/a/a/d/a;

    new-instance v0, Lcom/sdgtl/mediahub/spr/contentProvider/e;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/contentProvider/e;-><init>(Lcom/sdgtl/mediahub/spr/contentProvider/d;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a:Ljava/lang/Runnable;

    new-instance v0, Lcom/sdgtl/mediahub/spr/contentProvider/f;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/contentProvider/f;-><init>(Lcom/sdgtl/mediahub/spr/contentProvider/d;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->d:Landroid/os/Handler;

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->e:J

    invoke-static {p1, p2}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->c(J)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2b

    return-void

    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dd;

    packed-switch p3, :pswitch_data_4a

    goto :goto_24

    :pswitch_35
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->c:Lcom/a/a/a/a/d/a;

    invoke-interface {v0}, Lcom/sdgtl/mediahub/spr/common/dd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/a/a/a/a/d/a;->a(Ljava/lang/String;)V

    goto :goto_24

    :pswitch_3f
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->c:Lcom/a/a/a/a/d/a;

    invoke-interface {v0}, Lcom/sdgtl/mediahub/spr/common/dd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/a/a/a/a/d/a;->a(Ljava/lang/String;)V

    goto :goto_24

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_35
        :pswitch_3f
    .end packed-switch
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Lcom/a/a/a/a/d/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->c:Lcom/a/a/a/a/d/a;

    return-object v0
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/contentProvider/d;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request_id"

    iget-wide v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "response_finish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/contentProvider/d;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->c:Lcom/a/a/a/a/d/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->c:Lcom/a/a/a/a/d/a;

    invoke-virtual {v0}, Lcom/a/a/a/a/d/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->c:Lcom/a/a/a/a/d/a;

    :cond_c
    return-void
.end method
