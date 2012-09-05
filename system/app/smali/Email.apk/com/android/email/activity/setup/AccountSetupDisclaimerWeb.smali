.class public Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;
.super Landroid/app/Activity;
.source "AccountSetupDisclaimerWeb.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private acceptButton:Landroid/widget/Button;

.field private acceptCheck:Landroid/widget/CheckBox;

.field private isErrorReceived:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->isErrorReceived:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->isErrorReceived:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptButton:Landroid/widget/Button;

    return-object v0
.end method

.method public static actionNewAccountPremium(Landroid/app/Activity;)V
    .registers 2
    .parameter "fromActivity"

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->actionNewAccountPremium(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 364
    return-void
.end method

.method public static actionNewAccountPremium(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 350
    if-eqz p1, :cond_12

    .line 351
    const-class v0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 355
    :goto_7
    const/high16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 356
    const/16 v0, 0x3f3

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 357
    return-void

    .line 353
    :cond_12
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_7
.end method

.method public static encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "seed"
    .parameter "plainText"

    .prologue
    const/4 v2, 0x0

    .line 127
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_a

    .line 136
    :cond_9
    :goto_9
    return-object v2

    .line 130
    :cond_a
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 133
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 134
    .local v1, secretKeyBytes:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->encryptBytesByAES([B[B)[B

    move-result-object v0

    .line 136
    .local v0, cipherTextBytes:[B
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    goto :goto_9
.end method

.method private static encryptBytesByAES([B[B)[B
    .registers 7
    .parameter "secretKeyBytes"
    .parameter "plainTextBytes"

    .prologue
    .line 154
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 156
    .local v3, secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v2, 0x0

    .line 159
    .local v2, outBytes:[B
    :try_start_8
    const-string v4, "AES/ECB/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 160
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 161
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_15} :catch_17
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_8 .. :try_end_15} :catch_1c
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_15} :catch_21
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_8 .. :try_end_15} :catch_26
    .catch Ljavax/crypto/BadPaddingException; {:try_start_8 .. :try_end_15} :catch_2b

    move-result-object v2

    .line 174
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :goto_16
    return-object v2

    .line 162
    :catch_17
    move-exception v1

    .line 163
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_16

    .line 164
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1c
    move-exception v1

    .line 165
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_16

    .line 166
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_21
    move-exception v1

    .line 167
    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_16

    .line 168
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_26
    move-exception v1

    .line 169
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_16

    .line 170
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_2b
    move-exception v1

    .line 171
    .local v1, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_16
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 184
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 186
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, IMSI:Ljava/lang/String;
    if-eqz v0, :cond_f

    .end local v0           #IMSI:Ljava/lang/String;
    :goto_e
    return-object v0

    .restart local v0       #IMSI:Ljava/lang/String;
    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method private static hexStringToBytes(Ljava/lang/String;)[B
    .registers 6
    .parameter "hexString"

    .prologue
    .line 140
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_a

    .line 141
    :cond_8
    const/4 v2, 0x0

    .line 149
    :cond_9
    return-object v2

    .line 143
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 144
    .local v1, length:I
    new-array v2, v1, [B

    .line 146
    .local v2, outBytes:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v1, :cond_9

    .line 147
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method private initAcceptButton()V
    .registers 3

    .prologue
    .line 276
    const v0, 0x7f100051

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptButton:Landroid/widget/Button;

    .line 278
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$2;-><init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 290
    return-void
.end method

.method private initCancelButton()V
    .registers 3

    .prologue
    .line 293
    const v1, 0x7f100052

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 294
    .local v0, cancelButton:Landroid/widget/Button;
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$3;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$3;-><init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    return-void
.end method

.method private initCheckBox()V
    .registers 3

    .prologue
    .line 305
    const v0, 0x7f100050

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptCheck:Landroid/widget/CheckBox;

    .line 306
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptCheck:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$4;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$4;-><init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 312
    return-void
.end method

.method private initUnreadCount()V
    .registers 8

    .prologue
    .line 388
    const/4 v6, 0x0

    .line 390
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_19

    .line 402
    if-eqz v6, :cond_18

    .line 403
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_18
    return-void

    .line 402
    :catchall_19
    move-exception v0

    if-eqz v6, :cond_1f

    .line 403
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1f
    throw v0
.end method

.method private initWebView()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 194
    new-instance v3, Ljava/io/File;

    const v6, 0x7f0803f3

    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v3, file:Ljava/io/File;
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8b

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imsi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, IMSI:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://socialhub.samsungmobile.com/store/device/disclaimer.sh?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "fe134abce420daeccf3253abe99dd321"

    const/16 v8, 0xf

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .end local v0           #IMSI:Ljava/lang/String;
    .local v1, disclaimerUrl:Ljava/lang/String;
    :goto_4e
    const v6, 0x7f10004f

    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    .line 221
    iput-boolean v11, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->isErrorReceived:Z

    .line 224
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;-><init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 260
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 261
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 262
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    sget-object v7, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 264
    :try_start_82
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->showWebViewProgressDialog()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8a} :catch_cf

    .line 269
    :goto_8a
    return-void

    .line 202
    .end local v1           #disclaimerUrl:Ljava/lang/String;
    :cond_8b
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_a4

    .line 203
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 204
    .local v4, path:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .restart local v1       #disclaimerUrl:Ljava/lang/String;
    goto :goto_4e

    .line 206
    .end local v1           #disclaimerUrl:Ljava/lang/String;
    .end local v4           #path:Landroid/net/Uri;
    :cond_a4
    const v6, 0x7f0803f4

    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, url:Ljava/lang/String;
    if-nez v5, :cond_b3

    .line 210
    invoke-static {v10}, Lcom/seven/Z7/app/SubscriptionStatus;->setApplicationUsageDisclaimerAccepted(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->finish()V

    .line 214
    :cond_b3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/seven/util/SamsungUrlEncryptionUtils;->getSubscriptionRenewalParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #disclaimerUrl:Ljava/lang/String;
    goto :goto_4e

    .line 266
    .end local v5           #url:Ljava/lang/String;
    :catch_cf
    move-exception v2

    .line 267
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8a
.end method


# virtual methods
.method protected dismissWebViewProgressDialog()V
    .registers 3

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 342
    :try_start_c
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_11} :catch_12

    .line 347
    :cond_11
    :goto_11
    return-void

    .line 343
    :catch_12
    move-exception v0

    .line 344
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_11
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 420
    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 421
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->setResult(I)V

    .line 422
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 423
    const-string v0, "AccountSetupDisclaimerWeb"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "newConfig"

    .prologue
    const v5, 0x7f0c0177

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    const v4, 0x7f100052

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 99
    .local v0, cancelButton:Landroid/widget/Button;
    const v4, 0x7f100051

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 101
    .local v2, doneButton:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 103
    .local v1, cancelButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    .local v3, doneButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_30

    .line 107
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    :cond_30
    if-eqz v3, :cond_3c

    .line 111
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    :cond_3c
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f040019

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 76
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 77
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initWebView()V

    .line 78
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initAcceptButton()V

    .line 79
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initCancelButton()V

    .line 80
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initCheckBox()V

    .line 81
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initUnreadCount()V

    .line 82
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 89
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 92
    :cond_c
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 409
    const/4 v1, 0x4

    if-ne p2, v1, :cond_f

    .line 410
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 411
    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 412
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->setResult(I)V

    .line 413
    const/4 v0, 0x1

    .line 415
    :cond_f
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 374
    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getInstance()Lcom/android/email/activity/setup/AccountSetupCustomer;

    move-result-object v0

    .line 375
    .local v0, customer:Lcom/android/email/activity/setup/AccountSetupCustomer;
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->isCombinedEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 376
    invoke-static {p0}, Lcom/digc/seven/SevenSyncProvider;->checkSevenApkVer(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 380
    :cond_14
    return-void
.end method

.method protected showWebViewProgressDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_30

    .line 316
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 317
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 318
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080481

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$5;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$5;-><init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 336
    :cond_30
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 337
    return-void
.end method
