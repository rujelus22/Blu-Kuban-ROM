.class Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;
.super Ljava/lang/Object;
.source "WidgetIntegratedService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleVoiceViewsFactory"
.end annotation


# static fields
.field private static final MAX_CONVERSATION_COUNT:I = 0x1e


# instance fields
.field private final clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private final colorTextRead:I

.field private final colorTextUnread:I

.field private final context:Landroid/content/Context;

.field private conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService;

.field private final versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private final widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService;Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/apps/googlevoice/widget/WidgetState;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/system/VersionHelper;)V
    .registers 10
    .parameter
    .parameter "context"
    .parameter "intent"
    .parameter "widgetState"
    .parameter "voiceModel"
    .parameter "clockUtils"
    .parameter "versionHelper"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->this$0:Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->context:Landroid/content/Context;

    .line 63
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    .line 64
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 65
    iput-object p6, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 66
    iput-object p7, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    .line 67
    invoke-interface {p4}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 68
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$color;->color_widget_text_unread:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->colorTextRead:I

    .line 69
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$color;->color_widget_text_unread:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->colorTextUnread:I

    .line 70
    return-void
.end method

.method private getInboxIntent()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->context:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneCallListIntent(I)Landroid/content/Intent;
    .registers 5
    .parameter "position"

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->context:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoiceUri;->createConversationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 228
    return-object v0
.end method

.method private getReadMoreView(I)Landroid/widget/RemoteViews;
    .registers 6
    .parameter "position"

    .prologue
    .line 207
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$layout;->widget_integrated_conversation_loading:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 209
    .local v0, readMoreView:Landroid/widget/RemoteViews;
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->loading_text:I

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->conversation_view_more:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 212
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_integrated_loading:I

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->getInboxIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 213
    return-object v0
.end method

.method private hasMoreConversations()Z
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getTotalCount()I

    move-result v1

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private initView(Landroid/widget/RemoteViews;)V
    .registers 5
    .parameter "view"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x4

    .line 98
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_type_sms:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_call_type_voicemail:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 100
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_date_read:I

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 101
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_date_unread:I

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 102
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_date_read:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 103
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_date_unread:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 104
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_text:I

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 105
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_senders:I

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 106
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_read_background:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 107
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_unread_background:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsIcsOrLater()Z

    move-result v0

    if-nez v0, :cond_52

    .line 109
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_photo:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 110
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_photo:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_inbox_default_contact_photo:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 112
    :cond_52
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    if-nez v0, :cond_6

    .line 75
    const/4 v0, 0x0

    .line 79
    :goto_5
    return v0

    .line 76
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    array-length v0, v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1d

    .line 77
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->hasMoreConversations()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    array-length v0, v0

    goto :goto_5

    .line 79
    :cond_1d
    const/16 v0, 0x1f

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 5

    .prologue
    .line 90
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$layout;->widget_integrated_conversation_loading:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 92
    .local v0, view:Landroid/widget/RemoteViews;
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->loading_text:I

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->widget_inbox_preview_loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 94
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 18
    .parameter "position"

    .prologue
    .line 116
    new-instance v9, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    sget v11, Lcom/google/android/apps/googlevoice/R$layout;->widget_integrated_conversation:I

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 119
    .local v9, view:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->initView(Landroid/widget/RemoteViews;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    if-nez v10, :cond_1b

    .line 203
    .end local v9           #view:Landroid/widget/RemoteViews;
    :cond_1a
    :goto_1a
    return-object v9

    .line 126
    .restart local v9       #view:Landroid/widget/RemoteViews;
    :cond_1b
    const/16 v10, 0x1e

    move/from16 v0, p1

    if-ge v0, v10, :cond_39

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    array-length v10, v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    array-length v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    invoke-interface {v11}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getTotalCount()I

    move-result v11

    if-ge v10, v11, :cond_3e

    .line 128
    :cond_39
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->getReadMoreView(I)Landroid/widget/RemoteViews;

    move-result-object v9

    goto :goto_1a

    .line 131
    :cond_3e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    array-length v10, v10

    move/from16 v0, p1

    if-lt v0, v10, :cond_4c

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v9

    goto :goto_1a

    .line 136
    :cond_4c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/core/Conversation;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v2

    .line 139
    .local v2, contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->hasLocalContact()Z

    move-result v10

    if-nez v10, :cond_67

    .line 140
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v10, v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v5

    .line 141
    .local v5, localContactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    if-eqz v5, :cond_67

    .line 142
    move-object v2, v5

    .line 147
    .end local v5           #localContactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    :cond_67
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_76

    .line 148
    sget v10, Lcom/google/android/apps/googlevoice/R$id;->widget_photo:I

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 152
    :cond_76
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getLocalName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_127

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getFormattedPhoneNumber()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, sender:Ljava/lang/String;
    :goto_80
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v1

    .line 156
    .local v1, calls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-eqz v1, :cond_1a

    array-length v10, v1

    if-eqz v10, :cond_1a

    .line 160
    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    aget-object v4, v1, v10

    .line 161
    .local v4, lastCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-eqz v4, :cond_1a

    .line 165
    const-string v6, ""

    .line 166
    .local v6, messageText:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isTextMessage()Z

    move-result v10

    if-eqz v10, :cond_12d

    .line 168
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageText()Ljava/lang/String;

    move-result-object v6

    .line 169
    sget v10, Lcom/google/android/apps/googlevoice/R$id;->widget_call_type_sms:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 178
    :goto_a8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v3

    .line 181
    .local v3, isRead:Z
    sget v11, Lcom/google/android/apps/googlevoice/R$id;->widget_date_read:I

    if-eqz v3, :cond_143

    const/4 v10, 0x0

    :goto_b7
    invoke-virtual {v9, v11, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 182
    sget v11, Lcom/google/android/apps/googlevoice/R$id;->widget_date_unread:I

    if-nez v3, :cond_147

    const/4 v10, 0x0

    :goto_bf
    invoke-virtual {v9, v11, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 183
    if-eqz v3, :cond_14b

    sget v10, Lcom/google/android/apps/googlevoice/R$id;->widget_date_read:I

    :goto_c6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->context:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v14}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v14

    invoke-static {v11, v12, v13, v14, v15}, Lcom/google/android/apps/googlevoice/VoiceUtil;->formatTime(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    sget v11, Lcom/google/android/apps/googlevoice/R$id;->widget_text:I

    if-eqz v3, :cond_14f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->colorTextRead:I

    :goto_e5
    invoke-virtual {v9, v11, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 189
    sget v10, Lcom/google/android/apps/googlevoice/R$id;->widget_text:I

    invoke-virtual {v9, v10, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 192
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 193
    .local v8, senderBuilder:Landroid/text/SpannableStringBuilder;
    if-eqz v3, :cond_154

    new-instance v10, Landroid/text/style/StyleSpan;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_fa
    const/4 v11, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 195
    sget v11, Lcom/google/android/apps/googlevoice/R$id;->widget_senders:I

    if-eqz v3, :cond_15b

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->colorTextRead:I

    :goto_10c
    invoke-virtual {v9, v11, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 196
    sget v10, Lcom/google/android/apps/googlevoice/R$id;->widget_senders:I

    invoke-virtual {v9, v10, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 199
    if-eqz v3, :cond_160

    sget v10, Lcom/google/android/apps/googlevoice/R$id;->widget_read_background:I

    :goto_118
    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    sget v10, Lcom/google/android/apps/googlevoice/R$id;->widget_conversation:I

    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->getPhoneCallListIntent(I)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto/16 :goto_1a

    .line 152
    .end local v1           #calls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v3           #isRead:Z
    .end local v4           #lastCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v6           #messageText:Ljava/lang/String;
    .end local v7           #sender:Ljava/lang/String;
    .end local v8           #senderBuilder:Landroid/text/SpannableStringBuilder;
    :cond_127
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getLocalName()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_80

    .line 172
    .restart local v1       #calls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .restart local v4       #lastCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .restart local v6       #messageText:Ljava/lang/String;
    .restart local v7       #sender:Ljava/lang/String;
    :cond_12d
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getTranscript()Lcom/google/android/apps/googlevoice/core/Transcript;

    move-result-object v10

    if-eqz v10, :cond_13b

    .line 173
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getTranscript()Lcom/google/android/apps/googlevoice/core/Transcript;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/core/Transcript;->getText()Ljava/lang/String;

    move-result-object v6

    .line 175
    :cond_13b
    sget v10, Lcom/google/android/apps/googlevoice/R$id;->widget_call_type_voicemail:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_a8

    .line 181
    .restart local v3       #isRead:Z
    :cond_143
    const/16 v10, 0x8

    goto/16 :goto_b7

    .line 182
    :cond_147
    const/16 v10, 0x8

    goto/16 :goto_bf

    .line 183
    :cond_14b
    sget v10, Lcom/google/android/apps/googlevoice/R$id;->widget_date_unread:I

    goto/16 :goto_c6

    .line 188
    :cond_14f
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->colorTextUnread:I

    goto :goto_e5

    .line 193
    .restart local v8       #senderBuilder:Landroid/text/SpannableStringBuilder;
    :cond_154
    new-instance v10, Landroid/text/style/StyleSpan;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_fa

    .line 195
    :cond_15b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->colorTextUnread:I

    goto :goto_10c

    .line 199
    :cond_160
    sget v10, Lcom/google/android/apps/googlevoice/R$id;->widget_unread_background:I

    goto :goto_118
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 248
    return-void
.end method

.method public onDataSetChanged()V
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetIntegratedService$GoogleVoiceViewsFactory;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 257
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 252
    return-void
.end method
