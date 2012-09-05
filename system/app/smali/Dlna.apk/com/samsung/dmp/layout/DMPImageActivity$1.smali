.class Lcom/samsung/dmp/layout/DMPImageActivity$1;
.super Landroid/os/Handler;
.source "DMPImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPImageActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_198

    .line 280
    :cond_b
    :goto_b
    :sswitch_b
    return-void

    .line 173
    :sswitch_c
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #calls: Lcom/samsung/dmp/layout/DMPImageActivity;->playAnimation()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$000(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    goto :goto_b

    .line 176
    :sswitch_12
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->handleNext()V

    goto :goto_b

    .line 179
    :sswitch_18
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBufferingView:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$100(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_b

    .line 182
    :sswitch_24
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBufferingView:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$100(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_b

    .line 188
    :sswitch_2e
    :try_start_2e
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const/16 v1, 0x472

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->showDialog(I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_b

    .line 189
    :catch_36
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 194
    :sswitch_3b
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$200(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 195
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$300(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$200(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #calls: Lcom/samsung/dmp/layout/DMPImageActivity;->setDimToSelectedItem(Z)V
    invoke-static {v0, v3}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$400(Lcom/samsung/dmp/layout/DMPImageActivity;Z)V

    goto :goto_b

    .line 200
    :cond_58
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$300(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    :try_start_6f
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const/16 v1, 0x5dd

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->showDialog(I)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_77

    goto :goto_b

    .line 204
    :catch_77
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 210
    :sswitch_7c
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #calls: Lcom/samsung/dmp/layout/DMPImageActivity;->toggleButtonState(Z)V
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$600(Lcom/samsung/dmp/layout/DMPImageActivity;Z)V

    goto :goto_b

    .line 213
    :sswitch_82
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #calls: Lcom/samsung/dmp/layout/DMPImageActivity;->toggleButtonState(Z)V
    invoke-static {v0, v3}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$600(Lcom/samsung/dmp/layout/DMPImageActivity;Z)V

    goto :goto_b

    .line 219
    :sswitch_88
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mForceStopped:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$700(Lcom/samsung/dmp/layout/DMPImageActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 220
    const-string v0, "DLNA"

    const-string v1, "Media complete playing......."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mIsStopped:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$802(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z

    .line 222
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->handleNext()V

    goto/16 :goto_b

    .line 226
    :sswitch_a3
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->play()V

    goto/16 :goto_b

    .line 229
    :sswitch_aa
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->play()V

    goto/16 :goto_b

    .line 232
    :sswitch_b1
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mForceStopped:Z
    invoke-static {v0, v3}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$702(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z

    goto/16 :goto_b

    .line 235
    :sswitch_b8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_154

    .line 236
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyTimer:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$900(Lcom/samsung/dmp/layout/DMPImageActivity;)I

    move-result v0

    if-gez v0, :cond_ec

    .line 237
    const-string v0, "DLNA"

    const-string v1, "mHandler - init and start timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const/16 v1, 0x640

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyTimer:I
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$902(Lcom/samsung/dmp/layout/DMPImageActivity;I)I

    .line 240
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1000(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_e3

    .line 242
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1000(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 244
    :cond_e3
    invoke-virtual {p0, v4, v3, v3}, Lcom/samsung/dmp/layout/DMPImageActivity$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/samsung/dmp/layout/DMPImageActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b

    .line 246
    :cond_ec
    const-string v0, "DLNA"

    const-string v1, "mHandler - exit player by H/W back key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyTimer:I
    invoke-static {v0, v5}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$902(Lcom/samsung/dmp/layout/DMPImageActivity;I)I

    .line 249
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1000(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_10f

    .line 250
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1000(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 251
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1002(Lcom/samsung/dmp/layout/DMPImageActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 253
    :cond_10f
    invoke-virtual {p0, v4}, Lcom/samsung/dmp/layout/DMPImageActivity$1;->removeMessages(I)V

    .line 255
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mIsStopped:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$802(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z

    .line 256
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 257
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 261
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_14d

    .line 262
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const-class v3, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 266
    :cond_14d
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->finish()V

    goto/16 :goto_b

    .line 269
    :cond_154
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler - update timer for expiring. current timer ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyTimer:I
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$900(Lcom/samsung/dmp/layout/DMPImageActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyTimer:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$900(Lcom/samsung/dmp/layout/DMPImageActivity;)I

    move-result v0

    if-lez v0, :cond_190

    .line 272
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyTimer:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$900(Lcom/samsung/dmp/layout/DMPImageActivity;)I

    move-result v1

    add-int/lit16 v1, v1, -0xc8

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyTimer:I
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$902(Lcom/samsung/dmp/layout/DMPImageActivity;I)I

    .line 273
    invoke-virtual {p0, v4, v3, v3}, Lcom/samsung/dmp/layout/DMPImageActivity$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/samsung/dmp/layout/DMPImageActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b

    .line 275
    :cond_190
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mBackKeyTimer:I
    invoke-static {v0, v5}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$902(Lcom/samsung/dmp/layout/DMPImageActivity;I)I

    goto/16 :goto_b

    .line 171
    nop

    :sswitch_data_198
    .sparse-switch
        0x3 -> :sswitch_b8
        0x3ef -> :sswitch_c
        0x3f1 -> :sswitch_12
        0x457 -> :sswitch_2e
        0x458 -> :sswitch_3b
        0x46d -> :sswitch_88
        0x471 -> :sswitch_aa
        0x473 -> :sswitch_b1
        0x521 -> :sswitch_a3
        0x76c -> :sswitch_82
        0x76d -> :sswitch_7c
        0x76e -> :sswitch_b
        0x1b58 -> :sswitch_18
        0x1f40 -> :sswitch_24
        0x2328 -> :sswitch_b
    .end sparse-switch
.end method
