.class Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$1;
.super Ljava/lang/Object;
.source "CombinedAccounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->onClickContextMenu(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;

.field final synthetic val$api:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

.field final synthetic val$item:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;

    iput-object p2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$1;->val$api:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    iput-object p3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$1;->val$item:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 155
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$1;->val$api:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    const-string v1, "2_Email"

    new-array v4, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$1;->val$item:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    aput-object v3, v4, v7

    new-array v5, v6, [Ljava/lang/String;

    aput-object v2, v5, v7

    move-object v3, v2

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/socialhub/messagelist/IMessageAPI;->removeMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    .line 164
    return-void
.end method
