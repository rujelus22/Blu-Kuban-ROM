.class public Lcom/vlingo/client/invite/InviteActivity;
.super Landroid/app/Activity;
.source "InviteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/vlingo/client/invite/InviteAPI$InviteCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/invite/InviteActivity$SMSResultReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_SMS_SENT:Ljava/lang/String; = "ACTION_SMS_SENT"

.field private static final POPUP_DOWNLOADING_LINK:I = 0x65

.field private static final POPUP_DOWNLOADING_SENDING:I = 0x66

.field private static final POPUP_ERROR:I = 0x67

.field private static final POPUP_ONE_SEC:I = 0x64

.field private static final SMS_SENT_KEY_ID:Ljava/lang/String; = "SMS_SENT_KEY_ID"

.field private static final TAF_FALLBACK_DOWNLOAD_URL:Ljava/lang/String;

.field private static final TEXT_MSG_BODY:Ljava/lang/String;


# instance fields
.field private adaptor:Lcom/vlingo/client/invite/InviteAdaptor;

.field private api:Lcom/vlingo/client/invite/InviteAPI;

.field private contactIndex:I

.field private volatile curDialogID:I

.field private volatile errorMessage:Ljava/lang/String;

.field private instructions:Landroid/widget/TextView;

.field private listView:Landroid/widget/ListView;

.field private volatile progressDialog:Landroid/app/ProgressDialog;

.field private final selectedContacts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sendButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 53
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0902f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/invite/InviteActivity;->TAF_FALLBACK_DOWNLOAD_URL:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{link}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/invite/InviteActivity;->TEXT_MSG_BODY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->selectedContacts:Ljava/util/Vector;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/invite/InviteActivity;->curDialogID:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/invite/InviteActivity;->contactIndex:I

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/invite/InviteActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vlingo/client/invite/InviteActivity;->sendInvitation()V

    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/invite/InviteActivity;Lcom/vlingo/client/invite/InviteActivity$SMSResultReceiver;Landroid/content/Intent;ZI)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vlingo/client/invite/InviteActivity;->notifySMSSent(Lcom/vlingo/client/invite/InviteActivity$SMSResultReceiver;Landroid/content/Intent;ZI)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/vlingo/client/invite/InviteActivity;->TAF_FALLBACK_DOWNLOAD_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/invite/InviteActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/vlingo/client/invite/InviteActivity;->sendSMSForCurrentContact(Ljava/lang/String;)V

    return-void
.end method

.method private getDownloadURLForCurrentContact()V
    .registers 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->selectedContacts:Ljava/util/Vector;

    iget v2, p0, Lcom/vlingo/client/invite/InviteActivity;->contactIndex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    .line 104
    .local v0, info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_32

    .line 105
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 106
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0902e6

    invoke-virtual {p0, v2}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 108
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 109
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 119
    :cond_32
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->api:Lcom/vlingo/client/invite/InviteAPI;

    if-nez v1, :cond_3d

    .line 120
    new-instance v1, Lcom/vlingo/client/invite/InviteAPI;

    invoke-direct {v1, p0}, Lcom/vlingo/client/invite/InviteAPI;-><init>(Lcom/vlingo/client/invite/InviteAPI$InviteCallback;)V

    iput-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->api:Lcom/vlingo/client/invite/InviteAPI;

    .line 121
    :cond_3d
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->api:Lcom/vlingo/client/invite/InviteAPI;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/invite/InviteAPI;->getURL(Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;)V

    .line 122
    return-void
.end method

.method private notifySMSSent(Lcom/vlingo/client/invite/InviteActivity$SMSResultReceiver;Landroid/content/Intent;ZI)V
    .registers 10
    .parameter "reciever"
    .parameter "intent"
    .parameter "success"
    .parameter "errCode"

    .prologue
    const/4 v4, 0x1

    .line 159
    invoke-virtual {p0, p1}, Lcom/vlingo/client/invite/InviteActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    if-nez p3, :cond_45

    .line 162
    iget-object v2, p0, Lcom/vlingo/client/invite/InviteActivity;->selectedContacts:Ljava/util/Vector;

    iget v3, p0, Lcom/vlingo/client/invite/InviteActivity;->contactIndex:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    .line 163
    .local v1, info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0902e5

    invoke-virtual {p0, v3}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/invite/InviteActivity;->errorMessage:Ljava/lang/String;

    .line 164
    packed-switch p4, :pswitch_data_78

    .line 174
    :goto_35
    :pswitch_35
    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Lcom/vlingo/client/invite/InviteActivity;->showDialog(I)V

    .line 189
    .end local v1           #info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    :goto_3a
    return-void

    .line 168
    .restart local v1       #info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    :pswitch_3b
    const v2, 0x7f0902ee

    invoke-virtual {p0, v2}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/invite/InviteActivity;->errorMessage:Ljava/lang/String;

    goto :goto_35

    .line 178
    .end local v1           #info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    :cond_45
    iget v2, p0, Lcom/vlingo/client/invite/InviteActivity;->contactIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vlingo/client/invite/InviteActivity;->contactIndex:I

    iget-object v3, p0, Lcom/vlingo/client/invite/InviteActivity;->selectedContacts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_74

    .line 179
    const v2, 0x7f0902e9

    invoke-virtual {p0, v2}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, doneText:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/invite/InviteActivity;->selectedContacts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne v2, v4, :cond_69

    .line 181
    const v2, 0x7f0902e8

    invoke-virtual {p0, v2}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_69
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 184
    invoke-virtual {p0}, Lcom/vlingo/client/invite/InviteActivity;->finish()V

    goto :goto_3a

    .line 187
    .end local v0           #doneText:Ljava/lang/String;
    :cond_74
    invoke-direct {p0}, Lcom/vlingo/client/invite/InviteActivity;->getDownloadURLForCurrentContact()V

    goto :goto_3a

    .line 164
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_35
        :pswitch_3b
    .end packed-switch
.end method

.method private sendInvitation()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->selectedContacts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/invite/InviteActivity;->contactIndex:I

    .line 98
    invoke-direct {p0}, Lcom/vlingo/client/invite/InviteActivity;->getDownloadURLForCurrentContact()V

    .line 100
    :cond_e
    return-void
.end method

.method private sendSMSForCurrentContact(Ljava/lang/String;)V
    .registers 13
    .parameter "link"

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->selectedContacts:Ljava/util/Vector;

    iget v5, p0, Lcom/vlingo/client/invite/InviteActivity;->contactIndex:I

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    .line 126
    .local v7, info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v5, 0x7f0902f4

    invoke-virtual {p0, v5}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f090217

    invoke-virtual {p0, v10}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, v7, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 130
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v9, sentIntent:Landroid/content/Intent;
    const-string v1, "SMS_SENT_KEY_ID"

    iget v5, p0, Lcom/vlingo/client/invite/InviteActivity;->contactIndex:I

    invoke-virtual {v9, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v1, "ACTION_SMS_SENT"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const/4 v1, 0x0

    const/high16 v5, 0x1000

    invoke-static {p0, v1, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 135
    .local v4, sentPendingIntent:Landroid/app/PendingIntent;
    new-instance v8, Lcom/vlingo/client/invite/InviteActivity$SMSResultReceiver;

    invoke-direct {v8, p0}, Lcom/vlingo/client/invite/InviteActivity$SMSResultReceiver;-><init>(Lcom/vlingo/client/invite/InviteActivity;)V

    .line 136
    .local v8, rec:Landroid/content/BroadcastReceiver;
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v6, in:Landroid/content/IntentFilter;
    const-string v1, "ACTION_SMS_SENT"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v8, v6}, Lcom/vlingo/client/invite/InviteActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    sget-object v1, Lcom/vlingo/client/invite/InviteActivity;->TEXT_MSG_BODY:Ljava/lang/String;

    const-string v5, "{link}"

    invoke-virtual {v1, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, body:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 149
    .local v0, smsManager:Landroid/telephony/SmsManager;
    iget-object v1, v7, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 153
    return-void
.end method

.method private updateSendButton()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->selectedContacts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5e

    .line 239
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->sendButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->selectedContacts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v1, :cond_3a

    .line 241
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->instructions:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vlingo/client/invite/InviteActivity;->selectedContacts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0902e2

    invoke-virtual {p0, v2}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_39
    return-void

    .line 243
    :cond_3a
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->instructions:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vlingo/client/invite/InviteActivity;->selectedContacts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0902e3

    invoke-virtual {p0, v2}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39

    .line 246
    :cond_5e
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->sendButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->instructions:Landroid/widget/TextView;

    const v1, 0x7f0902e1

    invoke-virtual {p0, v1}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/vlingo/client/invite/InviteActivity;->setContentView(I)V

    .line 79
    const v0, 0x7f0f009f

    invoke-virtual {p0, v0}, Lcom/vlingo/client/invite/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->instructions:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0f00a0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/invite/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->listView:Landroid/widget/ListView;

    .line 81
    const v0, 0x7f0f00a1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/invite/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->sendButton:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->sendButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->sendButton:Landroid/widget/Button;

    new-instance v1, Lcom/vlingo/client/invite/InviteActivity$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/invite/InviteActivity$1;-><init>(Lcom/vlingo/client/invite/InviteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v0, Lcom/vlingo/client/invite/InviteAdaptor;

    invoke-direct {v0, p0}, Lcom/vlingo/client/invite/InviteAdaptor;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->adaptor:Lcom/vlingo/client/invite/InviteAdaptor;

    .line 90
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->adaptor:Lcom/vlingo/client/invite/InviteAdaptor;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->listView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 92
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    iput p1, p0, Lcom/vlingo/client/invite/InviteActivity;->curDialogID:I

    .line 201
    packed-switch p1, :pswitch_data_b0

    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_b
    return-object v0

    .line 203
    :pswitch_c
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 204
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0902ec

    invoke-virtual {p0, v1}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 206
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 207
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_b

    .line 209
    :pswitch_2c
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 210
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0902ed

    invoke-virtual {p0, v1}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0902e4

    invoke-virtual {p0, v1}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 213
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 214
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_b

    .line 216
    :pswitch_58
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 217
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0902f5

    invoke-virtual {p0, v1}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0902e7

    invoke-virtual {p0, v1}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 220
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 221
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_b

    .line 223
    :pswitch_84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901f8

    invoke-virtual {p0, v1}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901f7

    invoke-virtual {p0, v1}, Lcom/vlingo/client/invite/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vlingo/client/invite/InviteActivity$2;

    invoke-direct {v2, p0}, Lcom/vlingo/client/invite/InviteActivity$2;-><init>(Lcom/vlingo/client/invite/InviteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_b

    .line 201
    :pswitch_data_b0
    .packed-switch 0x64
        :pswitch_c
        :pswitch_2c
        :pswitch_58
        :pswitch_84
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 254
    instance-of v2, p2, Lcom/vlingo/client/superdialer/items/SDItemContactView;

    if-eqz v2, :cond_28

    move-object v0, p2

    .line 255
    check-cast v0, Lcom/vlingo/client/superdialer/items/SDItemContactView;

    .line 256
    .local v0, cv:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->getInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    .line 257
    .local v1, info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    iget-boolean v2, v1, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->cheched:Z

    if-nez v2, :cond_29

    const/4 v2, 0x1

    :goto_13
    iput-boolean v2, v1, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->cheched:Z

    .line 258
    iget-boolean v2, v1, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->cheched:Z

    if-eqz v2, :cond_2b

    .line 259
    iget-object v2, p0, Lcom/vlingo/client/invite/InviteActivity;->selectedContacts:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->getCheckBox()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    :goto_25
    invoke-direct {p0}, Lcom/vlingo/client/invite/InviteActivity;->updateSendButton()V

    .line 268
    .end local v0           #cv:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    .end local v1           #info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    :cond_28
    return-void

    .restart local v0       #cv:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    .restart local v1       #info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    :cond_29
    move v2, v3

    .line 257
    goto :goto_13

    .line 263
    :cond_2b
    iget-object v2, p0, Lcom/vlingo/client/invite/InviteActivity;->selectedContacts:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->getCheckBox()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_25
.end method

.method public onURL(ZLcom/vlingo/client/invite/InviteAdaptor$ContactInfo;Ljava/util/Hashtable;)V
    .registers 5
    .parameter "success"
    .parameter "info"
    .parameter "params"

    .prologue
    .line 294
    new-instance v0, Lcom/vlingo/client/invite/InviteActivity$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/vlingo/client/invite/InviteActivity$3;-><init>(Lcom/vlingo/client/invite/InviteActivity;ZLjava/util/Hashtable;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/invite/InviteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method
