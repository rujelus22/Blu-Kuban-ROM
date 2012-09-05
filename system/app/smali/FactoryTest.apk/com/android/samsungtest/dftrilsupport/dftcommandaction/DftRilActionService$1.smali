.class Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$1;
.super Landroid/os/Handler;
.source "DftRilActionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$1;->this$0:Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    .line 82
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_d2

    .line 125
    :cond_5
    :goto_5
    return-void

    .line 85
    :pswitch_6
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.INPUT_KEY_EVENT"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, i:Landroid/content/Intent;
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, args:Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, temphost:Ljava/lang/String;
    const/4 v10, 0x2

    const/4 v11, 0x4

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, host:Ljava/lang/String;
    const/4 v10, 0x4

    const/4 v11, 0x6

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, state:Ljava/lang/String;
    const-string v10, "KEYCODE"

    invoke-virtual {v3, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v10, "KEYHOLD"

    invoke-virtual {v3, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v8

    .line 96
    .local v8, stateValue:S
    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v6

    .line 97
    .local v6, keycodeValue:S
    iget-object v10, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$1;->this$0:Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;

    mul-int/lit16 v11, v8, 0x100

    add-int/2addr v11, v6

    int-to-short v11, v11

    #setter for: Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->mDataDm:S
    invoke-static {v10, v11}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->access$002(Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;S)S

    .line 99
    const-string v10, "50"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b5

    const-string v10, "00"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b5

    .line 100
    iget-object v10, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$1;->this$0:Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;

    #calls: Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->checkDailerActivity()Z
    invoke-static {v10}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->access$100(Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;)Z

    move-result v1

    .line 101
    .local v1, dialerStatus:Z
    iget-object v10, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$1;->this$0:Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;

    #calls: Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->checkIncallScreen()Z
    invoke-static {v10}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->access$200(Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;)Z

    move-result v4

    .line 102
    .local v4, incallStatus:Z
    iget-object v10, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$1;->this$0:Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;

    const/4 v11, 0x1

    #calls: Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V
    invoke-static {v10, v11}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->access$300(Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;I)V

    .line 103
    if-nez v1, :cond_8a

    if-nez v4, :cond_8a

    .line 104
    const-string v10, "DFTRILservice"

    const-string v11, "START dialer"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.DIAL"

    const-string v11, "tel:"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v5, intent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    iget-object v10, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$1;->this$0:Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;

    invoke-virtual {v10, v5}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 108
    .end local v5           #intent:Landroid/content/Intent;
    :cond_8a
    if-eqz v1, :cond_ae

    if-nez v4, :cond_ae

    .line 109
    const-string v10, "DFTRILservice"

    const-string v11, "START dialer"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL"

    const-string v11, "tel:"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 111
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v10, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$1;->this$0:Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;

    invoke-virtual {v10, v5}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 114
    .end local v5           #intent:Landroid/content/Intent;
    :cond_ae
    iget-object v10, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$1;->this$0:Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;

    invoke-virtual {v10, v3}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 116
    .end local v1           #dialerStatus:Z
    .end local v4           #incallStatus:Z
    :cond_b5
    const-string v10, "95"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c5

    const-string v10, "00"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 117
    :cond_c5
    iget-object v10, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$1;->this$0:Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;

    invoke-virtual {v10, v3}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    iget-object v10, p0, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService$1;->this$0:Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;

    const/4 v11, 0x1

    #calls: Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->sendResultCommand(I)V
    invoke-static {v10, v11}, Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;->access$300(Lcom/android/samsungtest/dftrilsupport/dftcommandaction/DftRilActionService;I)V

    goto/16 :goto_5

    .line 82
    :pswitch_data_d2
    .packed-switch 0x6f
        :pswitch_6
    .end packed-switch
.end method
