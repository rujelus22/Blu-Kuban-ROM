.class public Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;
.super Ljava/lang/Object;
.source "AndroidWidgetInboxRenderer.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;


# instance fields
.field private cachedWidgetInboxDefaultContactPhoto:Landroid/graphics/Bitmap;

.field private inboxIntent:Landroid/app/PendingIntent;

.field private lastConversationId:Ljava/lang/String;

.field private lastConversationIntent:Landroid/app/PendingIntent;

.field private nextIntent:Landroid/app/PendingIntent;

.field private prevIntent:Landroid/app/PendingIntent;

.field private final widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/widget/WidgetManager;)V
    .registers 2
    .parameter "widgetManager"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    .line 55
    return-void
.end method

.method private createInboxViews(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/widget/RemoteViews;
    .registers 17
    .parameter "context"
    .parameter "state"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    sget v1, Lcom/google/android/apps/googlevoice/R$layout;->widget_inbox_layout:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->getRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 70
    .local v2, views:Landroid/widget/RemoteViews;
    invoke-interface/range {p2 .. p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getUnreadCount()I

    move-result v10

    .line 71
    .local v10, unreadCount:I
    invoke-interface/range {p2 .. p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getTotalCount()I

    move-result v9

    .line 72
    .local v9, totalCount:I
    if-nez v9, :cond_2a

    .line 73
    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->disableLeftArrow(Landroid/widget/RemoteViews;)V

    .line 74
    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->disableRightArrow(Landroid/widget/RemoteViews;)V

    .line 77
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_inbox_preview_no_messages:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->setInboxPreview(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;ZLcom/google/android/apps/googlevoice/core/ContactInfo;Landroid/app/PendingIntent;)V

    .line 131
    :goto_29
    return-object v2

    .line 80
    :cond_2a
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_title:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->widget_inbox_title_unread:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v4, v12

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 82
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_title:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 85
    invoke-interface/range {p2 .. p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->isFirstMessage()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 86
    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->disableLeftArrow(Landroid/widget/RemoteViews;)V

    .line 91
    :goto_51
    invoke-interface/range {p2 .. p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->isLastMessage()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 92
    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->disableRightArrow(Landroid/widget/RemoteViews;)V

    .line 99
    :goto_5a
    const/4 v5, 0x0

    .line 100
    .local v5, contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    const/4 v6, 0x0

    .line 102
    .local v6, intent:Landroid/app/PendingIntent;
    invoke-interface/range {p2 .. p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getCurrentConversation()Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v7

    .line 103
    .local v7, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-interface/range {p2 .. p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getCurrentConversationIndex()I

    move-result v8

    .line 104
    .local v8, currentConversationIndex:I
    if-eqz v7, :cond_c2

    .line 105
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v5

    .line 106
    invoke-direct {p0, p1, v7}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->getInboxWidgetPreviewText(Landroid/content/Context;Lcom/google/android/apps/googlevoice/core/Conversation;)Landroid/text/Spanned;

    move-result-object v3

    .line 107
    .local v3, preview:Landroid/text/Spanned;
    if-nez v3, :cond_7a

    .line 108
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_inbox_no_preview:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 110
    :cond_7a
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v0

    if-nez v0, :cond_95

    .line 111
    new-instance v11, Landroid/text/SpannableString;

    invoke-direct {v11, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 112
    .local v11, unreadPreview:Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    const/4 v12, 0x0

    invoke-virtual {v11, v0, v1, v4, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 113
    move-object v3, v11

    .line 115
    .end local v11           #unreadPreview:Landroid/text/SpannableString;
    :cond_95
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->getConversationIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 117
    add-int/lit8 v0, v8, 0x1

    invoke-interface/range {p2 .. p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getTotalCount()I

    move-result v1

    if-ge v0, v1, :cond_b2

    invoke-interface/range {p2 .. p2}, Lcom/google/android/apps/googlevoice/widget/WidgetState;->getNextConversation()Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    if-nez v0, :cond_b2

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    add-int/lit8 v1, v8, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->loadMessage(I)V

    .line 128
    :cond_b2
    :goto_b2
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->setInboxPreview(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/text/Spanned;ZLcom/google/android/apps/googlevoice/core/ContactInfo;Landroid/app/PendingIntent;)V

    goto/16 :goto_29

    .line 88
    .end local v3           #preview:Landroid/text/Spanned;
    .end local v5           #contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    .end local v6           #intent:Landroid/app/PendingIntent;
    .end local v7           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v8           #currentConversationIndex:I
    :cond_ba
    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->enableLeftArrow(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto :goto_51

    .line 94
    :cond_be
    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->enableRightArrow(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto :goto_5a

    .line 123
    .restart local v5       #contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    .restart local v6       #intent:Landroid/app/PendingIntent;
    .restart local v7       #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .restart local v8       #currentConversationIndex:I
    :cond_c2
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_inbox_preview_loading:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 125
    .restart local v3       #preview:Landroid/text/Spanned;
    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->disableRightArrow(Landroid/widget/RemoteViews;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    invoke-interface {v0, v8}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->loadMessage(I)V

    goto :goto_b2
.end method

.method private createInboxViewsSignedOut(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 10
    .parameter "context"

    .prologue
    const/16 v7, 0x8

    .line 286
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    sget v1, Lcom/google/android/apps/googlevoice/R$layout;->widget_inbox_layout:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->getRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 289
    .local v2, views:Landroid/widget/RemoteViews;
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_title:I

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->widget_inbox_title_signed_out:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 291
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_title:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 294
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->widget_inbox_preview_signed_out:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->setInboxPreview(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;ZLcom/google/android/apps/googlevoice/core/ContactInfo;Landroid/app/PendingIntent;)V

    .line 298
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_left:I

    invoke-virtual {v2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 299
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_right:I

    invoke-virtual {v2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 300
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_contact_photo:I

    invoke-virtual {v2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 302
    return-object v2
.end method

.method private disableLeftArrow(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    .line 155
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_left:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_inbox_arrow_left_disabled:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 157
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_left:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 158
    return-void
.end method

.method private disableRightArrow(Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "views"

    .prologue
    .line 149
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_right:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_inbox_arrow_right_disabled:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 151
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_right:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 152
    return-void
.end method

.method private enableLeftArrow(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 5
    .parameter "context"
    .parameter "views"

    .prologue
    .line 142
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_left:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 143
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_left:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_inbox_arrow_left_selector:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 145
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_left:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->getPrevIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 146
    return-void
.end method

.method private enableRightArrow(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 5
    .parameter "context"
    .parameter "views"

    .prologue
    .line 135
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_right:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 136
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_right:I

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->widget_inbox_arrow_right_selector:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 138
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_arrow_right:I

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->getNextIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 139
    return-void
.end method

.method private declared-synchronized getConversationIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"
    .parameter "conversationId"

    .prologue
    .line 334
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->lastConversationIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->lastConversationId:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->lastConversationId:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 337
    :cond_11
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->lastConversationId:Ljava/lang/String;

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p2}, Lcom/google/android/apps/googlevoice/VoiceUri;->createConversationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 340
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->lastConversationIntent:Landroid/app/PendingIntent;

    .line 342
    .end local v0           #intent:Landroid/content/Intent;
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->lastConversationIntent:Landroid/app/PendingIntent;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v1

    .line 334
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getDefaultContactPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "context"

    .prologue
    .line 263
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->cachedWidgetInboxDefaultContactPhoto:Landroid/graphics/Bitmap;

    if-nez v1, :cond_17

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$drawable;->widget_inbox_default_contact_photo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 267
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->cachedWidgetInboxDefaultContactPhoto:Landroid/graphics/Bitmap;

    .line 269
    .end local v0           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->cachedWidgetInboxDefaultContactPhoto:Landroid/graphics/Bitmap;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v1

    .line 263
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getInboxIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4
    .parameter "context"

    .prologue
    .line 306
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->inboxIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1c

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->inboxIntent:Landroid/app/PendingIntent;

    .line 312
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1c
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->inboxIntent:Landroid/app/PendingIntent;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v1

    .line 306
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getInboxWidgetPreviewText(Landroid/content/Context;Lcom/google/android/apps/googlevoice/core/Conversation;)Landroid/text/Spanned;
    .registers 11
    .parameter "context"
    .parameter "conversation"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v0

    .line 167
    .local v0, contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLastPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v2

    .line 168
    .local v2, lastPhoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-eqz v0, :cond_10

    if-nez v2, :cond_11

    .line 214
    :cond_10
    :goto_10
    :pswitch_10
    return-object v3

    .line 171
    :cond_11
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, contactName:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->getNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_a4

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown phone call type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_10

    .line 174
    :pswitch_3b
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->widget_inbox_preview_missed_call:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    goto :goto_10

    .line 178
    :pswitch_4a
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getTranscript()Lcom/google/android/apps/googlevoice/core/Transcript;

    move-result-object v3

    if-nez v3, :cond_5f

    .line 179
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->widget_inbox_preview_voicemail_without_transcript:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    goto :goto_10

    .line 183
    :cond_5f
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->widget_inbox_preview_voicemail_with_transcript:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getTranscript()Lcom/google/android/apps/googlevoice/core/Transcript;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Transcript;->getText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    goto :goto_10

    .line 189
    :pswitch_78
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->widget_inbox_preview_text_message_in:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    goto :goto_10

    .line 194
    :pswitch_8d
    sget v3, Lcom/google/android/apps/googlevoice/R$string;->widget_inbox_preview_text_message_out:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    goto/16 :goto_10

    .line 172
    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_10
        :pswitch_4a
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_78
        :pswitch_8d
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private declared-synchronized getNextIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"

    .prologue
    .line 325
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->nextIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_19

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/widget/WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.NEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->nextIntent:Landroid/app/PendingIntent;

    .line 330
    .end local v0           #intent:Landroid/content/Intent;
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->nextIntent:Landroid/app/PendingIntent;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v1

    .line 325
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getPendingIndentForActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 349
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
    .line 316
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->prevIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_19

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/widget/WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.PREV"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->prevIntent:Landroid/app/PendingIntent;

    .line 321
    .end local v0           #intent:Landroid/content/Intent;
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->prevIntent:Landroid/app/PendingIntent;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v1

    .line 316
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setInboxPreview(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/text/Spanned;ZLcom/google/android/apps/googlevoice/core/ContactInfo;Landroid/app/PendingIntent;)V
    .registers 12
    .parameter "context"
    .end parameter
    .parameter "views"
    .end parameter
    .parameter "previewText"
    .end parameter
    .parameter "showContact"
    .end parameter
    .parameter "contactInfo"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "intent"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 234
    if-nez p6, :cond_1f

    .line 236
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_preview_box:I

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 237
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_preview_box_no_action:I

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 239
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_preview_no_action:I

    .line 240
    .local v1, preview:I
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_contact_photo_no_action:I

    .line 252
    .local v0, contactPhoto:I
    :goto_13
    invoke-virtual {p2, v1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 254
    if-eqz p4, :cond_33

    .line 255
    invoke-direct {p0, p2, p1, v0, p5}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->setInboxWidgetContactPhoto(Landroid/widget/RemoteViews;Landroid/content/Context;ILcom/google/android/apps/googlevoice/core/ContactInfo;)V

    .line 256
    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 260
    :goto_1e
    return-void

    .line 243
    .end local v0           #contactPhoto:I
    .end local v1           #preview:I
    :cond_1f
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_preview_box_no_action:I

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 244
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_preview_box:I

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 246
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_preview:I

    .line 247
    .restart local v1       #preview:I
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_contact_photo:I

    .line 249
    .restart local v0       #contactPhoto:I
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->widget_inbox_preview_box:I

    invoke-virtual {p2, v2, p6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_13

    .line 258
    :cond_33
    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1e
.end method

.method private setInboxPreview(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;ZLcom/google/android/apps/googlevoice/core/ContactInfo;Landroid/app/PendingIntent;)V
    .registers 14
    .parameter "context"
    .end parameter
    .parameter "views"
    .end parameter
    .parameter "previewText"
    .end parameter
    .parameter "showContact"
    .end parameter
    .parameter "contactInfo"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "intent"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 221
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->setInboxPreview(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/text/Spanned;ZLcom/google/android/apps/googlevoice/core/ContactInfo;Landroid/app/PendingIntent;)V

    .line 222
    return-void
.end method

.method private setInboxWidgetContactPhoto(Landroid/widget/RemoteViews;Landroid/content/Context;ILcom/google/android/apps/googlevoice/core/ContactInfo;)V
    .registers 7
    .parameter "views"
    .end parameter
    .parameter "context"
    .end parameter
    .parameter "contactPhoto"
    .end parameter
    .parameter "contactInfo"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 275
    if-nez p4, :cond_a

    .line 276
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->getDefaultContactPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_6
    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 283
    return-void

    .line 278
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_a
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->getDefaultContactPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p2, p4, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getPhotoForContactInfo(Landroid/content/Context;Lcom/google/android/apps/googlevoice/core/ContactInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_6
.end method


# virtual methods
.method public render(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 7
    .parameter "context"
    .parameter "widgetState"
    .parameter "voicePreferences"

    .prologue
    .line 60
    invoke-static {p3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSignedIn(Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->createInboxViews(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 65
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    :goto_a
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->widgetManager:Lcom/google/android/apps/googlevoice/widget/WidgetManager;

    const-class v2, Lcom/google/android/apps/googlevoice/widget/WidgetInboxProvider;

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/googlevoice/widget/WidgetManager;->updateViews(Ljava/lang/Class;Landroid/widget/RemoteViews;)V

    .line 66
    return-void

    .line 63
    .end local v0           #remoteViews:Landroid/widget/RemoteViews;
    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetInboxRenderer;->createInboxViewsSignedOut(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .restart local v0       #remoteViews:Landroid/widget/RemoteViews;
    goto :goto_a
.end method

.method public setAppWidgetIds([I)V
    .registers 2
    .parameter "appWidgetIds"

    .prologue
    .line 353
    return-void
.end method
