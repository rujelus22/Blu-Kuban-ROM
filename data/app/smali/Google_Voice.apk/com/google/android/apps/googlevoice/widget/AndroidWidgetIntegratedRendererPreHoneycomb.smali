.class public Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;
.super Ljava/lang/Object;
.source "AndroidWidgetIntegratedRendererPreHoneycomb.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb$1;
    }
.end annotation


# static fields
.field private static final conversationResourceIds:[I

.field private static final dateResourceIds:[I

.field private static final photoResourceIds:[I

.field private static final senderResourceIds:[I

.field private static final smsResourceIds:[I

.field private static final textResourceIds:[I

.field private static final voicemailResourceIds:[I


# instance fields
.field private callSettingsIntent:Landroid/app/PendingIntent;

.field private final clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private composeIntent:Landroid/app/PendingIntent;

.field private inboxIntent:Landroid/app/PendingIntent;

.field private lastConversationId:Ljava/lang/String;

.field private lastConversationIntent:Landroid/app/PendingIntent;

.field private nextIntent:Landroid/app/PendingIntent;

.field private prevIntent:Landroid/app/PendingIntent;

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private final widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-array v0, v4, [I

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_sender1:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_sender2:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->senderResourceIds:[I

    .line 33
    new-array v0, v4, [I

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_photo1:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_photo2:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->photoResourceIds:[I

    .line 34
    new-array v0, v4, [I

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_date1:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_date2:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->dateResourceIds:[I

    .line 35
    new-array v0, v4, [I

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_call_type_sms1:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_call_type_sms2:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->smsResourceIds:[I

    .line 37
    new-array v0, v4, [I

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_call_type_voicemail1:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_call_type_voicemail2:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->voicemailResourceIds:[I

    .line 39
    new-array v0, v4, [I

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_text1:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_text2:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->textResourceIds:[I

    .line 40
    new-array v0, v4, [I

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_conversation1:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_conversation2:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->conversationResourceIds:[I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/googlevoice/widget/WidgetManager;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "widgetManager"
    .parameter "clockUtils"
    .parameter "voiceModel"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    .line 65
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 66
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 67
    return-void
.end method

.method private createIntegratedViews(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/widget/RemoteViews;
    .registers 13
    .parameter "context"
    .parameter "state"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 82
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    sget v7, Lcom/google/android/apps/googlevoice/R$layout;->widget_integrated_layout_before_honeycomb:I

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->getRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 85
    .local v5, views:Landroid/widget/RemoteViews;
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getTotalCount()I

    move-result v3

    .line 86
    .local v3, totalCount:I
    if-nez v3, :cond_45

    .line 87
    invoke-direct {p0, v5}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->disableUpArrow(Landroid/widget/RemoteViews;)V

    .line 88
    invoke-direct {p0, v5}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->disableDownArrow(Landroid/widget/RemoteViews;)V

    .line 89
    invoke-direct {p0, p1, v5, v8}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->displayNoConversation(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 90
    invoke-direct {p0, p1, v5, v9}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->displayNoConversation(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 128
    :goto_1c
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, account:Ljava/lang/String;
    sget v6, Lcom/google/android/apps/googlevoice/R$id;->widget_account:I

    if-nez v0, :cond_26

    const-string v0, ""

    .end local v0           #account:Ljava/lang/String;
    :cond_26
    invoke-virtual {v5, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 132
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getUnreadCount()I

    move-result v4

    .line 133
    .local v4, unreadCount:I
    sget v7, Lcom/google/android/apps/googlevoice/R$id;->widget_unread_count:I

    if-nez v4, :cond_96

    const-string v6, ""

    :goto_33
    invoke-virtual {v5, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 136
    sget v6, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox:I

    invoke-virtual {v5, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    invoke-direct {p0, p1, v5, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->updateButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 138
    invoke-direct {p0, p1, v5, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->updateInfoBar(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 139
    invoke-direct {p0, p1, v5, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->setButtonsIntents(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 141
    return-object v5

    .line 93
    .end local v4           #unreadCount:I
    :cond_45
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->isFirstMessage()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 94
    invoke-direct {p0, v5}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->disableUpArrow(Landroid/widget/RemoteViews;)V

    .line 100
    :goto_4e
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getCurrentConversationIndex()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    if-lt v6, v3, :cond_70

    .line 101
    invoke-direct {p0, v5}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->disableDownArrow(Landroid/widget/RemoteViews;)V

    .line 107
    :goto_59
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getCurrentConversation()Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v1

    .line 108
    .local v1, conversation1:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getNextConversation()Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v2

    .line 109
    .local v2, conversation2:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v1, :cond_86

    .line 110
    invoke-direct {p0, p1, v5, v1, v8}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->displayConversation(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    .line 111
    if-eqz v2, :cond_74

    .line 112
    invoke-direct {p0, p1, v5, v2, v9}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->displayConversation(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    goto :goto_1c

    .line 96
    .end local v1           #conversation1:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v2           #conversation2:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_6c
    invoke-direct {p0, p1, v5}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->enableUpArrow(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto :goto_4e

    .line 103
    :cond_70
    invoke-direct {p0, p1, v5}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->enableDownArrow(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto :goto_59

    .line 115
    .restart local v1       #conversation1:Lcom/google/android/apps/googlevoice/core/Conversation;
    .restart local v2       #conversation2:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_74
    invoke-direct {p0, v5}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->disableDownArrow(Landroid/widget/RemoteViews;)V

    .line 116
    invoke-direct {p0, p1, v5, v9}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->displayNoConversation(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 117
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getCurrentConversationIndex()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->loadMessage(I)V

    goto :goto_1c

    .line 121
    :cond_86
    invoke-direct {p0, v5}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->disableDownArrow(Landroid/widget/RemoteViews;)V

    .line 122
    invoke-direct {p0, p1, v5, v8}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->displayNoConversation(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 123
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getCurrentConversationIndex()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->loadMessage(I)V

    goto :goto_1c

    .line 133
    .end local v1           #conversation1:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v2           #conversation2:Lcom/google/android/apps/googlevoice/core/Conversation;
    .restart local v4       #unreadCount:I
    :cond_96
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_33
.end method

.method private createIntegratedViewsSignedOut(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 5
    .parameter "context"

    .prologue
    .line 235
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    sget v2, Lcom/google/android/apps/googlevoice/R$layout;->widget_integrated_layout_before_honeycomb:I

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->getRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 237
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->disableUpArrow(Landroid/widget/RemoteViews;)V

    .line 238
    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->disableDownArrow(Landroid/widget/RemoteViews;)V

    .line 239
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->displayNoConversation(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 240
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->displayNoConversation(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 241
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_unread_count:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 242
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 243
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_account:I

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->widget_settings_notification_signed_out:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 245
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_unread_count:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 246
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_layout:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 247
    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->updateButtonsSignedOut(Landroid/widget/RemoteViews;)V

    .line 248
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->updateInfoBarSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 249
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->setButtonsIntentsSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 250
    return-object v0
.end method

.method private disableDownArrow(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    .line 421
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_down:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_integrated_down_disabled:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 423
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_down:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 424
    return-void
.end method

.method private disableUpArrow(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    .line 427
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_up:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_integrated_up_disabled:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 429
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_up:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 430
    return-void
.end method

.method private displayConversation(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/core/Conversation;I)V
    .registers 16
    .parameter "context"
    .parameter "views"
    .parameter "conversation"
    .parameter "index"

    .prologue
    .line 154
    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->senderResourceIds:[I

    aget v4, v0, p4

    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->photoResourceIds:[I

    aget v5, v0, p4

    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->dateResourceIds:[I

    aget v6, v0, p4

    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->smsResourceIds:[I

    aget v7, v0, p4

    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->voicemailResourceIds:[I

    aget v8, v0, p4

    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->textResourceIds:[I

    aget v9, v0, p4

    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->conversationResourceIds:[I

    aget v10, v0, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->displayConversation(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/core/Conversation;IIIIIII)V

    .line 157
    return-void
.end method

.method private displayConversation(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/core/Conversation;IIIIIII)V
    .registers 22
    .parameter "context"
    .parameter "views"
    .parameter "conversation"
    .parameter "senderId"
    .parameter "photoId"
    .parameter "dateId"
    .parameter "smsId"
    .parameter "voicemailId"
    .parameter "textId"
    .parameter "conversationResourceId"

    .prologue
    .line 162
    invoke-virtual {p3}, Lcom/google/android/apps/googlevoice/core/Conversation;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v2

    .line 163
    .local v2, contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    if-eqz v2, :cond_2f

    .line 165
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->hasLocalContact()Z

    move-result v7

    if-nez v7, :cond_19

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    if-eqz v7, :cond_19

    .line 166
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v7, v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v5

    .line 167
    .local v5, localContactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    if-eqz v5, :cond_19

    .line 168
    move-object v2, v5

    .line 172
    .end local v5           #localContactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    :cond_19
    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getNameFromContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, p4, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 175
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_39

    .line 176
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 181
    :cond_2f
    :goto_2f
    invoke-virtual {p3}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v1

    .line 182
    .local v1, calls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-eqz v1, :cond_38

    array-length v7, v1

    if-nez v7, :cond_41

    .line 210
    :cond_38
    :goto_38
    return-void

    .line 178
    .end local v1           #calls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_39
    sget v7, Lcom/google/android/apps/googlevoice/R$drawable;->widget_inbox_default_contact_photo:I

    move/from16 v0, p5

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2f

    .line 185
    .restart local v1       #calls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_41
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v4, v1, v7

    .line 186
    .local v4, lastCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-eqz v4, :cond_38

    .line 190
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v7

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v9}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v9

    invoke-static {p1, v7, v8, v9, v10}, Lcom/google/android/apps/googlevoice/VoiceUtil;->formatTime(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 192
    const-string v6, ""

    .line 193
    .local v6, message:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isTextMessage()Z

    move-result v7

    if-eqz v7, :cond_87

    .line 195
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageText()Ljava/lang/String;

    move-result-object v6

    .line 196
    const/4 v7, 0x0

    move/from16 v0, p7

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 197
    const/16 v7, 0x8

    move/from16 v0, p8

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 207
    :goto_74
    move/from16 v0, p9

    invoke-virtual {p2, v0, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p3}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getConversationIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 209
    .local v3, intent:Landroid/app/PendingIntent;
    move/from16 v0, p10

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_38

    .line 200
    .end local v3           #intent:Landroid/app/PendingIntent;
    :cond_87
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getTranscript()Lcom/google/android/apps/googlevoice/core/Transcript;

    move-result-object v7

    if-eqz v7, :cond_95

    .line 201
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getTranscript()Lcom/google/android/apps/googlevoice/core/Transcript;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Transcript;->getText()Ljava/lang/String;

    move-result-object v6

    .line 202
    :cond_95
    const/16 v7, 0x8

    move/from16 v0, p7

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 203
    const/4 v7, 0x0

    move/from16 v0, p8

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_74
.end method

.method private displayNoConversation(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .registers 14
    .parameter "context"
    .parameter "views"
    .parameter "index"

    .prologue
    .line 213
    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->senderResourceIds:[I

    aget v3, v0, p3

    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->photoResourceIds:[I

    aget v4, v0, p3

    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->dateResourceIds:[I

    aget v5, v0, p3

    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->smsResourceIds:[I

    aget v6, v0, p3

    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->voicemailResourceIds:[I

    aget v7, v0, p3

    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->textResourceIds:[I

    aget v8, v0, p3

    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->conversationResourceIds:[I

    aget v9, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->displayNoConversation(Landroid/content/Context;Landroid/widget/RemoteViews;IIIIIII)V

    .line 216
    return-void
.end method

.method private displayNoConversation(Landroid/content/Context;Landroid/widget/RemoteViews;IIIIIII)V
    .registers 12
    .parameter "context"
    .parameter "views"
    .parameter "senderId"
    .parameter "photoId"
    .parameter "dateId"
    .parameter "smsId"
    .parameter "voicemailId"
    .parameter "textId"
    .parameter "conversationResourceId"

    .prologue
    const/16 v1, 0x8

    .line 220
    const-string v0, ""

    invoke-virtual {p2, p3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 221
    sget v0, Lcom/google/android/apps/googlevoice/R$drawable;->widget_inbox_default_contact_photo:I

    invoke-virtual {p2, p4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 222
    const-string v0, ""

    invoke-virtual {p2, p5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 223
    invoke-virtual {p2, p6, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 224
    invoke-virtual {p2, p7, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 225
    const-string v0, ""

    invoke-virtual {p2, p8, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, p9, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 227
    return-void
.end method

.method private enableDownArrow(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 5
    .parameter "context"
    .parameter "views"

    .prologue
    .line 407
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_down:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 408
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_down:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_inbox_arrow_down_selector:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 410
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_down:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getNextIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 411
    return-void
.end method

.method private enableUpArrow(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 5
    .parameter "context"
    .parameter "views"

    .prologue
    .line 414
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_up:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 415
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_up:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_inbox_arrow_up_selector:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 417
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_up:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getPrevIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 418
    return-void
.end method

.method private declared-synchronized getCallSettingsIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/app/PendingIntent;
    .registers 6
    .parameter "context"
    .parameter "state"

    .prologue
    .line 383
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->callSettingsIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_24

    .line 384
    invoke-interface {p2, p1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->hasTelephony(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->shouldInterceptCalls()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/CycleCallRoutingModeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.CycleCallRoutingModeActivity.TOAST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->callSettingsIntent:Landroid/app/PendingIntent;

    .line 394
    .end local v0           #intent:Landroid/content/Intent;
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->callSettingsIntent:Landroid/app/PendingIntent;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_3d

    monitor-exit p0

    return-object v1

    .line 389
    :cond_28
    :try_start_28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/widget/WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.NOOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->callSettingsIntent:Landroid/app/PendingIntent;
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_3d

    goto :goto_24

    .line 383
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCallingModeLabel(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 358
    if-eqz p2, :cond_d

    .line 359
    sget-object v0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb$1;->$SwitchMap$com$google$android$apps$googlevoice$VoicePreferences$Mode:[I

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 372
    :cond_d
    const-string v0, ""

    :goto_f
    return-object v0

    .line 361
    :pswitch_10
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_all:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 363
    :pswitch_17
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_ask:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 365
    :pswitch_1e
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_ask_intl:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 367
    :pswitch_25
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_intl:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 369
    :pswitch_2c
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_call_settings_label_none:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 359
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_10
        :pswitch_17
        :pswitch_1e
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method

.method private declared-synchronized getComposeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 3
    .parameter "context"

    .prologue
    .line 376
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->composeIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_d

    .line 377
    const-class v0, Lcom/google/android/apps/googlevoice/OutgoingSmsActivity;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getPendingIndentForActivity(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->composeIntent:Landroid/app/PendingIntent;

    .line 379
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->composeIntent:Landroid/app/PendingIntent;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    .line 376
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getConversationIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"
    .parameter "conversationId"

    .prologue
    .line 282
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->lastConversationIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->lastConversationId:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->lastConversationId:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 284
    :cond_11
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->lastConversationId:Ljava/lang/String;

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p2}, Lcom/google/android/apps/googlevoice/VoiceUri;->createConversationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 287
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->lastConversationIntent:Landroid/app/PendingIntent;

    .line 289
    .end local v0           #intent:Landroid/content/Intent;
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->lastConversationIntent:Landroid/app/PendingIntent;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v1

    .line 282
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4
    .parameter "context"

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->inboxIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1c

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->inboxIntent:Landroid/app/PendingIntent;

    .line 260
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1c
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->inboxIntent:Landroid/app/PendingIntent;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v1

    .line 254
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getNameFromContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Ljava/lang/String;
    .registers 3
    .parameter "contactInfo"

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getFormattedPhoneNumber()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getLocalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private declared-synchronized getNextIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"

    .prologue
    .line 273
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->nextIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_19

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/widget/WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.NEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->nextIntent:Landroid/app/PendingIntent;

    .line 278
    .end local v0           #intent:Landroid/content/Intent;
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->nextIntent:Landroid/app/PendingIntent;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v1

    .line 273
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getPendingIndentForActivity(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 398
    .local p2, activity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 293
    const/4 v0, 0x0

    const/high16 v1, 0x800

    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getPrevIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->prevIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_19

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/widget/WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.PREV"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->prevIntent:Landroid/app/PendingIntent;

    .line 269
    .end local v0           #intent:Landroid/content/Intent;
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->prevIntent:Landroid/app/PendingIntent;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v1

    .line 264
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setButtonsIntents(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 6
    .parameter "context"
    .parameter "views"
    .parameter "state"

    .prologue
    .line 307
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_header_icon:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 308
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_header_text:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 309
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_compose:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getComposeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 310
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_icon:I

    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getCallSettingsIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 312
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getCallSettingsIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 314
    return-void
.end method

.method private setButtonsIntentsSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 5
    .parameter "context"
    .parameter "views"

    .prologue
    .line 317
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 318
    return-void
.end method

.method private updateAccountBalance(Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 6
    .parameter "views"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 321
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getAccountBalance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->toStringNullEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, balance:Ljava/lang/String;
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_icon:I

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 323
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_text:I

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 324
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_text:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 325
    return-void
.end method

.method private updateAccountBalanceSignedOut(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    const/16 v1, 0x8

    .line 328
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_icon:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 329
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_balance_text:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 330
    return-void
.end method

.method private updateButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 6
    .parameter "context"
    .parameter "views"
    .parameter "state"

    .prologue
    .line 349
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_compose:I

    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->canComposeSms()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 350
    return-void

    .line 349
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method private updateButtonsSignedOut(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    .line 353
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 354
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_compose:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 355
    return-void
.end method

.method private updateCallingMode(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 6
    .parameter "context"
    .parameter "views"
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 333
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_icon:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 334
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 335
    invoke-interface {p3, p1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->hasTelephony(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->shouldInterceptCalls()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 336
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getCallingMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getCallingModeLabel(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 341
    :goto_24
    return-void

    .line 339
    :cond_25
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ALL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->getCallingModeLabel(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_24
.end method

.method private updateCallingModeSignedOut(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    const/16 v1, 0x8

    .line 344
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_icon:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 345
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_settings_text:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 346
    return-void
.end method

.method private updateInfoBar(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V
    .registers 4
    .parameter "context"
    .parameter "views"
    .parameter "state"

    .prologue
    .line 297
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->updateAccountBalance(Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 298
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->updateCallingMode(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/google/android/apps/googlevoice/widget/WidgetState;)V

    .line 299
    return-void
.end method

.method private updateInfoBarSignedOut(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 3
    .parameter "context"
    .parameter "views"

    .prologue
    .line 302
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->updateAccountBalanceSignedOut(Landroid/widget/RemoteViews;)V

    .line 303
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->updateCallingModeSignedOut(Landroid/widget/RemoteViews;)V

    .line 304
    return-void
.end method


# virtual methods
.method public render(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 7
    .parameter "context"
    .parameter "widgetState"
    .parameter "voicePreferences"

    .prologue
    .line 72
    invoke-static {p3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSignedIn(Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->createIntegratedViews(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 78
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    :goto_a
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    const-class v2, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedProviderForPreHoneycomb;

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->updateViews(Ljava/lang/Class;Landroid/widget/RemoteViews;)V

    .line 79
    return-void

    .line 75
    .end local v0           #remoteViews:Landroid/widget/RemoteViews;
    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetIntegratedRendererPreHoneycomb;->createIntegratedViewsSignedOut(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .restart local v0       #remoteViews:Landroid/widget/RemoteViews;
    goto :goto_a
.end method

.method public setAppWidgetIds([I)V
    .registers 2
    .parameter "appWidgetIds"

    .prologue
    .line 404
    return-void
.end method
