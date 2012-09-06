.class public Lcom/android/email/activity/NfcHandler;
.super Ljava/lang/Object;
.source "NfcHandler.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# instance fields
.field final mActivity:Landroid/app/Activity;

.field mCurrentEmail:Ljava/lang/String;

.field final mUiController:Lcom/android/email/activity/UIControllerBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/UIControllerBase;Landroid/app/Activity;)V
    .registers 3
    .parameter "controller"
    .parameter "activity"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/email/activity/NfcHandler;->mUiController:Lcom/android/email/activity/UIControllerBase;

    .line 57
    iput-object p2, p0, Lcom/android/email/activity/NfcHandler;->mActivity:Landroid/app/Activity;

    .line 58
    return-void
.end method

.method private static buildMailtoNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .registers 10
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 87
    :goto_9
    return-object v4

    .line 77
    :cond_a
    :try_start_a
    const-string v5, "UTF-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_15} :catch_35

    move-result-object v0

    .line 82
    .local v0, accountBytes:[B
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [B

    .line 83
    .local v3, recordBytes:[B
    const/4 v4, 0x6

    aput-byte v4, v3, v7

    .line 84
    array-length v4, v0

    invoke-static {v0, v7, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v4, Landroid/nfc/NdefRecord;->RTD_URI:[B

    new-array v5, v7, [B

    invoke-direct {v2, v8, v4, v5, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 87
    .local v2, mailto:Landroid/nfc/NdefRecord;
    new-instance v4, Landroid/nfc/NdefMessage;

    new-array v5, v8, [Landroid/nfc/NdefRecord;

    aput-object v2, v5, v7

    invoke-direct {v4, v5}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    goto :goto_9

    .line 79
    .end local v0           #accountBytes:[B
    .end local v2           #mailto:Landroid/nfc/NdefRecord;
    .end local v3           #recordBytes:[B
    :catch_35
    move-exception v1

    .line 80
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_9
.end method

.method public static register(Lcom/android/email/activity/UIControllerBase;Landroid/app/Activity;)Lcom/android/email/activity/NfcHandler;
    .registers 5
    .parameter "controller"
    .parameter "activity"

    .prologue
    .line 46
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 47
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_8

    .line 48
    const/4 v1, 0x0

    .line 52
    :goto_7
    return-object v1

    .line 50
    :cond_8
    new-instance v1, Lcom/android/email/activity/NfcHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/NfcHandler;-><init>(Lcom/android/email/activity/UIControllerBase;Landroid/app/Activity;)V

    .line 51
    .local v1, nfcHandler:Lcom/android/email/activity/NfcHandler;
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_7
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .registers 3
    .parameter "event"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/email/activity/NfcHandler;->mCurrentEmail:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 93
    iget-object v0, p0, Lcom/android/email/activity/NfcHandler;->mCurrentEmail:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/activity/NfcHandler;->buildMailtoNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 95
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onAccountChanged()V
    .registers 5

    .prologue
    .line 61
    iget-object v3, p0, Lcom/android/email/activity/NfcHandler;->mUiController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v3}, Lcom/android/email/activity/UIControllerBase;->isActualAccountSelected()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 62
    iget-object v3, p0, Lcom/android/email/activity/NfcHandler;->mUiController:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v3}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v1

    .line 63
    .local v1, accountId:J
    iget-object v3, p0, Lcom/android/email/activity/NfcHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 64
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_17

    .line 69
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v1           #accountId:J
    :goto_16
    return-void

    .line 65
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v1       #accountId:J
    :cond_17
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/email/activity/NfcHandler;->mCurrentEmail:Ljava/lang/String;

    goto :goto_16

    .line 67
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v1           #accountId:J
    :cond_1c
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/email/activity/NfcHandler;->mCurrentEmail:Ljava/lang/String;

    goto :goto_16
.end method
