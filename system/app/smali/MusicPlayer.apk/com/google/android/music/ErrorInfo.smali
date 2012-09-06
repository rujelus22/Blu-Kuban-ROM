.class public Lcom/google/android/music/ErrorInfo;
.super Ljava/lang/Object;
.source "ErrorInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;
    }
.end annotation


# instance fields
.field private mAlertMessageResId:I

.field private mAlertTitleResId:I

.field private mHelpUriResId:I

.field private mInlineResId:I

.field private mNeutralButtonActionUriId:I

.field private mNeutralButtonResId:I

.field private mNotificationMessageResId:I

.field private mNotificationTitleResId:I

.field private mPositiveButtonResId:I

.field private mPositivetButtonActionUriId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/google/android/music/ErrorInfo;->mAlertTitleResId:I

    .line 38
    iput v0, p0, Lcom/google/android/music/ErrorInfo;->mAlertMessageResId:I

    .line 40
    iput v0, p0, Lcom/google/android/music/ErrorInfo;->mNotificationTitleResId:I

    .line 41
    iput v0, p0, Lcom/google/android/music/ErrorInfo;->mNotificationMessageResId:I

    .line 42
    iput v0, p0, Lcom/google/android/music/ErrorInfo;->mInlineResId:I

    .line 44
    iput v0, p0, Lcom/google/android/music/ErrorInfo;->mHelpUriResId:I

    .line 46
    iput v0, p0, Lcom/google/android/music/ErrorInfo;->mNeutralButtonActionUriId:I

    .line 47
    iput v0, p0, Lcom/google/android/music/ErrorInfo;->mNeutralButtonResId:I

    .line 49
    iput v0, p0, Lcom/google/android/music/ErrorInfo;->mPositivetButtonActionUriId:I

    .line 50
    const v0, 0x7f0d00d3

    iput v0, p0, Lcom/google/android/music/ErrorInfo;->mPositiveButtonResId:I

    .line 389
    return-void
.end method

.method public static createErrorInfo(I)Lcom/google/android/music/ErrorInfo;
    .registers 2
    .parameter "errorType"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0, v0}, Lcom/google/android/music/ErrorInfo;->createErrorInfo(ILcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/INetworkMonitor;)Lcom/google/android/music/ErrorInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createErrorInfo(ILcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/INetworkMonitor;)Lcom/google/android/music/ErrorInfo;
    .registers 11
    .parameter "errorType"
    .parameter "musicPreferences"
    .parameter "networkMonitor"

    .prologue
    const v7, 0x7f0d00ed

    const v3, 0x7f0d00ec

    const v6, 0x7f0d0099

    const v4, 0x7f0d00a3

    const v5, 0x7f0d00eb

    .line 64
    new-instance v1, Lcom/google/android/music/ErrorInfo;

    invoke-direct {v1}, Lcom/google/android/music/ErrorInfo;-><init>()V

    .line 65
    .local v1, errorInfo:Lcom/google/android/music/ErrorInfo;
    sparse-switch p0, :sswitch_data_1b0

    .line 221
    invoke-static {}, Lcom/google/android/music/MusicUtils;->isStreaming()Z

    move-result v3

    if-eqz v3, :cond_19e

    .line 222
    invoke-virtual {v1, v5, v4}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 225
    invoke-virtual {v1, v5, v4}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 228
    invoke-virtual {v1, v4}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    .line 240
    :goto_26
    return-object v1

    .line 67
    :sswitch_27
    invoke-virtual {v1, v5, v3}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 70
    invoke-virtual {v1, v5, v3}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 73
    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto :goto_26

    .line 76
    :sswitch_31
    const/4 v2, 0x0

    .line 78
    .local v2, onlyOnWifi:Z
    if-eqz p1, :cond_43

    :try_start_34
    invoke-virtual {p1}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyOnWifi()Z

    move-result v3

    if-eqz v3, :cond_43

    if-eqz p2, :cond_43

    invoke-interface {p2}, Lcom/google/android/music/dl/INetworkMonitor;->hasHighSpeedConnection()Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3f} :catch_4f

    move-result v3

    if-nez v3, :cond_43

    .line 81
    const/4 v2, 0x1

    .line 88
    :cond_43
    :goto_43
    if-eqz v2, :cond_5a

    .line 89
    invoke-virtual {v1, v5, v7}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 92
    invoke-virtual {v1, v5, v7}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 95
    invoke-virtual {v1, v7}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto :goto_26

    .line 85
    :catch_4f
    move-exception v0

    .line 86
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ErrorInfo"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 97
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5a
    const v3, 0x7f0d00ee

    invoke-virtual {v1, v5, v3}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 100
    const v3, 0x7f0d00ee

    invoke-virtual {v1, v5, v3}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 103
    const v3, 0x7f0d00ee

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto :goto_26

    .line 108
    .end local v2           #onlyOnWifi:Z
    :sswitch_6d
    const v3, 0x7f0d00ef

    const v4, 0x7f0d00f0

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 111
    const v3, 0x7f0d00ef

    const v4, 0x7f0d00f0

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 114
    const v3, 0x7f0d00f0

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto :goto_26

    .line 117
    :sswitch_86
    const v3, 0x7f0d00fa

    const v4, 0x7f0d00f1

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 120
    const v3, 0x7f0d0100

    const v4, 0x7f0d00fd

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 123
    const v3, 0x7f0d00f9

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setHelp(I)V

    .line 124
    const v3, 0x7f0d00fa

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto :goto_26

    .line 127
    :sswitch_a5
    const v3, 0x7f0d00fc

    const v4, 0x7f0d00f3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 130
    const v3, 0x7f0d0102

    const v4, 0x7f0d00ff

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 134
    const/4 v3, -0x1

    const v4, 0x7f0d00f6

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setNeutralButtonAction(II)V

    .line 136
    const v3, 0x7f0d00f4

    const v4, 0x7f0d00f7

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setPositiveButtonAction(II)V

    .line 139
    const v3, 0x7f0d00fc

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto/16 :goto_26

    .line 142
    :sswitch_cf
    const v3, 0x7f0d00fb

    const v4, 0x7f0d00f2

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 145
    const v3, 0x7f0d0101

    const v4, 0x7f0d00fe

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 148
    const v3, 0x7f0d00f9

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setHelp(I)V

    .line 149
    const v3, 0x7f0d00fb

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto/16 :goto_26

    .line 152
    :sswitch_ef
    invoke-virtual {v1, v5, v4}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 155
    invoke-virtual {v1, v5, v4}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 158
    invoke-virtual {v1, v4}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto/16 :goto_26

    .line 161
    :sswitch_fa
    const v3, 0x7f0d0104

    const v4, 0x7f0d0105

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 164
    const v3, 0x7f0d0106

    const v4, 0x7f0d0107

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 167
    const v3, 0x7f0d00f5

    const v4, 0x7f0d0108

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setNeutralButtonAction(II)V

    .line 169
    const v3, 0x7f0d0104

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto/16 :goto_26

    .line 172
    :sswitch_11d
    const v3, 0x7f0d0109

    const v4, 0x7f0d010a

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 175
    const v3, 0x7f0d010b

    const v4, 0x7f0d010c

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 179
    const v3, 0x7f0d0109

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto/16 :goto_26

    .line 182
    :sswitch_137
    const v3, 0x7f0d0111

    const v4, 0x7f0d0112

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 185
    const v3, 0x7f0d0113

    const v4, 0x7f0d0114

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 189
    const v3, 0x7f0d0111

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto/16 :goto_26

    .line 192
    :sswitch_151
    const v3, 0x7f0d010d

    const v4, 0x7f0d010e

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 195
    const v3, 0x7f0d010f

    const v4, 0x7f0d0110

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 199
    const v3, 0x7f0d010d

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto/16 :goto_26

    .line 202
    :sswitch_16b
    const v3, 0x7f0d0115

    const v4, 0x7f0d0116

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 205
    const v3, 0x7f0d0117

    const v4, 0x7f0d0118

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 209
    const v3, 0x7f0d0115

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto/16 :goto_26

    .line 212
    :sswitch_185
    const v3, 0x7f0d0121

    const v4, 0x7f0d0122

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 215
    const v3, 0x7f0d0121

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto/16 :goto_26

    .line 218
    :sswitch_196
    const v3, 0x7f0d0103

    invoke-virtual {v1, v3}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto/16 :goto_26

    .line 230
    :cond_19e
    const v3, 0x7f0d0098

    invoke-virtual {v1, v3, v6}, Lcom/google/android/music/ErrorInfo;->setAlertText(II)V

    .line 233
    const v3, 0x7f0d0098

    invoke-virtual {v1, v3, v6}, Lcom/google/android/music/ErrorInfo;->setNotificationText(II)V

    .line 236
    invoke-virtual {v1, v6}, Lcom/google/android/music/ErrorInfo;->setInlineText(I)V

    goto/16 :goto_26

    .line 65
    nop

    :sswitch_data_1b0
    .sparse-switch
        0x2 -> :sswitch_27
        0x3 -> :sswitch_31
        0x4 -> :sswitch_6d
        0x5 -> :sswitch_a5
        0x6 -> :sswitch_86
        0x7 -> :sswitch_cf
        0x8 -> :sswitch_ef
        0x1389 -> :sswitch_196
        0x138a -> :sswitch_fa
        0x138b -> :sswitch_11d
        0x138c -> :sswitch_151
        0x138d -> :sswitch_137
        0x138e -> :sswitch_16b
        0x1391 -> :sswitch_185
    .end sparse-switch
.end method


# virtual methods
.method public canShowAlert()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 272
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mAlertMessageResId:I

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mAlertTitleResId:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public canShowNotification()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 276
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mNotificationTitleResId:I

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mNotificationMessageResId:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public createAlert(Landroid/app/Activity;Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;)Landroid/app/AlertDialog;
    .registers 10
    .parameter "activity"
    .parameter "dismissedListener"

    .prologue
    const/4 v6, -0x1

    .line 397
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->canShowAlert()Z

    move-result v5

    if-nez v5, :cond_9

    .line 398
    const/4 v5, 0x0

    .line 471
    :goto_8
    return-object v5

    .line 401
    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getAlertMessageResId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 404
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getAlertTitleResId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 407
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getPositiveButtonResId()I

    move-result v4

    .line 408
    .local v4, positiveButtonId:I
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getPositiveButtonActionUri()I

    move-result v3

    .line 410
    .local v3, positiveActionUriId:I
    if-eq v4, v6, :cond_2e

    .line 411
    new-instance v5, Lcom/google/android/music/ErrorInfo$1;

    invoke-direct {v5, p0, v3, p1, p2}, Lcom/google/android/music/ErrorInfo$1;-><init>(Lcom/google/android/music/ErrorInfo;ILandroid/app/Activity;Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 433
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->hasNeutrualAction()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 434
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getNeutralButtonResId()I

    move-result v2

    .line 435
    .local v2, neutralButtonId:I
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getNeutralButtonActionUri()I

    move-result v1

    .line 444
    .local v1, neutralActionUriId:I
    :goto_3c
    if-eq v2, v6, :cond_46

    .line 445
    new-instance v5, Lcom/google/android/music/ErrorInfo$2;

    invoke-direct {v5, p0, v1, p1, p2}, Lcom/google/android/music/ErrorInfo$2;-><init>(Lcom/google/android/music/ErrorInfo;ILandroid/app/Activity;Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;)V

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 464
    :cond_46
    new-instance v5, Lcom/google/android/music/ErrorInfo$3;

    invoke-direct {v5, p0, p2}, Lcom/google/android/music/ErrorInfo$3;-><init>(Lcom/google/android/music/ErrorInfo;Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 471
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_8

    .line 436
    .end local v1           #neutralActionUriId:I
    .end local v2           #neutralButtonId:I
    :cond_53
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->hasHelp()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 437
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getHelpButtonResId()I

    move-result v2

    .line 438
    .restart local v2       #neutralButtonId:I
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getHelpUriResId()I

    move-result v1

    .restart local v1       #neutralActionUriId:I
    goto :goto_3c

    .line 440
    .end local v1           #neutralActionUriId:I
    .end local v2           #neutralButtonId:I
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getNeutralButtonResId()I

    move-result v2

    .line 441
    .restart local v2       #neutralButtonId:I
    const/4 v1, -0x1

    .restart local v1       #neutralActionUriId:I
    goto :goto_3c
.end method

.method public createNotification(Landroid/content/ContextWrapper;)Landroid/app/Notification;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->canShowNotification()Z

    move-result v1

    if-nez v1, :cond_9

    .line 385
    :goto_8
    return-object v0

    .line 353
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->hasNeutrualAction()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 354
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getNeutralButtonActionUri()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    :cond_17
    :goto_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->hasHelp()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 359
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getHelpUriResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_2b
    if-eqz v0, :cond_87

    .line 363
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 367
    const/high16 v0, 0x1000

    invoke-static {p1, v3, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 375
    :goto_41
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 377
    const/16 v2, 0x18

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 378
    const v2, 0x1080078

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 379
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getNotificationTitleResId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/ContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 380
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getNotificationTitleResId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/ContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getNotificationMessageResId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/ContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v0, v1

    .line 385
    goto :goto_8

    .line 355
    :cond_78
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->hasPositiveAction()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 356
    invoke-virtual {p0}, Lcom/google/android/music/ErrorInfo;->getPositiveButtonActionUri()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 371
    :cond_87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_41
.end method

.method public getAlertMessageResId()I
    .registers 2

    .prologue
    .line 301
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mAlertMessageResId:I

    return v0
.end method

.method public getAlertTitleResId()I
    .registers 2

    .prologue
    .line 297
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mAlertTitleResId:I

    return v0
.end method

.method public getHelpButtonResId()I
    .registers 2

    .prologue
    .line 317
    const v0, 0x7f0d00f8

    return v0
.end method

.method public getHelpUriResId()I
    .registers 2

    .prologue
    .line 313
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mHelpUriResId:I

    return v0
.end method

.method public getInlineResId()I
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mInlineResId:I

    return v0
.end method

.method public getNeutralButtonActionUri()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mNeutralButtonActionUriId:I

    return v0
.end method

.method public getNeutralButtonResId()I
    .registers 2

    .prologue
    .line 325
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mNeutralButtonResId:I

    return v0
.end method

.method public getNotificationMessageResId()I
    .registers 2

    .prologue
    .line 309
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mNotificationMessageResId:I

    return v0
.end method

.method public getNotificationTitleResId()I
    .registers 2

    .prologue
    .line 305
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mNotificationTitleResId:I

    return v0
.end method

.method public getPositiveButtonActionUri()I
    .registers 2

    .prologue
    .line 329
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mPositivetButtonActionUriId:I

    return v0
.end method

.method public getPositiveButtonResId()I
    .registers 2

    .prologue
    .line 333
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mPositiveButtonResId:I

    return v0
.end method

.method public hasHelp()Z
    .registers 3

    .prologue
    .line 281
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mHelpUriResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hasInlineText()Z
    .registers 3

    .prologue
    .line 293
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mInlineResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hasNeutrualAction()Z
    .registers 3

    .prologue
    .line 285
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mNeutralButtonActionUriId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hasPositiveAction()Z
    .registers 3

    .prologue
    .line 289
    iget v0, p0, Lcom/google/android/music/ErrorInfo;->mPositivetButtonActionUriId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setAlertText(II)V
    .registers 3
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 244
    iput p1, p0, Lcom/google/android/music/ErrorInfo;->mAlertTitleResId:I

    .line 245
    iput p2, p0, Lcom/google/android/music/ErrorInfo;->mAlertMessageResId:I

    .line 246
    return-void
.end method

.method public setHelp(I)V
    .registers 2
    .parameter "helpUriResId"

    .prologue
    .line 254
    iput p1, p0, Lcom/google/android/music/ErrorInfo;->mHelpUriResId:I

    .line 255
    return-void
.end method

.method public setInlineText(I)V
    .registers 2
    .parameter "messageId"

    .prologue
    .line 268
    iput p1, p0, Lcom/google/android/music/ErrorInfo;->mInlineResId:I

    .line 269
    return-void
.end method

.method public setNeutralButtonAction(II)V
    .registers 3
    .parameter "actionUriId"
    .parameter "buttonId"

    .prologue
    .line 258
    iput p1, p0, Lcom/google/android/music/ErrorInfo;->mNeutralButtonActionUriId:I

    .line 259
    iput p2, p0, Lcom/google/android/music/ErrorInfo;->mNeutralButtonResId:I

    .line 260
    return-void
.end method

.method public setNotificationText(II)V
    .registers 3
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 249
    iput p1, p0, Lcom/google/android/music/ErrorInfo;->mNotificationTitleResId:I

    .line 250
    iput p2, p0, Lcom/google/android/music/ErrorInfo;->mNotificationMessageResId:I

    .line 251
    return-void
.end method

.method public setPositiveButtonAction(II)V
    .registers 3
    .parameter "actionUriId"
    .parameter "buttonId"

    .prologue
    .line 263
    iput p1, p0, Lcom/google/android/music/ErrorInfo;->mPositivetButtonActionUriId:I

    .line 264
    iput p2, p0, Lcom/google/android/music/ErrorInfo;->mPositiveButtonResId:I

    .line 265
    return-void
.end method
