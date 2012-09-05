.class Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;
.super Ljava/lang/Object;
.source "SocialHubContactActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/contacts/ContactListView$IQueryCompletListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->initializeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(I)V
    .registers 6
    .parameter "value"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->bIsFirstQuery:Z
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 149
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->bIsFirstQuery:Z
    invoke-static {v0, v2}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->access$002(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;Z)Z

    .line 151
    if-gtz p1, :cond_18

    .line 153
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    #calls: Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->startSync()V
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)V

    .line 175
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 177
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 179
    :cond_29
    return-void

    .line 161
    :cond_2a
    if-gtz p1, :cond_4e

    .line 163
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Lcom/sec/android/socialhub/contacts/ContactListView;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Lcom/sec/android/socialhub/contacts/ContactListView;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Lcom/sec/android/socialhub/contacts/ContactListView;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactListView;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 169
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Lcom/sec/android/socialhub/contacts/ContactListView;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Lcom/sec/android/socialhub/contacts/ContactListView;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Lcom/sec/android/socialhub/contacts/ContactListView;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/socialhub/contacts/ContactListView;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18
.end method
