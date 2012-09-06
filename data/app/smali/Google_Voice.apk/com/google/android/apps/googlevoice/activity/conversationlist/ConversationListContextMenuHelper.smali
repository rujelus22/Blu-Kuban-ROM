.class public Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;
.super Ljava/lang/Object;
.source "ConversationListContextMenuHelper.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/ContextMenuHelper;


# static fields
.field public static final ID_CONTEXT_MENU_ADD_CONTACT:I = 0xd6

.field public static final ID_CONTEXT_MENU_ARCHIVE:I = 0xcd

.field public static final ID_CONTEXT_MENU_CALL:I = 0xc9

.field public static final ID_CONTEXT_MENU_DELETE:I = 0xcb

.field public static final ID_CONTEXT_MENU_MARK_NOT_SPAM:I = 0xd4

.field public static final ID_CONTEXT_MENU_MARK_NOT_STARRED:I = 0xd2

.field public static final ID_CONTEXT_MENU_MARK_READ:I = 0xcf

.field public static final ID_CONTEXT_MENU_MARK_SPAM:I = 0xd3

.field public static final ID_CONTEXT_MENU_MARK_STARRED:I = 0xd1

.field public static final ID_CONTEXT_MENU_MARK_UNREAD:I = 0xd0

.field public static final ID_CONTEXT_MENU_OPEN:I = 0xc8

.field public static final ID_CONTEXT_MENU_RESTORE:I = 0xce

.field public static final ID_CONTEXT_MENU_SMS:I = 0xca

.field public static final ID_CONTEXT_MENU_UNDELETE:I = 0xcc

.field public static final ID_CONTEXT_MENU_VIEW_CONTACT:I = 0xd5

.field private static final LOG:Lcom/google/android/apps/common/log/GLog;


# instance fields
.field private final activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

.field private final adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

.field private final contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

.field private conversationId:Ljava/lang/String;

.field private final eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

.field private final labelName:Ljava/lang/String;

.field private final localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

.field private final provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

.field private final serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->LOG:Lcom/google/android/apps/common/log/GLog;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;Lcom/google/android/apps/googlevoice/model/LocalModelView;Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;Lcom/google/android/apps/googlevoice/ServiceManager;Lcom/google/android/apps/googlevoice/service/ActivityProxy;Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;Ljava/lang/String;Lcom/google/android/apps/googlevoice/net/EventLogger;)V
    .registers 9
    .parameter "adapter"
    .parameter "localModelView"
    .parameter "provider"
    .parameter "serviceManager"
    .parameter "activityHelper"
    .parameter "contactApiHelper"
    .parameter "labelName"
    .parameter "eventLogger"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    .line 80
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    .line 81
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    .line 82
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    .line 83
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    .line 84
    iput-object p6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    .line 85
    iput-object p7, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->labelName:Ljava/lang/String;

    .line 86
    iput-object p8, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    .line 87
    return-void
.end method

.method private getLogActionForItem(I)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    .registers 3
    .parameter "itemId"

    .prologue
    .line 279
    packed-switch p1, :pswitch_data_c

    .line 287
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 281
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_OPEN_CONVERSATION:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 284
    :pswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_DELETE_CONVERSATION:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 279
    nop

    :pswitch_data_c
    .packed-switch 0xc8
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method private logContextMenuAction(Landroid/view/MenuItem;)V
    .registers 8
    .parameter "item"

    .prologue
    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->getLogActionForItem(I)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    move-result-object v0

    .line 266
    .local v0, action:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    if-eqz v0, :cond_1a

    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 270
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->labelName:Ljava/lang/String;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v5, 0x1

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/google/android/apps/googlevoice/net/EventLogger;->submitWithLabelPositionAndCount(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;Ljava/lang/String;II)V

    .line 272
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1a
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 159
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->conversationId:Ljava/lang/String;

    if-nez v6, :cond_f

    .line 160
    sget-object v5, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v6, "onContextItemSelected: No conversation id"

    invoke-interface {v5, v6}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 255
    :goto_e
    return v4

    .line 164
    :cond_f
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->conversationId:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v1

    .line 165
    .local v1, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-nez v1, :cond_21

    .line 166
    sget-object v5, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v6, "onContextItemSelected: No conversation"

    invoke-interface {v5, v6}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    goto :goto_e

    .line 170
    :cond_21
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v0

    .line 171
    .local v0, contact:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->logContextMenuAction(Landroid/view/MenuItem;)V

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_130

    goto :goto_e

    .line 178
    :pswitch_38
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->getDelegate()Landroid/app/Activity;

    move-result-object v4

    const-class v6, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->conversationId:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/VoiceUri;->createConversationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 180
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v4, v2}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 181
    goto :goto_e

    .line 184
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_55
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    const-string v6, "tel"

    invoke-static {v6, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v4, v2}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 186
    goto :goto_e

    .line 189
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_69
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v6, "smsto"

    invoke-static {v6, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 190
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v4, v2}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 191
    goto :goto_e

    .line 194
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_7d
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v4, v1, v5}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsDeleted(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 195
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    move v4, v5

    .line 196
    goto :goto_e

    .line 199
    :pswitch_89
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v6, v1, v4}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsDeleted(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 200
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    move v4, v5

    .line 201
    goto/16 :goto_e

    .line 204
    :pswitch_96
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v4, v1, v5}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsArchived(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 205
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    move v4, v5

    .line 206
    goto/16 :goto_e

    .line 209
    :pswitch_a3
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v6, v1, v4}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsArchived(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 210
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    move v4, v5

    .line 211
    goto/16 :goto_e

    .line 214
    :pswitch_b0
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v4, v6, v1, v5}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->markConversationAsRead(Lcom/google/android/apps/googlevoice/model/LocalModelView;Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 215
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    move v4, v5

    .line 216
    goto/16 :goto_e

    .line 219
    :pswitch_bf
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v6, v7, v1, v4}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->markConversationAsRead(Lcom/google/android/apps/googlevoice/model/LocalModelView;Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 220
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    move v4, v5

    .line 221
    goto/16 :goto_e

    .line 224
    :pswitch_ce
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v4, v1, v5}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsStarred(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 225
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    move v4, v5

    .line 226
    goto/16 :goto_e

    .line 229
    :pswitch_db
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v6, v1, v4}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsStarred(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 230
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    move v4, v5

    .line 231
    goto/16 :goto_e

    .line 234
    :pswitch_e8
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v4, v1, v5}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsSpam(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 235
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    move v4, v5

    .line 236
    goto/16 :goto_e

    .line 239
    :pswitch_f5
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v6, v1, v4}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsSpam(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 240
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    move v4, v5

    .line 241
    goto/16 :goto_e

    .line 244
    :pswitch_102
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->hasLocalContact()Z

    move-result v4

    if-eqz v4, :cond_11e

    .line 245
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    invoke-interface {v6, v0}, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;->uriForContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v4, v2}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->startActivity(Landroid/content/Intent;)V

    .end local v2           #intent:Landroid/content/Intent;
    :cond_11e
    move v4, v5

    .line 248
    goto/16 :goto_e

    .line 251
    :pswitch_121
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    invoke-interface {v6, v0}, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;->insertIntentForContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 252
    goto/16 :goto_e

    .line 176
    nop

    :pswitch_data_130
    .packed-switch 0xc8
        :pswitch_38
        :pswitch_55
        :pswitch_69
        :pswitch_7d
        :pswitch_89
        :pswitch_96
        :pswitch_a3
        :pswitch_b0
        :pswitch_bf
        :pswitch_ce
        :pswitch_db
        :pswitch_e8
        :pswitch_f5
        :pswitch_102
        :pswitch_121
    .end packed-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->conversationId:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 12
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 92
    move-object v1, p3

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 93
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->getConversation(I)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 94
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v0, :cond_7d

    .line 97
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->conversationId:Ljava/lang/String;

    .line 99
    sget v5, Lcom/google/android/apps/googlevoice/R$string;->conversation_context_menu_title:I

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 100
    const/4 v3, 0x1

    .line 103
    .local v3, order:I
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->isLocalConversation(Ljava/lang/String;)Z

    move-result v2

    .line 107
    .local v2, isOnlyLocalConversation:Z
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_3e

    if-nez v2, :cond_3e

    .line 108
    const-string v5, "inbox"

    invoke-virtual {v0, v5}, Lcom/google/android/apps/googlevoice/core/Conversation;->hasLabel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 109
    const/16 v5, 0xcd

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .local v4, order:I
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->conversation_context_menu_archive:I

    invoke-interface {p1, v7, v5, v3, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move v3, v4

    .line 118
    .end local v4           #order:I
    .restart local v3       #order:I
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_95

    .line 119
    const/16 v5, 0xcb

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .restart local v4       #order:I
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->conversation_context_menu_delete:I

    invoke-interface {p1, v7, v5, v3, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 126
    :goto_4d
    if-nez v2, :cond_7d

    .line 128
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->isStarred()Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 129
    const/16 v5, 0xd2

    add-int/lit8 v3, v4, 0x1

    .end local v4           #order:I
    .restart local v3       #order:I
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->conversation_context_menu_mark_not_starred:I

    invoke-interface {p1, v7, v5, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 137
    :goto_5e
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 138
    const/16 v5, 0xd0

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .restart local v4       #order:I
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->conversation_context_menu_mark_unread:I

    invoke-interface {p1, v7, v5, v3, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move v3, v4

    .line 146
    .end local v4           #order:I
    .restart local v3       #order:I
    :goto_6e
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->isSpam()Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 147
    const/16 v5, 0xd4

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .restart local v4       #order:I
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->conversation_context_menu_mark_not_spam:I

    invoke-interface {p1, v7, v5, v3, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 155
    .end local v2           #isOnlyLocalConversation:Z
    .end local v4           #order:I
    :cond_7d
    :goto_7d
    return-void

    .line 111
    .restart local v2       #isOnlyLocalConversation:Z
    .restart local v3       #order:I
    :cond_7e
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Label;->isMoveToInboxAvailable()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 112
    const/16 v5, 0xce

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .restart local v4       #order:I
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->conversation_context_menu_restore:I

    invoke-interface {p1, v7, v5, v3, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move v3, v4

    .end local v4           #order:I
    .restart local v3       #order:I
    goto :goto_3e

    .line 122
    :cond_95
    const/16 v5, 0xcc

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .restart local v4       #order:I
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->conversation_context_menu_undelete:I

    invoke-interface {p1, v7, v5, v3, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_4d

    .line 132
    :cond_9f
    const/16 v5, 0xd1

    add-int/lit8 v3, v4, 0x1

    .end local v4           #order:I
    .restart local v3       #order:I
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->conversation_context_menu_mark_starred:I

    invoke-interface {p1, v7, v5, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_5e

    .line 141
    :cond_a9
    const/16 v5, 0xcf

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .restart local v4       #order:I
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->conversation_context_menu_mark_read:I

    invoke-interface {p1, v7, v5, v3, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move v3, v4

    .end local v4           #order:I
    .restart local v3       #order:I
    goto :goto_6e

    .line 150
    :cond_b4
    const/16 v5, 0xd3

    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .restart local v4       #order:I
    sget v6, Lcom/google/android/apps/googlevoice/R$string;->conversation_context_menu_mark_spam:I

    invoke-interface {p1, v7, v5, v3, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_7d
.end method
