.class Lcom/sec/android/socialhub/adapter/AccountListAdapter$1$2;
.super Ljava/lang/Object;
.source "AccountListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1$2;->this$1:Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1$2;->this$1:Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;

    iget-object v0, v0, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    #getter for: Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->access$400(Lcom/sec/android/socialhub/adapter/AccountListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1$2;->this$1:Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;

    iget-object v1, v1, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    #getter for: Lcom/sec/android/socialhub/adapter/AccountListAdapter;->accountId:I
    invoke-static {v1}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->access$300(Lcom/sec/android/socialhub/adapter/AccountListAdapter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/socialhub/util/SocialHubUtil;->signOutIMAccount(Landroid/content/Context;I)V

    .line 185
    return-void
.end method
