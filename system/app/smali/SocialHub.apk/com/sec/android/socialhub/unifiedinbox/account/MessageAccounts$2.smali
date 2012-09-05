.class Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$2;
.super Ljava/lang/Object;
.source "MessageAccounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;->onClickContextMenu(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;

.field final synthetic val$api:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

.field final synthetic val$item:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

.field final synthetic val$mBuilder:Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$2;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;

    iput-object p2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$2;->val$api:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    iput-object p3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$2;->val$item:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iput-object p4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$2;->val$mBuilder:Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$2;->val$api:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    if-eqz v0, :cond_21

    .line 192
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$2;->val$api:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    const-string v1, "1_Messaging"

    new-array v4, v3, [Ljava/lang/String;

    aput-object v2, v4, v6

    new-array v5, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$2;->val$item:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    aput-object v3, v5, v6

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$2;->val$mBuilder:Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->isChecked()Z

    move-result v6

    move-object v3, v2

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/socialhub/messagelist/IMessageAPI;->removeMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    .line 202
    :cond_21
    return-void
.end method
