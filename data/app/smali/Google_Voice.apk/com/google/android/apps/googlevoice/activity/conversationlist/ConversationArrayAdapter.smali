.class public Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConversationArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$2;,
        Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;
    }
.end annotation


# instance fields
.field private final clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private final context:Landroid/content/Context;

.field private conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

.field private final photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;

.field private final serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

.field private final smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

.field private statusString:Ljava/lang/String;

.field private statusType:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/model/LocalModelView;Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;Lcom/google/android/apps/googlevoice/ServiceManager;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;)V
    .registers 8
    .parameter "context"
    .parameter "localModelView"
    .parameter "photoHandler"
    .parameter "serviceManager"
    .parameter "clockUtils"
    .parameter "smsOutboxManager"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/core/Conversation;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 60
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    .line 62
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 63
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 64
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;

    .line 65
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    .line 66
    iput-object p6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;)Lcom/google/android/apps/googlevoice/model/LocalModelView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;)Lcom/google/android/apps/googlevoice/ServiceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    return-object v0
.end method

.method private initializeConversationView(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;I)V
    .registers 30
    .parameter "view"
    .parameter "position"

    .prologue
    .line 146
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->getConversation(I)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v7

    .line 147
    .local v7, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->getPhoneCallsWithConversationId(Ljava/lang/String;)[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v6

    .line 149
    .local v6, calls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    array-length v0, v6

    move/from16 v24, v0

    if-lez v24, :cond_18a

    array-length v0, v6

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget-object v12, v6, v24

    .line 151
    .local v12, lastCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :goto_22
    sget v24, Lcom/google/android/apps/googlevoice/R$id;->conversation:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 152
    .local v9, conversationView:Landroid/widget/LinearLayout;
    sget v24, Lcom/google/android/apps/googlevoice/R$id;->status:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 153
    .local v18, statusView:Landroid/widget/LinearLayout;
    sget v24, Lcom/google/android/apps/googlevoice/R$id;->badge:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 154
    .local v5, badgeView:Landroid/widget/ImageView;
    sget v24, Lcom/google/android/apps/googlevoice/R$id;->name:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 155
    .local v15, nameView:Landroid/widget/TextView;
    sget v24, Lcom/google/android/apps/googlevoice/R$id;->count:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 156
    .local v11, countView:Landroid/widget/TextView;
    sget v24, Lcom/google/android/apps/googlevoice/R$id;->time:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 157
    .local v23, timeView:Landroid/widget/TextView;
    sget v24, Lcom/google/android/apps/googlevoice/R$id;->text:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 158
    .local v20, textView:Landroid/widget/TextView;
    sget v24, Lcom/google/android/apps/googlevoice/R$id;->starred:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 159
    .local v17, starView:Landroid/widget/ImageView;
    sget v24, Lcom/google/android/apps/googlevoice/R$id;->sms_sending_status:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 161
    .local v16, pendingSmsView:Landroid/widget/ImageView;
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, conversationId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->hasExceptionForSms(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18d

    .line 163
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    sget v24, Lcom/google/android/apps/googlevoice/R$drawable;->sms_sending_failed:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    :goto_b2
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    const/16 v24, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;->applyContactInformation(Landroid/content/Context;Landroid/view/View;Lcom/google/android/apps/googlevoice/core/ContactInfo;)V

    .line 175
    if-eqz v12, :cond_1ba

    .line 176
    invoke-static {v12}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getBadgeForPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :goto_e8
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->toString()Ljava/lang/String;

    move-result-object v14

    .line 182
    .local v14, nameText:Ljava/lang/String;
    array-length v13, v6

    .line 183
    .local v13, nPhoneCalls:I
    const/16 v24, 0x1

    move/from16 v0, v24

    if-le v13, v0, :cond_1c3

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, countText:Ljava/lang/String;
    :goto_fb
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLastPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v24

    if-eqz v24, :cond_1c7

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLastPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v21

    .line 191
    .local v21, time:J
    :goto_10f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v25

    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    move-wide/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/googlevoice/VoiceUtil;->formatTime(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v24

    if-eqz v24, :cond_1cd

    .line 193
    sget-object v24, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 194
    sget-object v24, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 200
    :goto_14a
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getStarIconForConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    new-instance v24, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$1;-><init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;Lcom/google/android/apps/googlevoice/core/Conversation;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;->setOnStarClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    if-eqz v12, :cond_1ef

    .line 215
    invoke-static {v12}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getTextForPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)Ljava/lang/String;

    move-result-object v19

    .line 216
    .local v19, text:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isAudibleRecording()Z

    move-result v24

    if-eqz v24, :cond_1e7

    if-nez v19, :cond_1e7

    .line 217
    sget v24, Lcom/google/android/apps/googlevoice/R$string;->no_transcript:I

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 218
    sget-object v24, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v25, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 225
    .end local v19           #text:Ljava/lang/String;
    :goto_189
    return-void

    .line 149
    .end local v5           #badgeView:Landroid/widget/ImageView;
    .end local v8           #conversationId:Ljava/lang/String;
    .end local v9           #conversationView:Landroid/widget/LinearLayout;
    .end local v10           #countText:Ljava/lang/String;
    .end local v11           #countView:Landroid/widget/TextView;
    .end local v12           #lastCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v13           #nPhoneCalls:I
    .end local v14           #nameText:Ljava/lang/String;
    .end local v15           #nameView:Landroid/widget/TextView;
    .end local v16           #pendingSmsView:Landroid/widget/ImageView;
    .end local v17           #starView:Landroid/widget/ImageView;
    .end local v18           #statusView:Landroid/widget/LinearLayout;
    .end local v20           #textView:Landroid/widget/TextView;
    .end local v21           #time:J
    .end local v23           #timeView:Landroid/widget/TextView;
    :cond_18a
    const/4 v12, 0x0

    goto/16 :goto_22

    .line 165
    .restart local v5       #badgeView:Landroid/widget/ImageView;
    .restart local v8       #conversationId:Ljava/lang/String;
    .restart local v9       #conversationView:Landroid/widget/LinearLayout;
    .restart local v11       #countView:Landroid/widget/TextView;
    .restart local v12       #lastCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .restart local v15       #nameView:Landroid/widget/TextView;
    .restart local v16       #pendingSmsView:Landroid/widget/ImageView;
    .restart local v17       #starView:Landroid/widget/ImageView;
    .restart local v18       #statusView:Landroid/widget/LinearLayout;
    .restart local v20       #textView:Landroid/widget/TextView;
    .restart local v23       #timeView:Landroid/widget/TextView;
    :cond_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->hasQueuedSms(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1af

    .line 166
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    sget v24, Lcom/google/android/apps/googlevoice/R$drawable;->message_waiting:I

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b2

    .line 169
    :cond_1af
    const/16 v24, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b2

    .line 178
    :cond_1ba
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e8

    .line 183
    .restart local v13       #nPhoneCalls:I
    .restart local v14       #nameText:Ljava/lang/String;
    :cond_1c3
    const-string v10, ""

    goto/16 :goto_fb

    .line 187
    .restart local v10       #countText:Ljava/lang/String;
    :cond_1c7
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationTime()J

    move-result-wide v21

    goto/16 :goto_10f

    .line 196
    .restart local v21       #time:J
    :cond_1cd
    sget-object v24, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 197
    sget-object v24, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v25, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_14a

    .line 220
    .restart local v19       #text:Ljava/lang/String;
    :cond_1e7
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_189

    .line 223
    .end local v19           #text:Ljava/lang/String;
    :cond_1ef
    const-string v24, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_189
.end method

.method private initializeStatusView(Landroid/widget/LinearLayout;)V
    .registers 11
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 228
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->conversation:I

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 229
    .local v0, conversationView:Landroid/widget/LinearLayout;
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->status:I

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 230
    .local v4, statusView:Landroid/widget/LinearLayout;
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->status_progress:I

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 231
    .local v3, statusProgressView:Landroid/widget/ProgressBar;
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->status_icon:I

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 232
    .local v1, statusIconView:Landroid/widget/ImageView;
    sget v5, Lcom/google/android/apps/googlevoice/R$id;->status_message:I

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 234
    .local v2, statusMessageView:Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    sget-object v5, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$2;->$SwitchMap$com$google$android$apps$googlevoice$activity$conversationlist$ConversationArrayAdapter$Type:[I

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->statusType:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_70

    .line 257
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 258
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :goto_4a
    return-void

    .line 239
    :pswitch_4b
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 240
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->statusString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 245
    :pswitch_57
    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 246
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->statusString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 251
    :pswitch_63
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 252
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->statusString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 237
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_57
        :pswitch_63
    .end packed-switch
.end method


# virtual methods
.method public clearStatus()V
    .registers 2

    .prologue
    .line 84
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->NONE:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->statusType:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->statusString:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->notifyDataSetChanged()V

    .line 87
    return-void
.end method

.method public getConversation(I)Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 3
    .parameter "position"

    .prologue
    .line 70
    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    aget-object v0, v0, p1

    .line 73
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getConversationCount()I
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    array-length v0, v0

    return v0
.end method

.method public getCount()I
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->statusType:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->statusType:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    sget-object v4, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->NONE:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    if-ne v3, v4, :cond_14

    :cond_c
    move v0, v2

    .line 108
    .local v0, noStatusMessage:Z
    :goto_d
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    array-length v3, v3

    if-eqz v0, :cond_16

    :goto_12
    add-int/2addr v1, v3

    return v1

    .end local v0           #noStatusMessage:Z
    :cond_14
    move v0, v1

    .line 107
    goto :goto_d

    .restart local v0       #noStatusMessage:Z
    :cond_16
    move v1, v2

    .line 108
    goto :goto_12
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->getConversation(I)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 118
    int-to-long v0, p1

    return-wide v0
.end method

.method public getStatusType()Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->statusType:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parentView"

    .prologue
    .line 125
    if-nez p2, :cond_1d

    .line 126
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/google/android/apps/googlevoice/R$layout;->conversation_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;

    .line 127
    .local v0, view:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-interface {v1, v0, v2}, Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;->afterInflation(Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 131
    :goto_14
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    array-length v1, v1

    if-ge p1, v1, :cond_21

    .line 132
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->initializeConversationView(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;I)V

    .line 137
    :goto_1c
    return-object v0

    .end local v0           #view:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;
    :cond_1d
    move-object v0, p2

    .line 129
    check-cast v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;

    .restart local v0       #view:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListItem;
    goto :goto_14

    .line 134
    :cond_21
    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->initializeStatusView(Landroid/widget/LinearLayout;)V

    goto :goto_1c
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public setConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 2
    .parameter "conversations"

    .prologue
    .line 78
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 79
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method

.method public setStatus(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;Ljava/lang/String;)V
    .registers 3
    .parameter "statusType"
    .parameter "statusString"

    .prologue
    .line 90
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 91
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 92
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->statusType:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    .line 93
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->statusString:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method
