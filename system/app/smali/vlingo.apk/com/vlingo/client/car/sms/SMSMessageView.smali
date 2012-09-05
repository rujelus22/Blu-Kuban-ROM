.class public Lcom/vlingo/client/car/sms/SMSMessageView;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "SMSMessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;
    }
.end annotation


# static fields
.field private static final OPTION_EDIT:I = 0x2329


# instance fields
.field private cmdView:Landroid/widget/TextView;

.field private contact:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

.field private isReply:Z

.field private itemToText:Lcom/vlingo/client/core/contacts/DisplayItem;

.field private listener:Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;

.field private messageContainer:Landroid/widget/ScrollView;

.field private messageHeaderView:Landroid/widget/TextView;

.field private messageView:Landroid/widget/TextView;

.field private sendButton:Landroid/widget/Button;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->isReply:Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/sms/SMSMessageView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->openInSMSApp()V

    return-void
.end method

.method private getMessageText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 247
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_16
    return-object v0

    :cond_17
    const-string v0, ""

    goto :goto_16
.end method

.method private openInSMSApp()V
    .registers 5

    .prologue
    .line 222
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    .line 223
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->itemToText:Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getMessageText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vlingo/client/util/SMSUtil;->getSMSReplyIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 224
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->taskFinished()V

    .line 225
    return-void
.end method

.method private read(Z)V
    .registers 26
    .parameter "includeType"

    .prologue
    .line 96
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vlingo/client/car/sms/SMSMessageView;->isReply:Z

    move/from16 v19, v0

    if-eqz v19, :cond_ec

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/sms/SMSMessageView;->contact:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, contactName:Ljava/lang/String;
    const-string v19, "|"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, chArr:[Ljava/lang/String;
    const-string v6, ""

    .line 103
    const-string v11, ""

    .line 104
    .local v11, prev:Ljava/lang/String;
    move-object v2, v3

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_27
    if-ge v8, v9, :cond_8c

    aget-object v13, v2, v8

    .line 105
    .local v13, s:Ljava/lang/String;
    const-string v19, "[0-9]"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_54

    const-string v19, "[0-9]"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_54

    .line 106
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    :cond_54
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    const-string v19, "[0-9]"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_88

    .line 110
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 112
    :cond_88
    move-object v11, v13

    .line 104
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 116
    .end local v13           #s:Ljava/lang/String;
    :cond_8c
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f09022f

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v6, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 117
    .local v10, nameFormat:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f090254

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 118
    .local v14, toFormat:Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v7, v0, [Lcom/vlingo/client/core/tts/TTSDemand;

    .line 119
    .local v7, demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    const/16 v19, 0x0

    sget-object v20, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    aput-object v20, v7, v19

    .line 120
    const/16 v19, 0x1

    invoke-static {v14}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v20

    aput-object v20, v7, v19

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/sms/SMSMessageView;->autoListenDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    move-object/from16 v19, v0

    if-nez v19, :cond_e0

    .line 122
    const/16 v19, 0x1

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/car/sms/SMSMessageView;->autoListenDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 123
    :cond_e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/sms/SMSMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 162
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #chArr:[Ljava/lang/String;
    .end local v6           #contactName:Ljava/lang/String;
    .end local v7           #demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #nameFormat:Ljava/lang/String;
    .end local v11           #prev:Ljava/lang/String;
    .end local v14           #toFormat:Ljava/lang/String;
    :goto_eb
    return-void

    .line 128
    :cond_ec
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/sms/SMSMessageView;->itemToText:Lcom/vlingo/client/core/contacts/DisplayItem;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    .line 129
    .local v18, typeStr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 131
    .local v12, res:Landroid/content/res/Resources;
    const v19, 0x7f09020f

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 134
    .local v15, ttsMsg:Ljava/lang/String;
    const-string v16, ""

    .line 136
    .local v16, ttsSaySendCancelSpeak:Ljava/lang/String;
    const-string v17, ""

    .line 138
    .local v17, ttsSpeak:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isPromptModeSet()Z

    move-result v19

    if-eqz v19, :cond_12f

    .line 139
    const v19, 0x7f090062

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 140
    const v19, 0x7f090216

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 143
    :cond_12f
    const/4 v5, 0x0

    .line 144
    .local v5, confirmString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 145
    .local v4, confirmDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    if-eqz p1, :cond_1bc

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/sms/SMSMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x7f090073

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/sms/SMSMessageView;->contact:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v18, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 150
    :goto_164
    invoke-direct/range {p0 .. p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getMessageText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_1eb

    .line 151
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ". "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getMessageText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v4

    .line 159
    :goto_1a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/sms/SMSMessageView;->autoListenDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    move-object/from16 v19, v0

    if-nez v19, :cond_1af

    .line 160
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vlingo/client/car/sms/SMSMessageView;->autoListenDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 161
    :cond_1af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/sms/SMSMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto/16 :goto_eb

    .line 148
    :cond_1bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/sms/SMSMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x7f090072

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/sms/SMSMessageView;->contact:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_164

    .line 153
    :cond_1eb
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v4

    goto :goto_1a3
.end method

.method private send()V
    .registers 5

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getMessageText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 253
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->listener:Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;

    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->contact:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->itemToText:Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getMessageText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;->onSendText(Lcom/vlingo/client/car/sms/SMSMessageView;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;)V

    .line 257
    :goto_17
    return-void

    .line 255
    :cond_18
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_MESSAGE_BLANK_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_17
.end method

.method private setMessage(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 228
    if-nez p1, :cond_16

    .line 229
    const-string p1, ""

    .line 234
    :goto_4
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 237
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->messageHeaderView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :goto_15
    return-void

    .line 232
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 241
    :cond_1b
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->messageHeaderView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15
.end method

.method private showMessageEditDialog()V
    .registers 5

    .prologue
    .line 203
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090214

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901f7

    new-instance v3, Lcom/vlingo/client/car/sms/SMSMessageView$2;

    invoke-direct {v3, p0}, Lcom/vlingo/client/car/sms/SMSMessageView$2;-><init>(Lcom/vlingo/client/car/sms/SMSMessageView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090048

    new-instance v3, Lcom/vlingo/client/car/sms/SMSMessageView$1;

    invoke-direct {v3, p0}, Lcom/vlingo/client/car/sms/SMSMessageView$1;-><init>(Lcom/vlingo/client/car/sms/SMSMessageView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 218
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 219
    return-void
.end method


# virtual methods
.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 274
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_sms_msg"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 282
    if-eqz p1, :cond_f

    .line 283
    const-string v0, "send"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 284
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->send()V

    .line 285
    const/4 v0, 0x1

    .line 288
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 12
    .parameter "action"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 292
    const-string v9, "Contact"

    invoke-virtual {p1, v9}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, contact:Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_11

    .line 323
    :cond_10
    :goto_10
    return v7

    .line 296
    :cond_11
    const-string v9, "To"

    invoke-virtual {p1, v9}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_10

    .line 300
    :cond_1f
    const-string v9, "Type"

    invoke-virtual {p1, v9}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, type:Ljava/lang/String;
    if-eqz v6, :cond_2d

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_10

    .line 306
    :cond_2d
    const-string v7, "Message"

    invoke-virtual {p1, v7}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, msg:Ljava/lang/String;
    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7f

    .line 308
    invoke-direct {p0, v2}, Lcom/vlingo/client/car/sms/SMSMessageView;->setMessage(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 311
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x7f09020f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, ttsMsg:Ljava/lang/String;
    const-string v5, ""

    .line 313
    .local v5, ttsSendCancelSpeak:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isPromptModeSet()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 314
    const v7, 0x7f090063

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 316
    :cond_5c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    .line 319
    .local v1, demand:Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-virtual {p0, v8}, Lcom/vlingo/client/car/sms/SMSMessageView;->setAutoListenShouldTrigger(Z)V

    .line 320
    iput-object v1, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->autoListenDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 321
    iget-object v7, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v7, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .end local v1           #demand:Lcom/vlingo/client/core/tts/TTSDemand;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #ttsMsg:Ljava/lang/String;
    .end local v5           #ttsSendCancelSpeak:Ljava/lang/String;
    :cond_7f
    move v7, v8

    .line 323
    goto :goto_10
.end method

.method public initialize(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;)V
    .registers 7
    .parameter "contact"
    .parameter "itemToText"
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->contact:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 78
    iput-object p2, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->itemToText:Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 79
    iput-object p4, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->listener:Lcom/vlingo/client/car/sms/SMSMessageView$SMSMessageViewActionListener;

    .line 80
    invoke-direct {p0, p3}, Lcom/vlingo/client/car/sms/SMSMessageView;->setMessage(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->textView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->messageContainer:Landroid/widget/ScrollView;

    if-ne p1, v0, :cond_35

    .line 169
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getMessageText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 170
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getMessageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 179
    :cond_1f
    :goto_1f
    return-void

    .line 173
    :cond_20
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_1f

    .line 176
    :cond_35
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->sendButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1f

    .line 177
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->send()V

    goto :goto_1f
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    .line 191
    const/4 v0, 0x0

    const/16 v1, 0x2329

    const/high16 v2, 0x3

    invoke-virtual {p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09020d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 192
    return-void
.end method

.method public onDelegateAttached()V
    .registers 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/sms/SMSMessageView;->read(Z)V

    .line 92
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 62
    const v0, 0x7f0f002c

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/sms/SMSMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->cmdView:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0f002f

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/sms/SMSMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->textView:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0f0116

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/sms/SMSMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->messageContainer:Landroid/widget/ScrollView;

    .line 65
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->messageContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->messageContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67
    const v0, 0x7f0f0031

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/sms/SMSMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->messageView:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0f0121

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/sms/SMSMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->messageHeaderView:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0f00a1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/sms/SMSMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->sendButton:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->sendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/sms/SMSMessageView;->setMessage(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter "v"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->messageContainer:Landroid/widget/ScrollView;

    if-ne p1, v0, :cond_9

    .line 183
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->showMessageEditDialog()V

    .line 184
    const/4 v0, 0x1

    .line 186
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x2329

    if-ne v0, v1, :cond_d

    .line 196
    invoke-direct {p0}, Lcom/vlingo/client/car/sms/SMSMessageView;->openInSMSApp()V

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setIsReply()V
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/sms/SMSMessageView;->isReply:Z

    .line 86
    return-void
.end method
