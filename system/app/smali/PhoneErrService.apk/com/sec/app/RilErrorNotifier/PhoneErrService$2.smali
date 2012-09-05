.class Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;
.super Landroid/os/Handler;
.source "PhoneErrService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/app/RilErrorNotifier/PhoneErrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;


# direct methods
.method constructor <init>(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f050002

    const/16 v8, 0x7d8

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 175
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_1e8

    .line 312
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const v4, 0x7f05000b

    invoke-virtual {v3, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 317
    :goto_1f
    :sswitch_1f
    return-void

    .line 179
    :sswitch_20
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const v4, 0x7f050005

    invoke-virtual {v3, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    .line 186
    :sswitch_33
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const v4, 0x7f050006

    invoke-virtual {v3, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    .line 193
    :sswitch_46
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    .line 200
    :sswitch_59
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    .line 207
    :sswitch_6c
    const-string v2, "PhoneErrService"

    const-string v3, "SIM_CRASH "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-virtual {v2}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const v5, 0x7f05000a

    invoke-virtual {v4, v5}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->showAlertPanel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 214
    :sswitch_8f
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-virtual {v2}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "RIL reset"

    const-string v4, "rild is reset.please get ril log /data/log/dumpstate_rilreset_date.log"

    invoke-static {v2, v3, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->showAlertPanel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 220
    :sswitch_9d
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-virtual {v2}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Phone app reset"

    const-string v4, "PhoneApp is reset.please get platform log /data/log/dumpstate_phoneappreset_date.log"

    invoke-static {v2, v3, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->showAlertPanel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 226
    :sswitch_ac
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-virtual {v2}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Modem not responding"

    const-string v4, "Modem is not responding. Please get the device forced to enter into RAM dump mode by pressing \'Power\' + \'Volume-Up\' + \'Volume-Down\' key."

    invoke-static {v2, v3, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->showAlertPanel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 231
    :sswitch_bb
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-virtual {v2}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const v4, 0x7f05000d

    invoke-virtual {v3, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const v5, 0x7f05000c

    invoke-virtual {v4, v5}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->showAlertPanel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 237
    :sswitch_d8
    const-string v2, "PhoneErrService"

    const-string v3, "DATA_ROUTER_DISPLAY "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-virtual {v2}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    #getter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$000(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    #getter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mString:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$100(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->showAlertPanel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 245
    :sswitch_f6
    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handlePhoneDebugMsg(Landroid/content/Intent;)V
    invoke-static {v3, v2}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$200(Lcom/sec/app/RilErrorNotifier/PhoneErrService;Landroid/content/Intent;)V

    goto/16 :goto_1f

    .line 252
    :sswitch_101
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    #getter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$300(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3d

    const/16 v5, 0x23

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$302(Lcom/sec/app/RilErrorNotifier/PhoneErrService;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "tel"

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    #getter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$300(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 256
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-virtual {v2, v0}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1f

    .line 263
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_136
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    #getter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$300(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$302(Lcom/sec/app/RilErrorNotifier/PhoneErrService;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    #getter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$300(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x25

    const/16 v5, 0x28

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$302(Lcom/sec/app/RilErrorNotifier/PhoneErrService;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    #getter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$300(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5e

    const/16 v5, 0x29

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$302(Lcom/sec/app/RilErrorNotifier/PhoneErrService;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    #getter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$300(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 273
    .local v1, newDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setType(I)V

    .line 274
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->addFlags(I)V

    .line 276
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1f

    .line 282
    .end local v1           #newDialog:Landroid/app/AlertDialog;
    :sswitch_19f
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f050012

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v3, v3, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDeepSleepDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 288
    .restart local v1       #newDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setType(I)V

    .line 289
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->addFlags(I)V

    .line 291
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1f

    .line 298
    .end local v1           #newDialog:Landroid/app/AlertDialog;
    :sswitch_1d0
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    #getter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$300(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1f

    .line 304
    :sswitch_1e1
    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->SMSCauseCode()V
    invoke-static {v2}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$400(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)V

    goto/16 :goto_1f

    .line 175
    :sswitch_data_1e8
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_33
        0x3 -> :sswitch_46
        0x4 -> :sswitch_59
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_8f
        0x7 -> :sswitch_9d
        0x8 -> :sswitch_ac
        0x9 -> :sswitch_bb
        0xa -> :sswitch_d8
        0xb -> :sswitch_f6
        0x33 -> :sswitch_101
        0x65 -> :sswitch_136
        0x66 -> :sswitch_1d0
        0x67 -> :sswitch_1d0
        0xc9 -> :sswitch_19f
        0x12d -> :sswitch_1e1
        0x3e8 -> :sswitch_1f
    .end sparse-switch
.end method
