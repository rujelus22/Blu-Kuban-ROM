.class Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
.source "NewConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/NewConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTCServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/phone/NewConversationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/phone/NewConversationActivity;Lcom/google/android/apps/plus/phone/NewConversationActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/phone/NewConversationActivity;)V

    return-void
.end method


# virtual methods
.method public onConversationCreated(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;)V
    .registers 11
    .parameter "requestId"
    .parameter "account"
    .parameter "resultValue"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v3

    if-ne v3, v1, :cond_3b

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/NewConversationActivity;->mCreateConversationRequestId:I
    invoke-static {v3}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->access$100(Lcom/google/android/apps/plus/phone/NewConversationActivity;)I

    move-result v3

    if-ne p1, v3, :cond_3b

    .line 54
    iget-object v3, p3, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->mConversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    if-eqz v3, :cond_39

    iget-object v3, p3, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->mConversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantCount()I

    move-result v3

    if-le v3, v1, :cond_39

    .line 56
    .local v1, isGroup:Z
    :goto_1c
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->access$200(Lcom/google/android/apps/plus/phone/NewConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    iget-object v4, p3, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v1}, Lcom/google/android/apps/plus/phone/Intents;->getConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->finish()V

    .line 69
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isGroup:Z
    :goto_38
    return-void

    :cond_39
    move v1, v2

    .line 54
    goto :goto_1c

    .line 62
    :cond_3b
    invoke-virtual {p4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4f

    .line 63
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    const v4, 0x7f0700c4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_38

    .line 66
    :cond_4f
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    const v4, 0x7f0700c5

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_38
.end method
