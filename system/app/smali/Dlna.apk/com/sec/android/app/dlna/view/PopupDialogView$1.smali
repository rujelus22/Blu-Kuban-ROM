.class Lcom/sec/android/app/dlna/view/PopupDialogView$1;
.super Landroid/os/Handler;
.source "PopupDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/view/PopupDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/view/PopupDialogView;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 159
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_11a

    .line 206
    :goto_5
    return-void

    .line 161
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->PlayerIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$400(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->PlayerName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$700(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 203
    :catch_1f
    move-exception v0

    goto :goto_5

    .line 166
    :pswitch_21
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->ServerIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$600(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->ServerName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$800(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 171
    :pswitch_3a
    invoke-static {}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$100()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_82

    .line 172
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getModelName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->ServerName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$800(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getServerName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/dlna/view/PopupDialogView;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$900(Lcom/sec/android/app/dlna/view/PopupDialogView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 176
    :cond_66
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->ServerName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$800(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/DeviceItem;->getModelName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/dlna/view/PopupDialogView;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$900(Lcom/sec/android/app/dlna/view/PopupDialogView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 180
    :cond_82
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->ServerName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$800(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    iget-object v2, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #calls: Lcom/sec/android/app/dlna/view/PopupDialogView;->localGetServerName()Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$1000(Lcom/sec/android/app/dlna/view/PopupDialogView;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/dlna/view/PopupDialogView;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$900(Lcom/sec/android/app/dlna/view/PopupDialogView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 185
    :pswitch_99
    invoke-static {}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$100()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_e3

    .line 186
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getModelName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c6

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->PlayerName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$700(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayerName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/dlna/view/PopupDialogView;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$900(Lcom/sec/android/app/dlna/view/PopupDialogView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 190
    :cond_c6
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->PlayerName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$700(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/DeviceItem;->getModelName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/dlna/view/PopupDialogView;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$900(Lcom/sec/android/app/dlna/view/PopupDialogView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 194
    :cond_e3
    invoke-static {}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$100()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_106

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->PlayerName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$700(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-static {}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$100()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/dlna/view/PopupDialogView;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$900(Lcom/sec/android/app/dlna/view/PopupDialogView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 198
    :cond_106
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    #getter for: Lcom/sec/android/app/dlna/view/PopupDialogView;->PlayerName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$700(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;->this$0:Lcom/sec/android/app/dlna/view/PopupDialogView;

    const-string v2, ""

    #calls: Lcom/sec/android/app/dlna/view/PopupDialogView;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/view/PopupDialogView;->access$900(Lcom/sec/android/app/dlna/view/PopupDialogView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_117
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_117} :catch_1f

    goto/16 :goto_5

    .line 159
    nop

    :pswitch_data_11a
    .packed-switch 0x320
        :pswitch_6
        :pswitch_21
        :pswitch_3a
        :pswitch_99
    .end packed-switch
.end method
