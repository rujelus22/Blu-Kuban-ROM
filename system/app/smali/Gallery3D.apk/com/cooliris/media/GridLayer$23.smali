.class Lcom/cooliris/media/GridLayer$23;
.super Landroid/os/Handler;
.source "GridLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/GridLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GridLayer;


# direct methods
.method constructor <init>(Lcom/cooliris/media/GridLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 2841
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$23;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 2845
    :try_start_1
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_22

    .line 2846
    const-string v5, "GridLayer"

    const-string v6, "PickFolderHandler retry"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    iget-object v5, p0, Lcom/cooliris/media/GridLayer$23;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/Gallery;

    iget-object v5, v5, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2849
    iget-object v5, p0, Lcom/cooliris/media/GridLayer$23;->this$0:Lcom/cooliris/media/GridLayer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/cooliris/media/GridLayer;->setResultForMultiPick(ZZ)V

    .line 2874
    :cond_21
    :goto_21
    return-void

    .line 2850
    :cond_22
    iget v5, p1, Landroid/os/Message;->what:I

    if-nez v5, :cond_21

    .line 2851
    iget-object v5, p0, Lcom/cooliris/media/GridLayer$23;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/Gallery;

    invoke-virtual {v5}, Lcom/cooliris/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2852
    .local v3, myExtras:Landroid/os/Bundle;
    if-eqz v3, :cond_21

    const-string v5, "data"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-nez v5, :cond_48

    const-string v5, "return-data"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2855
    :cond_48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2856
    .local v1, extras:Landroid/os/Bundle;
    const-string v5, "data"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "savedItemNum"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2857
    const-string v5, "selectedItemNum"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "selectedItemNum"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2858
    const-string v6, "folderID"

    iget-object v5, p0, Lcom/cooliris/media/GridLayer$23;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/Gallery;

    invoke-virtual {v5}, Lcom/cooliris/media/Gallery;->getFolderID()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2859
    const-string v5, "folderItems"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "selectedItems"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2860
    iget-object v5, p0, Lcom/cooliris/media/GridLayer$23;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/Gallery;

    invoke-virtual {v5}, Lcom/cooliris/media/Gallery;->getWidgetSize()[I

    move-result-object v4

    .line 2861
    .local v4, widgetSize:[I
    const-string v5, "widgetspanx"

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2862
    const-string v5, "widgetspany"

    const/4 v6, 0x1

    aget v6, v4, v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2863
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2864
    .local v2, i:Landroid/content/Intent;
    const-string v5, "inline-data"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2865
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2866
    iget-object v5, p0, Lcom/cooliris/media/GridLayer$23;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/Gallery;

    iget-object v5, v5, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2867
    iget-object v5, p0, Lcom/cooliris/media/GridLayer$23;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/Gallery;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v2}, Lcom/cooliris/media/Gallery;->setResult(ILandroid/content/Intent;)V

    .line 2868
    iget-object v5, p0, Lcom/cooliris/media/GridLayer$23;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/Gallery;

    invoke-virtual {v5}, Lcom/cooliris/media/Gallery;->finish()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_da} :catch_dc

    goto/16 :goto_21

    .line 2871
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #myExtras:Landroid/os/Bundle;
    .end local v4           #widgetSize:[I
    :catch_dc
    move-exception v0

    .line 2872
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_21
.end method
