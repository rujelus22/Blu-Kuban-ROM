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
    .line 433
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
    .line 454
    packed-switch p2, :pswitch_data_60

    .line 466
    :goto_3
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 467
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$900(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendLocalPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)I

    .line 473
    :goto_20
    return-void

    .line 456
    :pswitch_21
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$700(Lcom/google/android/apps/plus/phone/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_TAKE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_2d
    #calls: Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$1100(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_3

    :cond_31
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_TAKE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_2d

    .line 461
    :pswitch_34
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$700(Lcom/google/android/apps/plus/phone/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_CHOOSE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_40
    #calls: Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$1200(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_3

    :cond_44
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_CHOOSE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_40

    .line 470
    :cond_47
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$900(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 454
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_34
        :pswitch_21
    .end packed-switch
.end method

.method public onSendTextMessage(Ljava/lang/String;)V
    .registers 9
    .parameter "text"

    .prologue
    .line 436
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$700(Lcom/google/android/apps/plus/phone/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_POST:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_c
    #calls: Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$800(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 438
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$900(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 439
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$900(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_2e
    return-void

    .line 436
    :cond_2f
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_POST:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_c

    .line 444
    :cond_32
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$1000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->makePersonFromParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v6

    .line 447
    .local v6, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-static {v1, v2, v6, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->createConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mCreateConversationRequestId:I
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$302(Lcom/google/android/apps/plus/phone/ConversationActivity;I)I

    goto :goto_2e
.end method

.method public onTypingStatusChanged(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V
    .registers 6
    .parameter "typingType"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$900(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 478
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$2;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$900(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendTypingRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Typing$Type;)I

    .line 481
    :cond_1d
    return-void
.end method
