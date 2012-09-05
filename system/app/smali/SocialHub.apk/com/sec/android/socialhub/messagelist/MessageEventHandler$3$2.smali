.class Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$2;
.super Ljava/lang/Object;
.source "MessageEventHandler.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;

.field final synthetic val$wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$2;->this$1:Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;

    iput-object p2, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$2;->val$wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    .line 292
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$2;->this$1:Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;
    invoke-static {v1}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->access$000(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$2;->val$wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccountByType(I)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    .line 293
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$2;->this$1:Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;

    iget-object v1, v1, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->access$100(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$2;->this$1:Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;

    iget-object v2, v2, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;
    invoke-static {v2}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->access$300(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$2;->val$wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onClickContextMenu(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V

    .line 294
    const/4 v1, 0x1

    return v1
.end method
