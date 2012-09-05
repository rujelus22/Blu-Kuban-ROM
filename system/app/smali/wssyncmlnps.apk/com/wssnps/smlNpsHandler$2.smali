.class Lcom/wssnps/smlNpsHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "smlNpsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssnps/smlNpsHandler;->sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssnps/smlNpsHandler;


# direct methods
.method constructor <init>(Lcom/wssnps/smlNpsHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 5435
    iput-object p1, p0, Lcom/wssnps/smlNpsHandler$2;->this$0:Lcom/wssnps/smlNpsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, -0x2

    .line 5438
    invoke-virtual {p0}, Lcom/wssnps/smlNpsHandler$2;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 5458
    :goto_8
    :pswitch_8
    return-void

    .line 5441
    :pswitch_9
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wssnps/smlNpsHandler;->access$002(I)I

    goto :goto_8

    .line 5444
    :pswitch_e
    invoke-static {v1}, Lcom/wssnps/smlNpsHandler;->access$002(I)I

    goto :goto_8

    .line 5447
    :pswitch_12
    invoke-static {v1}, Lcom/wssnps/smlNpsHandler;->access$002(I)I

    goto :goto_8

    .line 5450
    :pswitch_16
    invoke-static {v1}, Lcom/wssnps/smlNpsHandler;->access$002(I)I

    goto :goto_8

    .line 5453
    :pswitch_1a
    invoke-static {v1}, Lcom/wssnps/smlNpsHandler;->access$002(I)I

    goto :goto_8

    .line 5438
    :pswitch_data_1e
    .packed-switch -0x1
        :pswitch_9
        :pswitch_8
        :pswitch_e
        :pswitch_1a
        :pswitch_16
        :pswitch_12
    .end packed-switch
.end method
