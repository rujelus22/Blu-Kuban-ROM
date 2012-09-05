.class public Lcom/android/email/service/EmailPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmailPushReceiver.java"


# instance fields
.field WAP_Push_Wbxml_header:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/android/email/service/EmailPushReceiver;->WAP_Push_Wbxml_header:[I

    return-void

    :array_c
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 62
    .local v1, userdata:[B
    invoke-virtual {p0, p1, v1}, Lcom/android/email/service/EmailPushReceiver;->searchAccountAndUpdate(Landroid/content/Context;[B)V

    .line 64
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #userdata:[B
    :cond_19
    return-void
.end method

.method public searchAccountAndUpdate(Landroid/content/Context;[B)V
    .registers 10
    .parameter "context"
    .parameter "userdata"

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v1, email:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    const/4 v5, 0x7

    if-ge v2, v5, :cond_1d

    .line 74
    aget-byte v5, p2, v2

    iget-object v6, p0, Lcom/android/email/service/EmailPushReceiver;->WAP_Push_Wbxml_header:[I

    aget v6, v6, v2

    int-to-byte v6, v6

    if-eq v5, v6, :cond_1a

    .line 75
    const-string v5, "EmailPushReceiver"

    const-string v6, "user data header is wrong"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_19
    return-void

    .line 73
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 81
    :cond_1d
    const/4 v2, 0x7

    :goto_1e
    array-length v5, p2

    if-ge v2, v5, :cond_25

    .line 82
    aget-byte v5, p2, v2

    if-nez v5, :cond_40

    .line 90
    :cond_25
    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v3, v5, 0xff

    .line 92
    .local v3, token:I
    packed-switch v3, :pswitch_data_68

    .line 111
    :goto_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 114
    .local v0, acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_61

    .line 115
    const-string v5, "EmailPushReceiver"

    const-string v6, "searchAccountAndUpdate: account is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 85
    .end local v0           #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v3           #token:I
    :cond_40
    aget-byte v5, p2, v2

    int-to-char v4, v5

    .line 87
    .local v4, v:C
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 94
    .end local v4           #v:C
    .restart local v3       #token:I
    :pswitch_49
    const-string v5, ".com"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 97
    :pswitch_4f
    const-string v5, ".edu"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 100
    :pswitch_55
    const-string v5, ".net"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 103
    :pswitch_5b
    const-string v5, ".org"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 119
    .restart local v0       #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_61
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p1, v5, v6}, Lcom/android/email/service/MailService;->actionSyncOneAccount(Landroid/content/Context;J)V

    goto :goto_19

    .line 92
    nop

    :pswitch_data_68
    .packed-switch 0x85
        :pswitch_49
        :pswitch_4f
        :pswitch_55
        :pswitch_5b
    .end packed-switch
.end method
