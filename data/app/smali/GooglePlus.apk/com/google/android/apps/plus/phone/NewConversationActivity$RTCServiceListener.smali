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
    .line 57
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/phone/NewConversationActivity;Lcom/google/android/apps/plus/phone/NewConversationActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
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

    .line 63
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/NewConversationActivity;->mCreateConversationRequestId:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->access$100(Lcom/google/android/apps/plus/phone/NewConversationActivity;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_5d

    .line 64
    invoke-virtual {p4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v3

    if-ne v3, v1, :cond_73

    .line 65
    iget-object v3, p3, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->mConversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    if-eqz v3, :cond_5e

    iget-object v3, p3, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->mConversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantCount()I

    move-result v3

    if-le v3, v1, :cond_5e

    .line 68
    .local v1, isGroup:Z
    :goto_20
    const-class v2, Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tile"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 71
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeeting()V

    .line 72
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/NewConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->access$200(Lcom/google/android/apps/plus/phone/NewConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    iget-object v4, p3, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v1}, Lcom/google/android/apps/plus/phone/Intents;->getConversationActivityHangoutTileIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, intent:Landroid/content/Intent;
    :goto_53
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->finish()V

    .line 92
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isGroup:Z
    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    move v1, v2

    .line 65
    goto :goto_20

    .line 77
    .restart local v1       #isGroup:Z
    :cond_60
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

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_53

    .line 84
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isGroup:Z
    :cond_73
    invoke-virtual {p4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_87

    .line 85
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    const v4, 0x7f08010c

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_5d

    .line 88
    :cond_87
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    const v4, 0x7f08010d

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_5d
.end method
