.class Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$7;
.super Ljava/lang/Object;
.source "SocialHubSendMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->drawAutoText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$7;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter
    .parameter "v"
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
    .line 846
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 847
    .local v4, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 848
    .local v3, id_key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 849
    .local v2, email:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$7;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mContactAdapter:Lcom/sec/android/socialhub/util/AutoCompleteAdapter;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$1300(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/util/AutoCompleteAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/sec/android/socialhub/util/AutoCompleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 851
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_9f

    .line 853
    const-string v5, "display_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 854
    const-string v5, "friend_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 855
    const-string v5, "email_address"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 862
    if-eqz v4, :cond_9f

    if-eqz v3, :cond_9f

    .line 864
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_________________________________________position : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_________________________________________id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_________________________________________id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :try_start_7b
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$7;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientsList:Lcom/sec/android/socialhub/view/RecipientsListLayout;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Lcom/sec/android/socialhub/view/RecipientsListLayout;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->addRecipients([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/ArrayList;
    :try_end_91
    .catchall {:try_start_7b .. :try_end_91} :catchall_af
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_7b .. :try_end_91} :catch_a0

    move-result-object v5

    if-nez v5, :cond_94

    .line 889
    :cond_94
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$7;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v5

    const-string v6, ""

    :goto_9c
    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    :cond_9f
    return-void

    .line 875
    :catch_a0
    move-exception v1

    .line 877
    .local v1, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :try_start_a1
    invoke-virtual {v1}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    .line 879
    iget v5, v1, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->errorCode:I
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_af

    .line 889
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$7;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v5

    const-string v6, ""

    goto :goto_9c

    .end local v1           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :catchall_af
    move-exception v5

    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity$7;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->mRecipientText:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v6}, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    throw v5
.end method
