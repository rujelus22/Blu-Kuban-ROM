.class Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTCServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/phone/ConversationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/android/apps/plus/phone/ConversationActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;)V

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

    .line 143
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mCreateConversationRequestId:I
    invoke-static {v3}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$300(Lcom/google/android/apps/plus/phone/ConversationActivity;)I

    move-result v3

    if-ne p1, v3, :cond_54

    .line 144
    invoke-virtual {p4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v3

    if-ne v3, v1, :cond_6a

    .line 145
    iget-object v3, p3, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->mConversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    if-eqz v3, :cond_55

    iget-object v3, p3, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->mConversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantCount()I

    move-result v3

    if-le v3, v1, :cond_55

    .line 148
    .local v1, isGroup:Z
    :goto_1c
    const-class v2, Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tile"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 151
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeeting()V

    .line 152
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    iget-object v4, p3, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v1}, Lcom/google/android/apps/plus/phone/Intents;->getConversationActivityHangoutTileIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 163
    .local v0, intent:Landroid/content/Intent;
    :goto_4f
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 173
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isGroup:Z
    :cond_54
    :goto_54
    return-void

    :cond_55
    move v1, v2

    .line 145
    goto :goto_1c

    .line 157
    .restart local v1       #isGroup:Z
    :cond_57
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    iget-object v4, p3, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v1}, Lcom/google/android/apps/plus/phone/Intents;->getConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v0

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_4f

    .line 164
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isGroup:Z
    :cond_6a
    invoke-virtual {p4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7e

    .line 166
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    const v4, 0x7f08010c

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_54

    .line 169
    :cond_7e
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    const v4, 0x7f08010d

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_54
.end method
