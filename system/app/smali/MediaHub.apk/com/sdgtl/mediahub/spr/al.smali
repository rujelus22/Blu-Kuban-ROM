.class final Lcom/sdgtl/mediahub/spr/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/sdgtl/mediahub/spr/am;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/sdgtl/mediahub/spr/am;)V
    .registers 4

    iput p1, p0, Lcom/sdgtl/mediahub/spr/al;->a:I

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/al;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/al;->c:Lcom/sdgtl/mediahub/spr/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/sdgtl/mediahub/spr/al;->a:I

    packed-switch v1, :pswitch_data_2c

    move-object v1, v0

    :goto_7
    :try_start_7
    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/a/a/a/a/d/b;->a(Ljava/lang/String;JLandroid/os/Handler;)Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_27

    :goto_10
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/al;->c:Lcom/sdgtl/mediahub/spr/am;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/al;->c:Lcom/sdgtl/mediahub/spr/am;

    invoke-interface {v0, v1}, Lcom/sdgtl/mediahub/spr/am;->a(Ljava/lang/String;)V

    :cond_19
    return-void

    :pswitch_1a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/al;->b:Ljava/lang/String;

    move-object v1, v0

    goto :goto_7

    :pswitch_1e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/al;->b:Ljava/lang/String;

    move-object v1, v0

    goto :goto_7

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1e
    .end packed-switch
.end method
