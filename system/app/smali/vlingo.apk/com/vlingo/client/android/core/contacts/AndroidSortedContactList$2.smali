.class Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$2;
.super Landroid/os/Handler;
.source "AndroidSortedContactList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->createGroupedHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;


# direct methods
.method constructor <init>(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$2;->this$0:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 68
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_a0

    .line 97
    :goto_5
    return-void

    .line 71
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/Vector;

    .line 72
    .local v3, newItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    invoke-static {}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->access$000()Lcom/vlingo/client/core/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating display list (grouped), size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vlingo/client/core/logging/Logger;->debug(Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$2;->this$0:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    #getter for: Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->m_displayItems:Ljava/util/Vector;
    invoke-static {v4}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->access$300(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 75
    iget-object v4, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$2;->this$0:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    #getter for: Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->groupedItemMappings:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->access$400(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 77
    const/4 v1, 0x0

    .local v1, i:I
    :goto_37
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_91

    .line 78
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 79
    .local v2, item:Lcom/vlingo/client/core/contacts/DisplayItem;
    iget-object v4, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$2;->this$0:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    #getter for: Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->groupedItemMappings:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->access$400(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 80
    iget-object v4, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$2;->this$0:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    #getter for: Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->groupedItemMappings:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->access$400(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 81
    .local v0, groupItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    invoke-virtual {v0, v2}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->addItem(Lcom/vlingo/client/core/contacts/DisplayItem;)V

    .line 77
    :goto_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 84
    .end local v0           #groupItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    :cond_71
    new-instance v0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    invoke-direct {v0, v2}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;-><init>(Lcom/vlingo/client/core/contacts/DisplayItem;)V

    .line 85
    .restart local v0       #groupItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    iget-object v4, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$2;->this$0:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    #getter for: Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->m_displayItems:Ljava/util/Vector;
    invoke-static {v4}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->access$500(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 86
    iget-object v4, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$2;->this$0:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    #getter for: Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->groupedItemMappings:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->access$400(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6e

    .line 90
    .end local v0           #groupItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    .end local v2           #item:Lcom/vlingo/client/core/contacts/DisplayItem;
    :cond_91
    iget-object v4, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$2;->this$0:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    #calls: Lcom/vlingo/client/core/contacts/SortedContactList;->notifyListener()V
    invoke-static {v4}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->access$601(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)V

    goto/16 :goto_5

    .line 94
    .end local v1           #i:I
    .end local v3           #newItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    :pswitch_98
    iget-object v4, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$2;->this$0:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    #calls: Lcom/vlingo/client/core/contacts/SortedContactList;->doneUpdate()V
    invoke-static {v4}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->access$701(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)V

    goto/16 :goto_5

    .line 68
    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_98
    .end packed-switch
.end method
