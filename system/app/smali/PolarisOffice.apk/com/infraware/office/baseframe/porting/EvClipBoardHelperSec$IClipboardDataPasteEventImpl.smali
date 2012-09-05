.class Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;
.super Ljava/lang/Object;
.source "EvClipBoardHelperSec.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataPasteEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IClipboardDataPasteEventImpl"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

.field final synthetic this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)V
    .registers 3
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl$1;-><init>(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-object v0
.end method

.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 17
    .parameter "data"

    .prologue
    .line 100
    const/4 v7, 0x0

    .line 101
    .local v7, textCS:Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 103
    .local v6, strText:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v10

    packed-switch v10, :pswitch_data_114

    .line 178
    :cond_9
    :goto_9
    iget-object v10, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    #getter for: Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mClipboardManager:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v10}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->access$3(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 179
    return-void

    :pswitch_13
    move-object/from16 v8, p1

    .line 106
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 108
    .local v8, txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 109
    if-eqz v7, :cond_9

    .line 111
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 112
    if-eqz v6, :cond_9

    .line 114
    iget-object v10, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    iget-object v10, v10, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->messageHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    #calls: Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->fillMsg(IIILjava/lang/String;)Landroid/os/Message;
    invoke-static {v11, v12, v13, v14, v6}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->access$1(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;IIILjava/lang/String;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .end local v8           #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :pswitch_34
    move-object/from16 v2, p1

    .line 119
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 120
    .local v2, html:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v3

    .line 122
    .local v3, htmlCS:Ljava/lang/CharSequence;
    if-eqz v3, :cond_9

    .line 124
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, strHtml:Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 127
    iget-object v10, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    #getter for: Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v10}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->access$0(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/infraware/office/evengine/EvInterface;->IGetEditorMode_Editor()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_ae

    .line 129
    iget-object v10, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    #getter for: Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v10}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->access$0(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/infraware/office/evengine/EvInterface;->IGetEditStauts_Editor()J

    move-result-wide v10

    const-wide/16 v12, 0x200

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_87

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_87

    iget-object v10, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    #getter for: Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mBackupHtml:Ljava/lang/String;
    invoke-static {v10}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->access$2(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_87

    .line 131
    iget-object v10, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    iget-object v10, v10, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->messageHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    #calls: Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->fillMsg(IIILjava/lang/String;)Landroid/os/Message;
    invoke-static {v11, v12, v13, v14, v5}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->access$1(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;IIILjava/lang/String;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 136
    :cond_87
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v9

    check-cast v9, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 138
    .local v9, txtfromhtml:Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v9, :cond_9

    .line 140
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 141
    if-eqz v7, :cond_9

    .line 143
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 144
    if-eqz v6, :cond_9

    .line 146
    iget-object v10, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    iget-object v10, v10, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->messageHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    #calls: Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->fillMsg(IIILjava/lang/String;)Landroid/os/Message;
    invoke-static {v11, v12, v13, v14, v6}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->access$1(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;IIILjava/lang/String;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .line 152
    .end local v9           #txtfromhtml:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_ae
    iget-object v10, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    #getter for: Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v10}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->access$0(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    .line 153
    .local v0, aInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    iget v10, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->bHasNativeClipboardData:I

    if-eqz v10, :cond_e0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_e0

    iget-object v10, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    #getter for: Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->mBackupHtml:Ljava/lang/String;
    invoke-static {v10}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->access$2(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_e0

    .line 155
    iget-object v10, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    iget-object v10, v10, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->messageHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    #calls: Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->fillMsg(IIILjava/lang/String;)Landroid/os/Message;
    invoke-static {v11, v12, v13, v14, v5}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->access$1(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;IIILjava/lang/String;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .line 161
    :cond_e0
    iget-object v10, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    iget-object v10, v10, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->messageHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    #calls: Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->fillMsg(IIILjava/lang/String;)Landroid/os/Message;
    invoke-static {v11, v12, v13, v14, v5}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->access$1(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;IIILjava/lang/String;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .end local v0           #aInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    .end local v2           #html:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    .end local v3           #htmlCS:Ljava/lang/CharSequence;
    .end local v5           #strHtml:Ljava/lang/String;
    :pswitch_f2
    move-object/from16 v1, p1

    .line 167
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 168
    .local v1, bmp:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, img_path:Ljava/lang/String;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_9

    .line 172
    iget-object v10, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    iget-object v10, v10, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->messageHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec$IClipboardDataPasteEventImpl;->this$0:Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    #calls: Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->fillMsg(IIILjava/lang/String;)Landroid/os/Message;
    invoke-static {v11, v12, v13, v14, v4}, Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;->access$1(Lcom/infraware/office/baseframe/porting/EvClipBoardHelperSec;IIILjava/lang/String;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .line 103
    :pswitch_data_114
    .packed-switch 0x2
        :pswitch_13
        :pswitch_f2
        :pswitch_34
    .end packed-switch
.end method
