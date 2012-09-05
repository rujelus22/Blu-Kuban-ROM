.class Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter$1;
.super Ljava/lang/Object;
.source "TwitterListsListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->getItemClickListenr()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;

    .line 56
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;

    #getter for: Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->access$000(Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string v2, "sptype"

    iget-object v3, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;

    #getter for: Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mSpType:I
    invoke-static {v3}, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->access$100(Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string v2, "groud_id"

    if-eqz v0, :cond_3f

    iget-object v0, v0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->strGroupingID:Ljava/lang/String;

    :goto_24
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v0, "title"

    const v2, 0x7f0800d1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v0, "view"

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;

    #getter for: Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->access$000(Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void

    .line 58
    :cond_3f
    const-string v0, ""

    goto :goto_24
.end method
