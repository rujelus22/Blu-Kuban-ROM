.class Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter$1;
.super Ljava/lang/Object;
.source "TwitterSavedSearchListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->getItemClickListenr()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;

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

    check-cast v0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;

    .line 56
    new-instance v2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;

    #getter for: Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->access$000(Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string v1, "sptype"

    iget-object v3, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;

    #getter for: Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mSpType:I
    invoke-static {v3}, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->access$100(Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string v3, "groud_id"

    if-eqz v0, :cond_48

    iget-object v1, v0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;->strKeywordID:Ljava/lang/String;

    :goto_24
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "title"

    const v3, 0x7f0800d3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v1, "view"

    const/4 v3, 0x5

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v1, "ext1"

    if-eqz v0, :cond_4b

    iget-object v0, v0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;->strListsName:Ljava/lang/String;

    :goto_3b
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;

    #getter for: Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->access$000(Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void

    .line 58
    :cond_48
    const-string v1, ""

    goto :goto_24

    .line 61
    :cond_4b
    const-string v0, ""

    goto :goto_3b
.end method
