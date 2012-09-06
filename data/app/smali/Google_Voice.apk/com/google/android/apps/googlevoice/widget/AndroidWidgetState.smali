.class public Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;
.super Ljava/lang/Object;
.source "AndroidWidgetState.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/widget/WidgetState;


# instance fields
.field private currentMessageIndex:I

.field private lastInboxTimestamp:J

.field private notificationMessage:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private updatingDoNotDisturb:Z

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private final voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private final voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoiceUtil;)V
    .registers 7
    .parameter "voiceModel"
    .parameter "voicePreferences"
    .parameter "serverSettings"
    .parameter "voiceUtil"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->updatingDoNotDisturb:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->notificationMessage:Ljava/lang/Integer;

    .line 40
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 41
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 42
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 43
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    .line 44
    iput v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->currentMessageIndex:I

    .line 45
    return-void
.end method

.method private getConversationAt(II)Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 9
    .parameter "index"
    .parameter "offset"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    const-string v5, "inbox"

    invoke-interface {v4, v5}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v1

    .line 109
    .local v1, inbox:Lcom/google/android/apps/googlevoice/core/Label;
    if-nez v1, :cond_c

    .line 129
    :cond_b
    :goto_b
    return-object v3

    .line 113
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Label;->getTotalCount()I

    move-result v2

    .line 114
    .local v2, totalCount:I
    if-eqz v2, :cond_b

    .line 118
    if-gez p1, :cond_15

    .line 119
    const/4 p1, 0x0

    .line 121
    :cond_15
    if-lt p1, v2, :cond_19

    .line 122
    add-int/lit8 p1, v2, -0x1

    .line 125
    :cond_19
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 126
    .local v0, conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    add-int v4, p1, p2

    if-ltz v4, :cond_b

    add-int v4, p1, p2

    array-length v5, v0

    if-ge v4, v5, :cond_b

    .line 129
    add-int v3, p1, p2

    aget-object v3, v0, v3

    goto :goto_b
.end method


# virtual methods
.method public canComposeSms()Z
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public canUseDoNotDisturb()Z
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountBalance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getDisplayableAccountBalance()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallingMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    const-string v4, "inbox"

    invoke-interface {v3, v4}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    .line 135
    .local v0, inbox:Lcom/google/android/apps/googlevoice/core/Label;
    if-nez v0, :cond_c

    .line 144
    :cond_b
    :goto_b
    return-object v2

    .line 139
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Label;->getTotalCount()I

    move-result v1

    .line 140
    .local v1, totalCount:I
    if-eqz v1, :cond_b

    .line 144
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v2

    goto :goto_b
.end method

.method public getCurrentConversation()Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->currentMessageIndex:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->getConversationAt(II)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentConversationIndex()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->currentMessageIndex:I

    return v0
.end method

.method public getDoNotDisturb()Z
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getDoNotDisturb()Z

    move-result v0

    return v0
.end method

.method public getInboxTimestamp()J
    .registers 4

    .prologue
    .line 191
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    const-string v2, "inbox"

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    .line 192
    .local v0, inbox:Lcom/google/android/apps/googlevoice/core/Label;
    if-nez v0, :cond_d

    .line 193
    const-wide/16 v1, 0x0

    .line 195
    :goto_c
    return-wide v1

    :cond_d
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Label;->getTimestamp()J

    move-result-wide v1

    goto :goto_c
.end method

.method public getLastInboxTimestamp()J
    .registers 3

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->lastInboxTimestamp:J

    return-wide v0
.end method

.method public getNextConversation()Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->getCurrentConversationIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->getConversationAt(II)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationMessage()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->notificationMessage:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotalCount()I
    .registers 4

    .prologue
    .line 182
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    const-string v2, "inbox"

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    .line 183
    .local v0, inbox:Lcom/google/android/apps/googlevoice/core/Label;
    if-nez v0, :cond_c

    .line 184
    const/4 v1, 0x0

    .line 186
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Label;->getTotalCount()I

    move-result v1

    goto :goto_b
.end method

.method public getUnreadCount()I
    .registers 4

    .prologue
    .line 173
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    const-string v2, "inbox"

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    .line 174
    .local v0, inbox:Lcom/google/android/apps/googlevoice/core/Label;
    if-nez v0, :cond_c

    .line 175
    const/4 v1, 0x0

    .line 177
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Label;->getUnreadCount()I

    move-result v1

    goto :goto_b
.end method

.method public goToFirstMessage()V
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->currentMessageIndex:I

    .line 169
    return-void
.end method

.method public goToNextMessage()V
    .registers 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->isLastMessage()Z

    move-result v0

    if-nez v0, :cond_c

    .line 162
    iget v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->currentMessageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->currentMessageIndex:I

    .line 164
    :cond_c
    return-void
.end method

.method public goToPrevMessage()V
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->isFirstMessage()Z

    move-result v0

    if-nez v0, :cond_c

    .line 155
    iget v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->currentMessageIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->currentMessageIndex:I

    .line 157
    :cond_c
    return-void
.end method

.method public hasTelephony(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isFirstMessage()Z
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->currentMessageIndex:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isLastMessage()Z
    .registers 3

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->currentMessageIndex:I

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->getTotalCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isUpdatingDoNotDisturb()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->updatingDoNotDisturb:Z

    return v0
.end method

.method public setNotificationMessage(Ljava/lang/Integer;)V
    .registers 2
    .parameter "notificationMessage"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->notificationMessage:Ljava/lang/Integer;

    .line 85
    return-void
.end method

.method public setUpdatingDoNotDisturb(Z)V
    .registers 2
    .parameter "updatingDoNotDisturb"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->updatingDoNotDisturb:Z

    .line 75
    return-void
.end method

.method public shouldInterceptCalls()Z
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->shouldInterceptCalls(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v0

    return v0
.end method

.method public updateLastInboxTimestamp()V
    .registers 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->getInboxTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetState;->lastInboxTimestamp:J

    .line 206
    return-void
.end method
