.class Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$1;
.super Landroid/os/Handler;
.source "AndroidSortedContactList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->createDefaultHandler()Landroid/os/Handler;
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
    .line 48
    iput-object p1, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$1;->this$0:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 50
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_34

    .line 61
    :goto_5
    return-void

    .line 53
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    .line 54
    .local v0, v:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    invoke-static {}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->access$000()Lcom/vlingo/client/core/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating display list (ungrouped), size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/logging/Logger;->debug(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$1;->this$0:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    #calls: Lcom/vlingo/client/core/contacts/SortedContactList;->updateList(Ljava/util/Vector;)V
    invoke-static {v1, v0}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->access$101(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;Ljava/util/Vector;)V

    goto :goto_5

    .line 58
    .end local v0           #v:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    :pswitch_2e
    iget-object v1, p0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$1;->this$0:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;

    #calls: Lcom/vlingo/client/core/contacts/SortedContactList;->doneUpdate()V
    invoke-static {v1}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;->access$201(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList;)V

    goto :goto_5

    .line 50
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2e
    .end packed-switch
.end method
