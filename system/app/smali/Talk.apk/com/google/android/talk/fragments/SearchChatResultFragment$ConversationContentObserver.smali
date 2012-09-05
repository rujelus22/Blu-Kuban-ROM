.class final Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;
.super Landroid/database/ContentObserver;
.source "SearchChatResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SearchChatResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConversationContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .line 524
    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1400(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 525
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 534
    if-nez p1, :cond_28

    .line 535
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$200(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 536
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v1

    .line 537
    .local v1, valid:Z
    if-eqz v1, :cond_29

    .line 540
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLoaded:Z
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1500(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 541
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #calls: Lcom/google/android/talk/fragments/SearchChatResultFragment;->buildConversationIfLoaded()V
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1600(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    .line 548
    :cond_1f
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1800(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/ContactInfoQuery;->requeryForContactInfo()V

    .line 550
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #valid:Z
    :cond_28
    :goto_28
    return-void

    .line 545
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #valid:Z
    :cond_29
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #calls: Lcom/google/android/talk/fragments/SearchChatResultFragment;->finish()V
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1700(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    goto :goto_28
.end method
