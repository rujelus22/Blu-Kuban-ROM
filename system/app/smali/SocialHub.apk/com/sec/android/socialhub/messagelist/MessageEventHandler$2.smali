.class Lcom/sec/android/socialhub/messagelist/MessageEventHandler$2;
.super Ljava/lang/Object;
.source "MessageEventHandler.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/messagelist/MessageEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$2;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 15
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    sget-object v4, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "onChildClick"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "groupPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    .line 101
    .local v1, wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
    iget-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$2;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;
    invoke-static {v4}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->access$000(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v4

    iget v5, v1, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    invoke-virtual {v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccountByType(I)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    .line 103
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    invoke-static {}, Lcom/sec/android/socialhub/messagelist/MessageListView;->getMessageViewMode()I

    move-result v4

    if-eqz v4, :cond_48

    invoke-static {}, Lcom/sec/android/socialhub/messagelist/MessageListView;->getMessageViewMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_53

    .line 106
    :cond_48
    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$2;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->access$100(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onClickItem(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    move v2, v3

    .line 113
    :cond_52
    :goto_52
    return v2

    .line 109
    :cond_53
    invoke-static {}, Lcom/sec/android/socialhub/messagelist/MessageListView;->getMessageViewMode()I

    move-result v3

    if-ne v3, v2, :cond_52

    .line 111
    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$2;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;
    invoke-static {v3}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->access$200(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->onClickItem(Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    goto :goto_52
.end method
