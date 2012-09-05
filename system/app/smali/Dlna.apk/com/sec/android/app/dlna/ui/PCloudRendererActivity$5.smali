.class Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;
.super Landroid/os/Handler;
.source "PCloudRendererActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 179
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 181
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_124

    .line 231
    :cond_c
    :goto_c
    return-void

    .line 183
    :sswitch_d
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/DLNAManager;->SetTapMode(Z)V

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 186
    :try_start_1d
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayerList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2e
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1d .. :try_end_2e} :catch_67

    .line 191
    :goto_2e
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$100(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_6c

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mStopAnimation:Z
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$200(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptytext:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$300(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptyview:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$400(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    :goto_5d
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    iget-object v1, v1, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x44c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_c

    .line 187
    :catch_67
    move-exception v0

    .line 188
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_2e

    .line 196
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    :cond_6c
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8b

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptytext:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$300(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptyview:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$400(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5d

    .line 200
    :cond_8b
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptytext:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$300(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptyview:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$400(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5d

    .line 207
    :sswitch_9e
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$100(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_c

    .line 210
    :sswitch_a9
    const-string v1, "AddIn"

    const-string v2, "AddInActivity, mHandler, Refresh_Header"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_e0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mStopAnimation:Z
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$200(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Z

    move-result v1

    if-nez v1, :cond_e0

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptytext:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$300(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptyview:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$400(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 216
    :cond_e0
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_100

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptytext:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$300(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptyview:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$400(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 220
    :cond_100
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptytext:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$300(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptyview:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$400(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 227
    :sswitch_114
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mStopAnimation:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$202(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;Z)Z

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->headerIcon:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$500(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_c

    .line 181
    :sswitch_data_124
    .sparse-switch
        0x1f4 -> :sswitch_d
        0x1f6 -> :sswitch_9e
        0x44c -> :sswitch_a9
        0x44d -> :sswitch_114
    .end sparse-switch
.end method
