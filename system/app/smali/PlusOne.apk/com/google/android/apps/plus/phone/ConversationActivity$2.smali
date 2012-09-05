.class Lcom/google/android/apps/plus/phone/ConversationActivity$2;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/ConversationActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/ConversationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendPhoto(Ljava/lang/String;I)V
    .registers 9
    .parameter "uri"
    .parameter "requestCode"

    .prologue
    .line 312
    packed-switch p2, :pswitch_data_58

    .line 322
    :goto_3
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$700(Lcom/google/android/apps/plus/phone/ConversationActivity;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendLocalPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)I

    .line 329
    :goto_1c
    return-void

    .line 314
    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$500(Lcom/google/android/apps/plus/phone/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_TAKE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_29
    #calls: Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$800(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_3

    :cond_2d
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_TAKE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_29

    .line 318
    :pswitch_30
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$500(Lcom/google/android/apps/plus/phone/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_CHOOSE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_3c
    #calls: Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$900(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_3

    :cond_40
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_CHOOSE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_3c

    .line 326
    :cond_43
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$700(Lcom/google/android/apps/plus/phone/ConversationActivity;)J

    move-result-wide v2

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 312
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_30
        :pswitch_1d
    .end packed-switch
.end method

.method public onSendTextMessage(Ljava/lang/String;)V
    .registers 8
    .parameter "text"

    .prologue
    .line 304
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$500(Lcom/google/android/apps/plus/phone/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_POST:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_c
    #calls: Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$600(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$700(Lcom/google/android/apps/plus/phone/ConversationActivity;)J

    move-result-wide v2

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 304
    :cond_23
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_POST:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_c
.end method

.method public onTypingStatusChanged(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V
    .registers 6
    .parameter "typingType"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$700(Lcom/google/android/apps/plus/phone/ConversationActivity;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendTypingRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Typing$Type;)I

    .line 335
    return-void
.end method
