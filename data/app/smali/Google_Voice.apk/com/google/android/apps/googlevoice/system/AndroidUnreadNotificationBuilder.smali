.class public Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;
.super Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;
.source "AndroidUnreadNotificationBuilder.java"


# static fields
.field private static final LATEST_FIRST_CALL_START_TIME_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_BREAKING_SPACE:C = '\u00a0'


# instance fields
.field private final newlyArrivedCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

.field private final unreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

.field private final unreadCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->COMPARATOR:Ljava/util/Comparator;

    sput-object v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->LATEST_FIRST_CALL_START_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences;[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)V
    .registers 8
    .parameter "context"
    .parameter "voicePreferences"
    .parameter "unreadCalls"
    .parameter "newlyArrivedCalls"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/system/AndroidNotificationBuilder;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 63
    array-length v0, p3

    iput v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->unreadCount:I

    .line 64
    iget v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->unreadCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_25

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_25
    invoke-virtual {p3}, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->clone()Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    .line 68
    .restart local p3
    sget-object v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->LATEST_FIRST_CALL_START_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 69
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->unreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    .line 70
    invoke-virtual {p4}, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->clone()Ljava/lang/Object;

    move-result-object p4

    .end local p4
    check-cast p4, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    .line 71
    .restart local p4
    sget-object v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->LATEST_FIRST_CALL_START_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 72
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->newlyArrivedCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    .line 73
    return-void
.end method

.method private createContentIntent()Landroid/app/PendingIntent;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->unreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->areCallsFromSameConversation([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 184
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->unreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    aget-object v2, v2, v4

    iget-object v0, v2, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->conversationId:Ljava/lang/String;

    .line 185
    .local v0, conversationId:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    const-class v3, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v1, notificationIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoiceUri;->createConversationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 193
    .end local v0           #conversationId:Ljava/lang/String;
    :goto_1f
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    const/high16 v3, 0x800

    invoke-static {v2, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    .line 190
    .end local v1           #notificationIntent:Landroid/content/Intent;
    :cond_2d
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    const-class v3, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .restart local v1       #notificationIntent:Landroid/content/Intent;
    const-string v2, "com.google.android.apps.googlevoice.ConversationListActivity.LABEL"

    const-string v3, "inbox"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1f
.end method


# virtual methods
.method protected setEventInfo()V
    .registers 21

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->unreadCount:I

    const/4 v14, 0x2

    if-ge v13, v14, :cond_4d

    .line 107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->unreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    const/4 v14, 0x0

    aget-object v8, v13, v14

    .line 108
    .local v8, latestCall:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    iget-object v9, v8, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->contact:Ljava/lang/String;

    .line 109
    .local v9, latestCallContact:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    sget v14, Lcom/google/android/apps/googlevoice/R$string;->unread_notification_info_single_item_title:I

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->getTypeName(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v9, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, contentTitle:Ljava/lang/String;
    iget-object v13, v8, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->text:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/apps/googlevoice/VoiceUtil;->toStringNullEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .end local v8           #latestCall:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .end local v9           #latestCallContact:Ljava/lang/String;
    .local v3, contentText:Ljava/lang/String;
    :goto_3d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->createContentIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 172
    .local v2, contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    invoke-virtual {v13, v14, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 173
    return-void

    .line 118
    .end local v2           #contentIntent:Landroid/app/PendingIntent;
    .end local v3           #contentText:Ljava/lang/String;
    .end local v4           #contentTitle:Ljava/lang/String;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/google/android/apps/googlevoice/R$plurals;->unread_notification_info_multiple_items_title:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->unreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    array-length v15, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->unreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 128
    .restart local v4       #contentTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    sget v14, Lcom/google/android/apps/googlevoice/R$string;->unread_notification_info_list_entry_delimiter:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xa0

    const/16 v15, 0x20

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 131
    .local v12, typeDelimiter:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v11, result:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->unreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    invoke-static {v13}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->groupCallsByType([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_9e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 134
    .local v1, calls:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;"
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_b3

    .line 135
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_b3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    .line 139
    .local v5, firstCall:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_fd

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget-object v14, v5, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    invoke-static {v14}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->getLowerCaseTypeName(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)I

    move-result v14

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    .line 151
    .local v10, quantityAndTypeText:Ljava/lang/String;
    :goto_da
    iget-object v6, v5, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->contact:Ljava/lang/String;

    .line 152
    .local v6, firstCallContact:Ljava/lang/String;
    if-eqz v6, :cond_135

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->isCallsFromSameContact(Ljava/util/Collection;)Z

    move-result v13

    if-eqz v13, :cond_135

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    sget v14, Lcom/google/android/apps/googlevoice/R$string;->unread_notification_info_list_entry_with_contact_format:I

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v6, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 144
    .end local v6           #firstCallContact:Ljava/lang/String;
    .end local v10           #quantityAndTypeText:Ljava/lang/String;
    :cond_fd
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    sget v14, Lcom/google/android/apps/googlevoice/R$string;->unread_notification_info_quantity_and_type_format:I

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    iget-object v0, v5, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->getLowerCaseTypeName(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)I

    move-result v18

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #quantityAndTypeText:Ljava/lang/String;
    goto :goto_da

    .line 159
    .restart local v6       #firstCallContact:Ljava/lang/String;
    :cond_135
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9e

    .line 165
    .end local v1           #calls:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;"
    .end local v5           #firstCall:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .end local v6           #firstCallContact:Ljava/lang/String;
    .end local v10           #quantityAndTypeText:Ljava/lang/String;
    :cond_13a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_14d

    .line 166
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v14

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 168
    :cond_14d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #contentText:Ljava/lang/String;
    goto/16 :goto_3d
.end method

.method protected setNotificationStyle()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->newlyArrivedCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    array-length v0, v0

    if-lez v0, :cond_c

    .line 206
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->notification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->setSoundAndVibrate(Landroid/app/Notification;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 208
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->notification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->setFlashLights(Landroid/app/Notification;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 209
    return-void
.end method

.method protected setTickerText()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 78
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->newlyArrivedCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    array-length v4, v4

    if-nez v4, :cond_d

    .line 79
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->notification:Landroid/app/Notification;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 98
    :goto_c
    return-void

    .line 83
    :cond_d
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->newlyArrivedCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    aget-object v0, v4, v9

    .line 84
    .local v0, latestCall:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    iget-object v2, v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->text:Ljava/lang/String;

    .line 85
    .local v2, latestCallText:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->getLowerCaseTypeName(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)I

    move-result v5

    invoke-virtual {v4, v5, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, latestCallTypeTextLowerCase:Ljava/lang/String;
    iget-object v1, v0, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->contact:Ljava/lang/String;

    .line 89
    .local v1, latestCallContactInfoText:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->notification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_56

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->unread_notification_ticker_format_with_text:I

    :goto_35
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_c

    :cond_56
    sget v4, Lcom/google/android/apps/googlevoice/R$string;->unread_notification_ticker_format_without_text:I

    goto :goto_35
.end method
