.class Lcom/samsung/upnp/media/server/ContentDirectory$1;
.super Landroid/os/Handler;
.source "ContentDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/upnp/media/server/ContentDirectory;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/upnp/media/server/ContentDirectory;


# direct methods
.method constructor <init>(Lcom/samsung/upnp/media/server/ContentDirectory;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    .line 1876
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/16 v13, 0x3e9

    .line 1879
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_a6

    .line 1920
    :goto_7
    return-void

    .line 1881
    :pswitch_8
    iget-object v9, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    invoke-virtual {v9}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSystemUpdateID()I

    move-result v0

    .line 1882
    .local v0, currSystemUpdateID:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1885
    .local v1, currSystemUpdateTime:J
    iget-object v9, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    iget-object v9, v9, Lcom/samsung/upnp/media/server/ContentDirectory;->importItemNodeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    .local v5, i:I
    :goto_1a
    if-gtz v5, :cond_42

    .line 1901
    iget-object v9, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    #getter for: Lcom/samsung/upnp/media/server/ContentDirectory;->lastSystemUpdateTime:J
    invoke-static {v9}, Lcom/samsung/upnp/media/server/ContentDirectory;->access$0(Lcom/samsung/upnp/media/server/ContentDirectory;)J

    move-result-wide v9

    sub-long v9, v1, v9

    iget-object v11, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    invoke-virtual {v11}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSystemUpdateIDInterval()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_7c

    .line 1905
    iget-object v9, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    invoke-virtual {v9}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSystemUpdateIDInterval()J

    move-result-wide v9

    iget-object v11, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    #getter for: Lcom/samsung/upnp/media/server/ContentDirectory;->lastSystemUpdateTime:J
    invoke-static {v11}, Lcom/samsung/upnp/media/server/ContentDirectory;->access$0(Lcom/samsung/upnp/media/server/ContentDirectory;)J

    move-result-wide v11

    sub-long v11, v1, v11

    sub-long v3, v9, v11

    .line 1906
    .local v3, diff:J
    invoke-virtual {p0, v13, v3, v4}, Lcom/samsung/upnp/media/server/ContentDirectory$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    .line 1886
    .end local v3           #diff:J
    :cond_42
    iget-object v9, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    iget-object v9, v9, Lcom/samsung/upnp/media/server/ContentDirectory;->importItemNodeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;

    .line 1887
    .local v6, item:Lcom/samsung/upnp/media/server/object/item/ImportItemNode;
    if-nez v6, :cond_53

    .line 1885
    :cond_50
    :goto_50
    add-int/lit8 v5, v5, -0x1

    goto :goto_1a

    .line 1889
    :cond_53
    invoke-virtual {v6, v1, v2}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->reduceLifeTime(J)V

    .line 1890
    invoke-virtual {v6}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->isPostAble()Z

    move-result v9

    if-nez v9, :cond_50

    .line 1891
    iget-object v9, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    invoke-virtual {v6}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/upnp/media/server/ContentDirectory;->findContainerNodeByUPnPClass(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v7

    .line 1892
    .local v7, parentNode:Lcom/samsung/upnp/media/server/object/ContentNode;
    if-eqz v7, :cond_6b

    .line 1893
    invoke-virtual {v7, v6}, Lcom/samsung/upnp/media/server/object/ContentNode;->removeContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)Z

    .line 1894
    :cond_6b
    iget-object v9, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    iget-object v9, v9, Lcom/samsung/upnp/media/server/ContentDirectory;->importItemNodeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1895
    invoke-virtual {v6}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getDefaultResource()Lcom/samsung/upnp/media/server/object/ResourceProperty;

    move-result-object v8

    .line 1896
    .local v8, resourceProperty:Lcom/samsung/upnp/media/server/object/ResourceProperty;
    if-eqz v8, :cond_50

    .line 1897
    invoke-virtual {v8}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->deleteContent()V

    goto :goto_50

    .line 1910
    .end local v6           #item:Lcom/samsung/upnp/media/server/object/item/ImportItemNode;
    .end local v7           #parentNode:Lcom/samsung/upnp/media/server/object/ContentNode;
    .end local v8           #resourceProperty:Lcom/samsung/upnp/media/server/object/ResourceProperty;
    :cond_7c
    iget-object v9, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    #getter for: Lcom/samsung/upnp/media/server/ContentDirectory;->lastSystemUpdateID:I
    invoke-static {v9}, Lcom/samsung/upnp/media/server/ContentDirectory;->access$1(Lcom/samsung/upnp/media/server/ContentDirectory;)I

    move-result v9

    if-eq v9, v0, :cond_9b

    .line 1911
    iget-object v9, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    #getter for: Lcom/samsung/upnp/media/server/ContentDirectory;->varSystemUpdateID:Lcom/samsung/upnp/StateVariable;
    invoke-static {v9}, Lcom/samsung/upnp/media/server/ContentDirectory;->access$2(Lcom/samsung/upnp/media/server/ContentDirectory;)Lcom/samsung/upnp/StateVariable;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/samsung/upnp/StateVariable;->setValue(I)V

    .line 1912
    iget-object v9, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    #setter for: Lcom/samsung/upnp/media/server/ContentDirectory;->lastSystemUpdateID:I
    invoke-static {v9, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->access$3(Lcom/samsung/upnp/media/server/ContentDirectory;I)V

    .line 1913
    iget-object v9, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    #setter for: Lcom/samsung/upnp/media/server/ContentDirectory;->lastSystemUpdateTime:J
    invoke-static {v9, v10, v11}, Lcom/samsung/upnp/media/server/ContentDirectory;->access$4(Lcom/samsung/upnp/media/server/ContentDirectory;J)V

    .line 1915
    :cond_9b
    iget-object v9, p0, Lcom/samsung/upnp/media/server/ContentDirectory$1;->this$0:Lcom/samsung/upnp/media/server/ContentDirectory;

    invoke-virtual {v9}, Lcom/samsung/upnp/media/server/ContentDirectory;->getSystemUpdateIDInterval()J

    move-result-wide v9

    invoke-virtual {p0, v13, v9, v10}, Lcom/samsung/upnp/media/server/ContentDirectory$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 1879
    :pswitch_data_a6
    .packed-switch 0x3e9
        :pswitch_8
    .end packed-switch
.end method
