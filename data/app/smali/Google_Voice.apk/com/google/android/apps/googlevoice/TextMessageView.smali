.class public Lcom/google/android/apps/googlevoice/TextMessageView;
.super Landroid/widget/LinearLayout;
.source "TextMessageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method private getFailureTextForException(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 5
    .parameter "exception"

    .prologue
    .line 124
    if-eqz p1, :cond_4b

    instance-of v1, p1, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v1, :cond_4b

    move-object v0, p1

    .line 125
    check-cast v0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .line 126
    .local v0, voiceException:Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->getNumber()I

    move-result v1

    sparse-switch v1, :sswitch_data_56

    .line 140
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->sms_failure_generic_phonecall_status:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .end local v0           #voiceException:Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    :goto_1e
    return-object v1

    .line 128
    .restart local v0       #voiceException:Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    :sswitch_1f
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->sms_failure_invalid_number_phonecall_status:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 131
    :sswitch_2a
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->sms_failure_destination_disallowed_phonecall_status:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 134
    :sswitch_35
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->sms_failure_insufficient_credit_phonecall_status:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 137
    :sswitch_40
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->sms_failure_quota_exceeded_phonecall_status:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 147
    .end local v0           #voiceException:Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    :cond_4b
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->sms_failure_retry_phonecall_status:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 126
    :sswitch_data_56
    .sparse-switch
        0x3 -> :sswitch_1f
        0xf -> :sswitch_40
        0x10 -> :sswitch_35
        0x11 -> :sswitch_2a
    .end sparse-switch
.end method

.method public static inflate(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/TextMessageView;
    .registers 5
    .parameter "context"

    .prologue
    .line 32
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$layout;->text_message_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/TextMessageView;

    return-object v0
.end method


# virtual methods
.method public setPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;)V
    .registers 27
    .parameter "phoneCall"
    .parameter "smsInfoRetriever"

    .prologue
    .line 53
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v5

    .line 54
    .local v5, clockUtils:Lcom/google/android/apps/common/time/ClockUtils;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 55
    .local v4, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v17

    sget-object v18, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_f0

    const/4 v9, 0x1

    .line 57
    .local v9, isOutgoing:Z
    :goto_1a
    sget v17, Lcom/google/android/apps/googlevoice/R$id;->message:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/TextMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 63
    .local v12, messageView:Landroid/widget/TextView;
    sget v17, Lcom/google/android/apps/googlevoice/R$id;->status:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/TextMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 64
    .local v14, statusView:Landroid/widget/ImageView;
    if-eqz v9, :cond_165

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/google/android/apps/googlevoice/R$string;->contact_me:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, conversationId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v11

    .line 70
    .local v11, messageId:Ljava/lang/String;
    if-eqz v9, :cond_f3

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v11}, Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;->isFailedSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f3

    const/4 v7, 0x1

    .line 71
    .local v7, hasFailed:Z
    :goto_5a
    if-eqz v9, :cond_f6

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v11}, Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;->isQueuedSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f6

    const/4 v10, 0x1

    .line 72
    .local v10, isQueued:Z
    :goto_65
    if-eqz v10, :cond_f9

    if-nez v7, :cond_f9

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v11}, Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;->isSmsInProgress(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f9

    const/4 v8, 0x1

    .line 76
    .local v8, isInProgress:Z
    :goto_72
    if-eqz v7, :cond_fc

    .line 77
    move-object/from16 v0, p2

    invoke-interface {v0, v6, v11}, Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;->getExceptionForSms(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/TextMessageView;->getFailureTextForException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v13

    .line 88
    .local v13, statusText:Ljava/lang/String;
    :goto_82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/google/android/apps/googlevoice/R$drawable;->sms_nofocus_whitebackground:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/TextMessageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    if-eqz v7, :cond_14a

    .line 93
    sget v17, Lcom/google/android/apps/googlevoice/R$drawable;->sms_sending_failed:I

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    .end local v6           #conversationId:Ljava/lang/String;
    .end local v7           #hasFailed:Z
    .end local v8           #isInProgress:Z
    .end local v10           #isQueued:Z
    .end local v11           #messageId:Ljava/lang/String;
    :goto_a7
    const-string v17, ": "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 111
    new-instance v17, Landroid/text/style/StyleSpan;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v18, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v19

    const/16 v20, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 113
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getTextForPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 114
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const/16 v17, 0xf

    move/from16 v0, v17

    invoke-static {v12, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 117
    sget v17, Lcom/google/android/apps/googlevoice/R$id;->time:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/TextMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 118
    .local v16, timeView:Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->requestLayout()V

    .line 120
    return-void

    .line 55
    .end local v9           #isOutgoing:Z
    .end local v12           #messageView:Landroid/widget/TextView;
    .end local v13           #statusText:Ljava/lang/String;
    .end local v14           #statusView:Landroid/widget/ImageView;
    .end local v16           #timeView:Landroid/widget/TextView;
    :cond_f0
    const/4 v9, 0x0

    goto/16 :goto_1a

    .line 70
    .restart local v6       #conversationId:Ljava/lang/String;
    .restart local v9       #isOutgoing:Z
    .restart local v11       #messageId:Ljava/lang/String;
    .restart local v12       #messageView:Landroid/widget/TextView;
    .restart local v14       #statusView:Landroid/widget/ImageView;
    :cond_f3
    const/4 v7, 0x0

    goto/16 :goto_5a

    .line 71
    .restart local v7       #hasFailed:Z
    :cond_f6
    const/4 v10, 0x0

    goto/16 :goto_65

    .line 72
    .restart local v10       #isQueued:Z
    :cond_f9
    const/4 v8, 0x0

    goto/16 :goto_72

    .line 79
    .restart local v8       #isInProgress:Z
    :cond_fc
    if-eqz v8, :cond_10a

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v17

    sget v18, Lcom/google/android/apps/googlevoice/R$string;->sms_sending_phonecall_status:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #statusText:Ljava/lang/String;
    goto/16 :goto_82

    .line 81
    .end local v13           #statusText:Ljava/lang/String;
    :cond_10a
    if-eqz v10, :cond_118

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v17

    sget v18, Lcom/google/android/apps/googlevoice/R$string;->sms_queued_phonecall_status:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #statusText:Ljava/lang/String;
    goto/16 :goto_82

    .line 84
    .end local v13           #statusText:Ljava/lang/String;
    :cond_118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/google/android/apps/googlevoice/R$string;->time_format_sent:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 85
    .local v15, timeFormat:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v20

    invoke-interface {v5}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v19 .. v23}, Lcom/google/android/apps/googlevoice/VoiceUtil;->formatTime(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #statusText:Ljava/lang/String;
    goto/16 :goto_82

    .line 95
    .end local v15           #timeFormat:Ljava/lang/String;
    :cond_14a
    if-eqz v10, :cond_15c

    .line 96
    sget v17, Lcom/google/android/apps/googlevoice/R$drawable;->message_waiting:I

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a7

    .line 99
    :cond_15c
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a7

    .line 102
    .end local v6           #conversationId:Ljava/lang/String;
    .end local v7           #hasFailed:Z
    .end local v8           #isInProgress:Z
    .end local v10           #isQueued:Z
    .end local v11           #messageId:Ljava/lang/String;
    .end local v13           #statusText:Ljava/lang/String;
    :cond_165
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/google/android/apps/googlevoice/R$string;->time_format_received:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 105
    .restart local v15       #timeFormat:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v20

    invoke-interface {v5}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v19 .. v23}, Lcom/google/android/apps/googlevoice/VoiceUtil;->formatTime(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 107
    .restart local v13       #statusText:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TextMessageView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/google/android/apps/googlevoice/R$drawable;->sms_nofocus_bluebackground:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/TextMessageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a7
.end method

.method public setPressed(Z)V
    .registers 6
    .parameter "pressed"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 47
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_1a

    .line 48
    const-string v0, "pressed = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 50
    :cond_1a
    return-void
.end method
