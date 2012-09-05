.class Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$2;
.super Ljava/lang/Object;
.source "SocialHubSingleMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 246
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    iget-boolean v1, v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDeleteMode:Z

    if-eqz v1, :cond_35

    .line 248
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;

    .line 250
    .local v0, wrapper:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mMessageID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 252
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mMessageID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 253
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedFolderType:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->FolderType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 260
    :goto_30
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #calls: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->changeCheckBoxState(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;)V
    invoke-static {v1, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;)V

    .line 262
    .end local v0           #wrapper:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;
    :cond_35
    return-void

    .line 257
    .restart local v0       #wrapper:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;
    :cond_36
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mMessageID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mCheckedFolderType:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->FolderType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30
.end method
