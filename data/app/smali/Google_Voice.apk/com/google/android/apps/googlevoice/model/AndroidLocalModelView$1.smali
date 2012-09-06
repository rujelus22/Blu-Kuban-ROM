.class Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView$1;
.super Ljava/lang/Object;
.source "AndroidLocalModelView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/apps/googlevoice/core/PhoneCall;",
        ">;"
    }
.end annotation


# static fields
.field private static final PRIORITY_COMPLETED:I = 0x0

.field private static final PRIORITY_PENDING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;)V
    .registers 2
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView$1;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPriority(Lcom/google/android/apps/googlevoice/core/PhoneCall;)I
    .registers 7
    .parameter "phoneCall"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 224
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, conversationId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, phoneCallId:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView$1;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->access$000(Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;)Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->isPermanentlyFailedSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 235
    :cond_16
    :goto_16
    return v2

    .line 228
    :cond_17
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView$1;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->access$000(Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;)Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->isTemporarilyFailedSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    move v2, v3

    .line 229
    goto :goto_16

    .line 230
    :cond_25
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView$1;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->access$000(Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;)Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->isQueuedSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    move v2, v3

    .line 231
    goto :goto_16

    .line 232
    :cond_33
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView$1;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->access$000(Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;)Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->isSmsInProgress(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    move v2, v3

    .line 233
    goto :goto_16
.end method


# virtual methods
.method public compare(Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/core/PhoneCall;)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView$1;->getPriority(Lcom/google/android/apps/googlevoice/core/PhoneCall;)I

    move-result v0

    .line 218
    .local v0, priorityA:I
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView$1;->getPriority(Lcom/google/android/apps/googlevoice/core/PhoneCall;)I

    move-result v1

    .line 219
    .local v1, priorityB:I
    if-ne v0, v1, :cond_11

    sget-object v2, Lcom/google/android/apps/googlevoice/core/PhoneCall;->COMPARATOR_BY_TIME_ASCENDING:Lcom/google/android/apps/googlevoice/core/PhoneCall$ComparatorByTimeAscending;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/apps/googlevoice/core/PhoneCall$ComparatorByTimeAscending;->compare(Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/core/PhoneCall;)I

    move-result v2

    :goto_10
    return v2

    :cond_11
    sub-int v2, v0, v1

    goto :goto_10
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 211
    check-cast p1, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .end local p1
    check-cast p2, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView$1;->compare(Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/core/PhoneCall;)I

    move-result v0

    return v0
.end method
