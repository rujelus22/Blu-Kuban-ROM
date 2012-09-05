.class Lcom/wssnps/smlNpsHandler$3;
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
    .line 5462
    iput-object p1, p0, Lcom/wssnps/smlNpsHandler$3;->this$0:Lcom/wssnps/smlNpsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 5465
    invoke-virtual {p0}, Lcom/wssnps/smlNpsHandler$3;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_8

    .line 5474
    :pswitch_7
    return-void

    .line 5465
    :pswitch_data_8
    .packed-switch -0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
