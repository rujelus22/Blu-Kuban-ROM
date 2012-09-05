.class public Lcom/sprint/smps/util/Utilities;
.super Landroid/telephony/PhoneStateListener;
.source "Utilities.java"


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0x7530

.field public static final SOCKET_READ_TIMEOUT:I = 0x7530

.field public static final SYSPROPS_NAI:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static sNai:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/sprint/smps/util/Utilities;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/util/Utilities;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/util/Utilities;->sNai:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method public static getEncryptedNAI()Ljava/lang/String;
    .registers 16

    .prologue
    .line 106
    const-string v0, "001"

    .line 107
    .local v0, VERSION:Ljava/lang/String;
    const-string v8, ""

    .line 111
    .local v8, payload:Ljava/lang/String;
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, timestamp:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/sprint/smps/properties/Properties;->nai:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, naitimestamp:Ljava/lang/String;
    const-string v13, "UTF8"

    invoke-virtual {v7, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 116
    .local v1, bytes:[B
    sget-boolean v13, Lcom/sprint/smps/properties/Properties;->useTestServer:Z

    if-eqz v13, :cond_88

    .line 117
    sget-object v13, Lcom/sprint/smps/properties/Properties;->app:Landroid/app/Application;

    invoke-virtual {v13}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f040001

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 121
    .local v10, stream:Ljava/io/InputStream;
    :goto_40
    const-string v13, "X.509"

    invoke-static {v13}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 122
    .local v3, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v3, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 123
    .local v2, c:Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 127
    .local v9, pubKey:Ljava/security/PublicKey;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 129
    const-string v13, "RSA/ECB/OAEPWithSHA1AndMGF1Padding"

    const-string v14, "BC"

    invoke-static {v13, v14}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 130
    .local v4, cipher:Ljavax/crypto/Cipher;
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v11

    .line 133
    .local v11, temp:Ljava/security/Provider;
    const/4 v13, 0x1

    invoke-virtual {v4, v13, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 134
    invoke-virtual {v4, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 137
    .local v5, cipherData:[B
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "001"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/sprint/smps/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 139
    sget-boolean v13, Lcom/sprint/smps/properties/Properties;->emulatorTesting:Z

    if-eqz v13, :cond_87

    .line 143
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide/high16 v14, 0x4010

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->println(D)V

    .line 154
    .end local v1           #bytes:[B
    .end local v2           #c:Ljava/security/cert/Certificate;
    .end local v3           #cf:Ljava/security/cert/CertificateFactory;
    .end local v4           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #cipherData:[B
    .end local v7           #naitimestamp:Ljava/lang/String;
    .end local v9           #pubKey:Ljava/security/PublicKey;
    .end local v10           #stream:Ljava/io/InputStream;
    .end local v11           #temp:Ljava/security/Provider;
    .end local v12           #timestamp:Ljava/lang/String;
    :cond_87
    :goto_87
    return-object v8

    .line 119
    .restart local v1       #bytes:[B
    .restart local v7       #naitimestamp:Ljava/lang/String;
    .restart local v12       #timestamp:Ljava/lang/String;
    :cond_88
    sget-object v13, Lcom/sprint/smps/properties/Properties;->app:Landroid/app/Application;

    invoke-virtual {v13}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v14, 0x7f04

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_97
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_97} :catch_99
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_97} :catch_a5

    move-result-object v10

    .restart local v10       #stream:Ljava/io/InputStream;
    goto :goto_40

    .line 146
    .end local v1           #bytes:[B
    .end local v7           #naitimestamp:Ljava/lang/String;
    .end local v10           #stream:Ljava/io/InputStream;
    .end local v12           #timestamp:Ljava/lang/String;
    :catch_99
    move-exception v6

    .line 147
    .local v6, e:Ljava/security/cert/CertificateException;
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v14, "RSA Encryption failed: CertificateException."

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_87

    .line 149
    .end local v6           #e:Ljava/security/cert/CertificateException;
    :catch_a5
    move-exception v6

    .line 150
    .local v6, e:Ljava/lang/Exception;
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v14, "RSA Encryption failed: Exception."

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_87
.end method

.method public static getMdn(Landroid/app/Activity;)Ljava/lang/String;
    .registers 5
    .parameter "activity"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, mdn:Ljava/lang/String;
    sget-boolean v2, Lcom/sprint/smps/properties/Properties;->emulatorTesting:Z

    if-eqz v2, :cond_d

    .line 58
    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_c
    :goto_c
    return-object v0

    .line 61
    :cond_d
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 62
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1b

    .line 63
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_1b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_c

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static getNai(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3
    .parameter "act"

    .prologue
    .line 74
    sget-object v1, Lcom/sprint/smps/util/Utilities;->sNai:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 78
    :try_start_4
    sget-boolean v1, Lcom/sprint/smps/properties/Properties;->emulatorTesting:Z

    if-eqz v1, :cond_14

    .line 80
    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sprint/smps/util/Utilities;->sNai:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_23
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_21

    .line 101
    :cond_11
    :goto_11
    sget-object v1, Lcom/sprint/smps/util/Utilities;->sNai:Ljava/lang/String;

    return-object v1

    .line 85
    :cond_14
    :try_start_14
    new-instance v0, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v0, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, sysprops:Lcom/sprint/internal/SystemProperties;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sprint/smps/util/Utilities;->sNai:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_23
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_20} :catch_21

    goto :goto_11

    .line 91
    .end local v0           #sysprops:Lcom/sprint/internal/SystemProperties;
    :catch_21
    move-exception v1

    goto :goto_11

    .line 93
    :catchall_23
    move-exception v1

    .line 97
    throw v1
.end method

.method public static isCDMA(Landroid/app/Activity;)Z
    .registers 5
    .parameter "activity"

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, isCDMA:Z
    sget-boolean v3, Lcom/sprint/smps/properties/Properties;->emulatorTesting:Z

    if-nez v3, :cond_23

    .line 162
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 163
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_22

    .line 165
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 166
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_22

    .line 167
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 168
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_22

    .line 170
    const/4 v2, 0x1

    .line 177
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_22
    :goto_22
    return v2

    .line 175
    :cond_23
    const/4 v2, 0x1

    goto :goto_22
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .registers 5
    .parameter "value"

    .prologue
    .line 182
    const/4 v1, 0x1

    .line 183
    .local v1, numeric:Z
    if-eqz p0, :cond_a

    .line 185
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_b

    .line 195
    .end local v0           #i:I
    :cond_a
    :goto_a
    return v1

    .line 187
    .restart local v0       #i:I
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-le v2, v3, :cond_1d

    .line 189
    :cond_1b
    const/4 v1, 0x0

    .line 190
    goto :goto_a

    .line 185
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 11
    .parameter "title"
    .parameter "msg"
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 221
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 222
    return-void
.end method

.method public static showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V
    .registers 12
    .parameter "title"
    .parameter "msg"
    .parameter "context"
    .parameter "listener"
    .parameter "isCancelable"

    .prologue
    const/4 v2, 0x0

    .line 216
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 217
    return-void
.end method

.method public static showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .registers 6
    .parameter "title"
    .parameter "msg"
    .parameter "context"
    .parameter "view"

    .prologue
    .line 201
    move-object v1, p3

    .line 204
    .local v1, viewToHaveFocus:Landroid/view/View;
    new-instance v0, Lcom/sprint/smps/util/Utilities$1;

    invoke-direct {v0, v1}, Lcom/sprint/smps/util/Utilities$1;-><init>(Landroid/view/View;)V

    .line 211
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p0, p1, p2, v0}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 212
    return-void
.end method

.method public static showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 13
    .parameter "title"
    .parameter "msg"
    .parameter "posTitle"
    .parameter "negTitle"
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 226
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 227
    return-void
.end method

.method public static showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V
    .registers 10
    .parameter "title"
    .parameter "msg"
    .parameter "posTitle"
    .parameter "negTitle"
    .parameter "context"
    .parameter "listener"
    .parameter "isCancelable"

    .prologue
    .line 232
    if-eqz p1, :cond_39

    if-eqz p4, :cond_39

    .line 234
    const-string v1, "OK"

    .line 235
    .local v1, pos:Ljava/lang/String;
    if-eqz p2, :cond_11

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 236
    move-object v1, p2

    .line 238
    :cond_11
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 241
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 242
    invoke-virtual {v2, v1, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    if-eqz p3, :cond_2f

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 245
    invoke-virtual {v0, p3, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    :cond_2f
    invoke-virtual {v0, p6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 250
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 253
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    .end local v1           #pos:Ljava/lang/String;
    :cond_39
    return-void
.end method

.method public static vibrate(Landroid/app/Activity;J)V
    .registers 5
    .parameter "activity"
    .parameter "lengthMilliseconds"

    .prologue
    .line 46
    sget-boolean v1, Lcom/sprint/smps/properties/Properties;->emulatorTesting:Z

    if-nez v1, :cond_f

    .line 48
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 49
    .local v0, vibrator:Landroid/os/Vibrator;
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 51
    .end local v0           #vibrator:Landroid/os/Vibrator;
    :cond_f
    return-void
.end method
