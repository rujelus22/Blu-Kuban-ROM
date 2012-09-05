.class public Lcom/android/emailcommon/smime/SMIMEHelper;
.super Ljava/lang/Object;
.source "SMIMEHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;,
        Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;,
        Lcom/android/emailcommon/smime/SMIMEHelper$Message;,
        Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;
    }
.end annotation


# static fields
.field private static CRLF_ENDLINE:Ljava/lang/String;

.field public static final ENCRYPTION_ALGORITHMS:[Ljava/lang/String;

.field public static final ENCRYPTION_ALGORITHM_3DES:Ljava/lang/String;

.field public static final ENCRYPTION_ALGORITHM_DES:Ljava/lang/String;

.field public static final ENCRYPTION_ALGORITHM_RC2128:Ljava/lang/String;

.field public static final ENCRYPTION_ALGORITHM_RC240:Ljava/lang/String;

.field public static final ENCRYPTION_ALGORITHM_RC264:Ljava/lang/String;

.field private static final PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

.field public static final SIGNING_ALGORITHMS:[Ljava/lang/String;

.field public static final SIGNING_ALGORITHM_MD5:Ljava/lang/String;

.field public static final SIGNING_ALGORITHM_SHA:Ljava/lang/String;

.field private static final SMIME_PROVIDER_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mMailcapInitDone:Z

.field private static mProviderRegistered:Z


# instance fields
.field private mProps:Ljava/util/Properties;

.field private mSession:Ljavax/mail/Session;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    const-class v0, Lcom/android/emailcommon/smime/SMIMEHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    .line 99
    sget-object v0, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    .line 103
    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHM_SHA:Ljava/lang/String;

    .line 105
    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_MD5:Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHM_MD5:Ljava/lang/String;

    .line 107
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHM_SHA:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHM_MD5:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHMS:[Ljava/lang/String;

    .line 111
    sget-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->dES_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_3DES:Ljava/lang/String;

    .line 113
    sget-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->dES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_DES:Ljava/lang/String;

    .line 115
    sget-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC240:Ljava/lang/String;

    .line 117
    sget-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC264:Ljava/lang/String;

    .line 119
    sget-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC2128:Ljava/lang/String;

    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_3DES:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_DES:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC2128:Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC264:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC240:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHMS:[Ljava/lang/String;

    .line 126
    const-string v0, "\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    .line 129
    const-string v0, "\r\n"

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->CRLF_ENDLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 236
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/smime/SMIMEHelper;->mProps:Ljava/util/Properties;

    .line 231
    iget-object v0, p0, Lcom/android/emailcommon/smime/SMIMEHelper;->mProps:Ljava/util/Properties;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/smime/SMIMEHelper;->mSession:Ljavax/mail/Session;

    .line 237
    invoke-direct {p0}, Lcom/android/emailcommon/smime/SMIMEHelper;->registerProviderIfNecessary()V

    .line 238
    return-void
.end method

.method private checkAttachment(Ljavax/mail/BodyPart;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 957
    const/4 v0, 0x0

    .line 958
    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 959
    if-eqz v1, :cond_18

    .line 961
    const-string v2, "p7m"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "p7s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 962
    const/4 v0, 0x1

    .line 965
    :cond_18
    return v0
.end method

.method private createMimeBodyPart(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Ljavax/mail/internet/MimeBodyPart;
    .registers 16
    .parameter "context"
    .parameter "message"

    .prologue
    .line 340
    const/4 v8, 0x0

    .line 343
    .local v8, ret:Ljavax/mail/internet/MimeBodyPart;
    :try_start_1
    new-instance v2, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v2}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 344
    .local v2, body:Ljavax/mail/internet/MimeBodyPart;
    iget-boolean v10, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mIsHtml:Z

    if-eqz v10, :cond_9b

    iget-object v10, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/smime/SMIMEHelper;->validateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    :goto_11
    iget-boolean v10, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mIsHtml:Z

    if-eqz v10, :cond_a4

    const-string v10, "text/html; charset=\"utf-8\""

    :goto_17
    invoke-virtual {v2, v11, v10}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iget-object v10, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 349
    .local v3, count:I
    if-lez v3, :cond_b4

    .line 350
    new-instance v7, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v7}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 351
    .local v7, multiPart:Ljavax/mail/internet/MimeMultipart;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_28
    if-ge v6, v3, :cond_a8

    .line 352
    new-instance v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 353
    .local v1, attPart:Ljavax/mail/internet/MimeBodyPart;
    iget-object v10, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;

    .line 355
    .local v0, att:Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;
    iget-object v10, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mUri:Landroid/net/Uri;

    if-eqz v10, :cond_98

    .line 357
    iget-object v10, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mUri:Landroid/net/Uri;

    iget-object v11, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {p1, v10, v11}, Lcom/android/emailcommon/smime/UriSchemaUtils;->getFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;

    move-result-object v5

    .line 359
    .local v5, fileName:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    if-eqz v5, :cond_98

    .line 360
    iget-object v10, v5, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;->mFileName:Ljava/lang/String;

    iput-object v10, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    .line 363
    iget-object v10, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mContentId:Ljava/lang/String;

    if-nez v10, :cond_52

    iget v10, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mIsInline:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_75

    .line 364
    :cond_52
    const-string v10, "inline"

    invoke-virtual {v1, v10}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 365
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljavax/mail/internet/MimeBodyPart;->setContentID(Ljava/lang/String;)V

    .line 368
    :cond_75
    iget-object v10, v5, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljavax/mail/internet/MimeBodyPart;->attachFile(Ljava/lang/String;)V

    .line 369
    const-string v10, "X-MS-UrlCompName"

    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v7, v1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 351
    .end local v5           #fileName:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    :cond_98
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 344
    .end local v0           #att:Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;
    .end local v1           #attPart:Ljavax/mail/internet/MimeBodyPart;
    .end local v3           #count:I
    .end local v6           #i:I
    .end local v7           #multiPart:Ljavax/mail/internet/MimeMultipart;
    :cond_9b
    iget-object v10, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/smime/SMIMEHelper;->validateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    goto/16 :goto_11

    :cond_a4
    const-string v10, "text/plain; charset=utf-8"

    goto/16 :goto_17

    .line 378
    .restart local v3       #count:I
    .restart local v6       #i:I
    .restart local v7       #multiPart:Ljavax/mail/internet/MimeMultipart;
    :cond_a8
    invoke-virtual {v7, v2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 379
    new-instance v9, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v9}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 380
    .local v9, tmp:Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v9, v7}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljavax/mail/Multipart;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b3} :catch_b6

    .line 381
    move-object v2, v9

    .line 384
    .end local v6           #i:I
    .end local v7           #multiPart:Ljavax/mail/internet/MimeMultipart;
    .end local v9           #tmp:Ljavax/mail/internet/MimeBodyPart;
    :cond_b4
    move-object v8, v2

    .line 390
    .end local v2           #body:Ljavax/mail/internet/MimeBodyPart;
    .end local v3           #count:I
    :goto_b5
    return-object v8

    .line 386
    :catch_b6
    move-exception v4

    .line 387
    .local v4, ex:Ljava/lang/Exception;
    sget-object v10, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5
.end method

.method private encryptMimeBodyPart(Ljavax/mail/internet/MimeBodyPart;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    .registers 13
    .parameter "part"
    .parameter "recipientCertificates"
    .parameter "encryptionAlgorithm"

    .prologue
    .line 461
    const/4 v5, 0x0

    .line 463
    .local v5, ret:Ljavax/mail/internet/MimeBodyPart;
    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;

    invoke-direct {v1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;-><init>()V

    .line 464
    .local v1, encrypter:Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    array-length v6, p2

    if-ge v3, v6, :cond_12

    .line 465
    aget-object v6, p2, v3

    invoke-virtual {v1, v6}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->addKeyTransRecipient(Ljava/security/cert/X509Certificate;)V

    .line 464
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 469
    :cond_12
    const/4 v0, 0x0

    .line 470
    .local v0, encryptedPart:Ljavax/mail/internet/MimeBodyPart;
    :try_start_13
    invoke-static {p3}, Lcom/android/emailcommon/smime/SMIMEHelper;->getKeySize(Ljava/lang/String;)I

    move-result v4

    .line 471
    .local v4, keySize:I
    if-eqz v4, :cond_21

    .line 472
    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1, p3, v4, v6}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->generate(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;ILjava/lang/String;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    .line 478
    :goto_1f
    move-object v5, v0

    .line 484
    .end local v4           #keySize:I
    :goto_20
    return-object v5

    .line 475
    .restart local v4       #keySize:I
    :cond_21
    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1, p3, v6}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->generate(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_26} :catch_28

    move-result-object v0

    goto :goto_1f

    .line 479
    .end local v4           #keySize:I
    :catch_28
    move-exception v2

    .line 480
    .local v2, ex:Ljava/lang/Exception;
    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method private encryptMimeMessage(Ljavax/mail/internet/MimeMessage;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    .registers 13
    .parameter "message"
    .parameter "recipientCertificates"
    .parameter "encryptionAlgorithm"

    .prologue
    .line 494
    const/4 v5, 0x0

    .line 496
    .local v5, ret:Ljavax/mail/internet/MimeBodyPart;
    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;

    invoke-direct {v1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;-><init>()V

    .line 497
    .local v1, encrypter:Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    array-length v6, p2

    if-ge v3, v6, :cond_12

    .line 498
    aget-object v6, p2, v3

    invoke-virtual {v1, v6}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->addKeyTransRecipient(Ljava/security/cert/X509Certificate;)V

    .line 497
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 503
    :cond_12
    const/4 v0, 0x0

    .line 504
    .local v0, encryptedPart:Ljavax/mail/internet/MimeBodyPart;
    :try_start_13
    invoke-static {p3}, Lcom/android/emailcommon/smime/SMIMEHelper;->getKeySize(Ljava/lang/String;)I

    move-result v4

    .line 505
    .local v4, keySize:I
    if-eqz v4, :cond_21

    .line 506
    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1, p3, v4, v6}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->generate(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;ILjava/lang/String;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    .line 513
    :goto_1f
    move-object v5, v0

    .line 526
    .end local v4           #keySize:I
    :goto_20
    return-object v5

    .line 509
    .restart local v4       #keySize:I
    :cond_21
    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1, p3, v6}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->generate(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_26} :catch_28
    .catch Ljava/security/NoSuchProviderException; {:try_start_13 .. :try_end_26} :catch_49
    .catch Lmyorg/bouncycastle/mail/smime/SMIMEException; {:try_start_13 .. :try_end_26} :catch_6a

    move-result-object v0

    goto :goto_1f

    .line 515
    .end local v4           #keySize:I
    :catch_28
    move-exception v2

    .line 516
    .local v2, ex:Ljava/security/NoSuchAlgorithmException;
    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_20

    .line 518
    .end local v2           #ex:Ljava/security/NoSuchAlgorithmException;
    :catch_49
    move-exception v2

    .line 519
    .local v2, ex:Ljava/security/NoSuchProviderException;
    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v2}, Ljava/security/NoSuchProviderException;->printStackTrace()V

    goto :goto_20

    .line 521
    .end local v2           #ex:Ljava/security/NoSuchProviderException;
    :catch_6a
    move-exception v2

    .line 522
    .local v2, ex:Lmyorg/bouncycastle/mail/smime/SMIMEException;
    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEException;->printStackTrace()V

    goto :goto_20
.end method

.method public static getKeySize(Ljava/lang/String;)I
    .registers 3
    .parameter "algorithm"

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, keySize:I
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC240:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 142
    const/16 v0, 0x28

    .line 148
    :cond_b
    :goto_b
    return v0

    .line 143
    :cond_c
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC264:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 144
    const/16 v0, 0x40

    goto :goto_b

    .line 145
    :cond_17
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC2128:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 146
    const/16 v0, 0x80

    goto :goto_b
.end method

.method private static getStores(Lmyorg/bouncycastle/mail/smime/SMIMESigned;)Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;
    .registers 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 804
    new-instance v0, Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;

    const-string v1, "Collection"

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->getCertificatesAndCRLs(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertStore;

    move-result-object v1

    invoke-virtual {p0}, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->getSignerInfos()Lmyorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;-><init>(Ljava/security/cert/CertStore;Lmyorg/bouncycastle/cms/SignerInformationStore;)V

    return-object v0
.end method

.method private handleAttachment(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 976
    new-instance v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;

    invoke-direct {v2}, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;-><init>()V

    .line 977
    const-string v1, "X-MS-UrlCompName"

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 978
    if-eqz v1, :cond_12

    array-length v3, v1

    if-nez v3, :cond_77

    :cond_12
    const/4 v1, 0x0

    .line 979
    :goto_13
    if-eqz v1, :cond_7a

    .line 980
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 981
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    .line 986
    :goto_1f
    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getSize()I

    move-result v1

    iput v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mSize:I

    .line 987
    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 988
    if-eqz v1, :cond_31

    .line 989
    aget-object v1, v1, v0

    iput-object v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mEncoding:Ljava/lang/String;

    .line 992
    :cond_31
    const-string v1, "Content-ID"

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 993
    const-string v1, "Content-ID"

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 995
    aget-object v3, v1, v0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mContentId:Ljava/lang/String;

    .line 999
    :cond_4f
    const-string v1, "Content-Disposition"

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 1000
    const-string v1, "Content-Disposition"

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1002
    aget-object v1, v1, v0

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1003
    array-length v3, v1

    :goto_66
    if-ge v0, v3, :cond_89

    aget-object v4, v1, v0

    .line 1004
    const-string v5, "inline"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 1005
    iput v6, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mIsInline:I

    .line 1003
    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 978
    :cond_77
    aget-object v1, v1, v0

    goto :goto_13

    .line 983
    :cond_7a
    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    .line 984
    iget-object v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    goto :goto_1f

    .line 1011
    :cond_89
    iput-object p1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mAttachmentBody:Ljavax/mail/BodyPart;

    .line 1012
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    return-void
.end method

.method private handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;,
            Lmyorg/bouncycastle/cms/CMSException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    .prologue
    .line 879
    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 881
    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 882
    new-instance v1, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V

    .line 883
    const-string v2, "pkcs7-signature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 884
    new-instance v0, Lmyorg/bouncycastle/mail/smime/SMIMESigned;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/SMIMESigned;-><init>(Ljavax/mail/internet/MimeMultipart;)V

    .line 886
    const/4 v2, 0x1

    :try_start_27
    iput-boolean v2, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigned:Z

    .line 887
    invoke-static {v0, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->verify(Lmyorg/bouncycastle/mail/smime/SMIMESigned;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mVerified:Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_33

    .line 893
    :cond_2f
    :goto_2f
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleMultipart(Ljavax/mail/Multipart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V

    .line 945
    :cond_32
    :goto_32
    return-void

    .line 888
    :catch_33
    move-exception v0

    .line 889
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 894
    :cond_54
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 895
    invoke-direct {p0, p1}, Lcom/android/emailcommon/smime/SMIMEHelper;->checkAttachment(Ljavax/mail/BodyPart;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 896
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleAttachment(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    goto :goto_32

    .line 898
    :cond_66
    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 899
    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mIsHtml:Z

    .line 900
    iget-boolean v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mIsHtml:Z

    if-eqz v0, :cond_7d

    .line 901
    iput-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    goto :goto_32

    .line 903
    :cond_7d
    iput-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    goto :goto_32

    .line 906
    :cond_80
    const-string v1, "signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 907
    const-string v0, "SMIMEHelper"

    const-string v1, "Signature found!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 908
    :cond_90
    const-string v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_111

    .line 909
    const-string v1, "signed-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 910
    new-instance v0, Lmyorg/bouncycastle/mail/smime/SMIMESigned;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMESigned;-><init>(Ljavax/mail/Part;)V

    .line 911
    invoke-virtual {v0}, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->getContent()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v1

    .line 913
    const/4 v2, 0x1

    :try_start_aa
    iput-boolean v2, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigned:Z

    .line 914
    invoke-static {v0, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->verify(Lmyorg/bouncycastle/mail/smime/SMIMESigned;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mVerified:Z
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b2} :catch_b7

    .line 919
    :goto_b2
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V

    goto/16 :goto_32

    .line 915
    :catch_b7
    move-exception v0

    .line 916
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b2

    .line 920
    :cond_d8
    const-string v1, "enveloped-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 924
    new-instance v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;

    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;-><init>(Ljava/io/InputStream;)V

    .line 926
    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;->getRecipientInfos()Lmyorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v0

    .line 927
    invoke-virtual {v0, p4}, Lmyorg/bouncycastle/cms/RecipientInformationStore;->get(Lmyorg/bouncycastle/cms/RecipientId;)Lmyorg/bouncycastle/cms/RecipientInformation;

    move-result-object v0

    .line 929
    :try_start_f1
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lmyorg/bouncycastle/cms/RecipientInformation;->getContentStream(Ljava/security/Key;Ljava/lang/String;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->toMimeBodyPart(Lmyorg/bouncycastle/cms/CMSTypedStream;)Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;

    move-result-object v0

    .line 931
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_fe} :catch_100

    goto/16 :goto_32

    .line 932
    :catch_100
    move-exception v0

    .line 933
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_32

    .line 935
    :cond_106
    invoke-direct {p0, p1}, Lcom/android/emailcommon/smime/SMIMEHelper;->checkAttachment(Ljavax/mail/BodyPart;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 936
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleAttachment(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    goto/16 :goto_32

    .line 938
    :cond_111
    invoke-direct {p0, p1}, Lcom/android/emailcommon/smime/SMIMEHelper;->checkAttachment(Ljavax/mail/BodyPart;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 939
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleAttachment(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    goto/16 :goto_32

    .line 942
    :cond_11c
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 943
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleAttachment(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    goto/16 :goto_32
.end method

.method private handleMultipart(Ljavax/mail/Multipart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    .registers 9
    .parameter "part"
    .parameter "message"
    .parameter "privateKey"
    .parameter "recId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;,
            Lmyorg/bouncycastle/cms/CMSException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    .prologue
    .line 1025
    invoke-virtual {p1}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 1026
    .local v1, contentType:Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/mail/Multipart;->getCount()I

    move-result v2

    .line 1028
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v2, :cond_15

    .line 1029
    invoke-virtual {p1, v3}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    .line 1030
    .local v0, bodyPart:Ljavax/mail/BodyPart;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V

    .line 1028
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1032
    .end local v0           #bodyPart:Ljavax/mail/BodyPart;
    :cond_15
    return-void
.end method

.method public static varargs joinAddresses([[Ljavax/mail/Address;)[Ljavax/mail/Address;
    .registers 7
    .parameter "addresses"

    .prologue
    .line 295
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljavax/mail/Address;>;"
    move-object v1, p0

    .local v1, arr$:[[Ljavax/mail/Address;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_16

    aget-object v0, v1, v2

    .line 297
    .local v0, addressArray:[Ljavax/mail/Address;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 299
    .end local v0           #addressArray:[Ljavax/mail/Address;
    :cond_16
    const/4 v5, 0x0

    new-array v5, v5, [Ljavax/mail/Address;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavax/mail/Address;

    return-object v5
.end method

.method private static readSignerAndCertificates(Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V
    .registers 13
    .parameter "stores"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 751
    iget-object v4, p0, Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;->mCertStore:Ljava/security/cert/CertStore;

    .line 752
    .local v4, certs:Ljava/security/cert/CertStore;
    iget-object v9, p0, Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;->mSignerInformationStore:Lmyorg/bouncycastle/cms/SignerInformationStore;

    .line 754
    .local v9, signers:Lmyorg/bouncycastle/cms/SignerInformationStore;
    invoke-virtual {v9}, Lmyorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    .line 755
    .local v0, c:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 758
    .local v7, it:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v10

    new-array v10, v10, [Lmyorg/bouncycastle/cms/SignerInformation;

    iput-object v10, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    .line 759
    iget-object v10, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    array-length v10, v10

    new-array v10, v10, [Ljava/security/cert/X509Certificate;

    iput-object v10, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSignatures:[Ljava/security/cert/X509Certificate;

    .line 764
    const/4 v5, 0x0

    .line 765
    .local v5, index:I
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_45

    .line 766
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmyorg/bouncycastle/cms/SignerInformation;

    .line 767
    .local v8, signer:Lmyorg/bouncycastle/cms/SignerInformation;
    invoke-virtual {v8}, Lmyorg/bouncycastle/cms/SignerInformation;->getSID()Lmyorg/bouncycastle/cms/SignerId;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v2

    .line 769
    .local v2, certCollection:Ljava/util/Collection;
    iget-object v10, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    aput-object v8, v10, v5

    .line 771
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 772
    .local v3, certIt:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 773
    .local v1, cert:Ljava/security/cert/X509Certificate;
    iget-object v10, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSignatures:[Ljava/security/cert/X509Certificate;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .local v6, index:I
    aput-object v1, v10, v5

    move v5, v6

    .line 776
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    .end local v2           #certCollection:Ljava/util/Collection;
    .end local v3           #certIt:Ljava/util/Iterator;
    .end local v6           #index:I
    .end local v8           #signer:Lmyorg/bouncycastle/cms/SignerInformation;
    .restart local v5       #index:I
    :cond_45
    return-void
.end method

.method private registerProviderIfNecessary()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 307
    sget-boolean v2, Lcom/android/emailcommon/smime/SMIMEHelper;->mProviderRegistered:Z

    if-eqz v2, :cond_6

    .line 326
    :goto_5
    return-void

    .line 311
    :cond_6
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    .line 313
    .local v1, providers:[Ljava/security/Provider;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 314
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 315
    sput-boolean v4, Lcom/android/emailcommon/smime/SMIMEHelper;->mProviderRegistered:Z

    .line 320
    :cond_1e
    sget-boolean v2, Lcom/android/emailcommon/smime/SMIMEHelper;->mProviderRegistered:Z

    if-nez v2, :cond_2c

    .line 321
    new-instance v2, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 322
    sput-boolean v4, Lcom/android/emailcommon/smime/SMIMEHelper;->mProviderRegistered:Z

    .line 325
    :cond_2c
    invoke-static {}, Lcom/android/emailcommon/smime/SMIMEHelper;->setDefaultMailcap()V

    goto :goto_5

    .line 313
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private static setDefaultMailcap()V
    .registers 2

    .prologue
    .line 259
    sget-boolean v1, Lcom/android/emailcommon/smime/SMIMEHelper;->mMailcapInitDone:Z

    if-eqz v1, :cond_5

    .line 286
    .local v0, mc:Ljavax/activation/MailcapCommandMap;
    :goto_4
    return-void

    .line 262
    .end local v0           #mc:Ljavax/activation/MailcapCommandMap;
    :cond_5
    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    check-cast v0, Ljavax/activation/MailcapCommandMap;

    .line 264
    .restart local v0       #mc:Ljavax/activation/MailcapCommandMap;
    const-string v1, "text/plain;; x-java-content-handler=gnu.mail.handler.TextPlain"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 265
    const-string v1, "text/html;; x-java-content-handler=gnu.mail.handler.TextHtml"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 266
    const-string v1, "text/xml;; x-java-content-handler=gnu.mail.handler.TextXml"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 267
    const-string v1, "multipart/mixed;; x-java-content-handler=gnu.mail.handler.MultipartMixed"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 268
    const-string v1, "message/rfc822;; x-java-content-handler=gnu.mail.handler.MessageRFC822"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 269
    const-string v1, "multipart/alternative;; x-java-content-handler=gnu.mail.handler.MultipartAlternative"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 270
    const-string v1, "application/octet-stream;; x-java-content-handler=gnu.mail.handler.ApplicationOctetStream"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 271
    const-string v1, "application/pkcs7-signature;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.pkcs7_signature"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 273
    const-string v1, "application/pkcs7-mime;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.pkcs7_mime"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 275
    const-string v1, "application/x-pkcs7-signature;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.x_pkcs7_signature"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 277
    const-string v1, "application/x-pkcs7-mime;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.x_pkcs7_mime"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 279
    const-string v1, "multipart/signed;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.multipart_signed"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 281
    invoke-static {v0}, Ljavax/activation/CommandMap;->setDefaultCommandMap(Ljavax/activation/CommandMap;)V

    .line 285
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/emailcommon/smime/SMIMEHelper;->mMailcapInitDone:Z

    goto :goto_4
.end method

.method private setMessage(Ljavax/mail/internet/MimeMessage;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1252
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mTo:[Ljavax/mail/Address;

    if-eqz v0, :cond_b

    .line 1254
    :try_start_4
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mTo:[Ljavax/mail/Address;

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    :try_end_b
    .catch Ljavax/mail/internet/AddressException; {:try_start_4 .. :try_end_b} :catch_99
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_b} :catch_b8

    .line 1261
    :cond_b
    :goto_b
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    if-eqz v0, :cond_14

    .line 1264
    :try_start_f
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V
    :try_end_14
    .catch Ljavax/mail/internet/AddressException; {:try_start_f .. :try_end_14} :catch_d7
    .catch Ljavax/mail/MessagingException; {:try_start_f .. :try_end_14} :catch_f6

    .line 1271
    :cond_14
    :goto_14
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mCC:[Ljavax/mail/Address;

    if-eqz v0, :cond_1f

    .line 1273
    :try_start_18
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mCC:[Ljavax/mail/Address;

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    :try_end_1f
    .catch Ljavax/mail/internet/AddressException; {:try_start_18 .. :try_end_1f} :catch_115
    .catch Ljavax/mail/MessagingException; {:try_start_18 .. :try_end_1f} :catch_134

    .line 1280
    :cond_1f
    :goto_1f
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBCC:[Ljavax/mail/Address;

    if-eqz v0, :cond_2a

    .line 1282
    :try_start_23
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBCC:[Ljavax/mail/Address;

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    :try_end_2a
    .catch Ljavax/mail/internet/AddressException; {:try_start_23 .. :try_end_2a} :catch_153
    .catch Ljavax/mail/MessagingException; {:try_start_23 .. :try_end_2a} :catch_172

    .line 1289
    :cond_2a
    :goto_2a
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mReplyTo:[Ljavax/mail/Address;

    if-eqz v0, :cond_33

    .line 1291
    :try_start_2e
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mReplyTo:[Ljavax/mail/Address;

    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMessage;->setReplyTo([Ljavax/mail/Address;)V
    :try_end_33
    .catch Ljavax/mail/internet/AddressException; {:try_start_2e .. :try_end_33} :catch_191
    .catch Ljavax/mail/MessagingException; {:try_start_2e .. :try_end_33} :catch_1b0

    .line 1298
    :cond_33
    :goto_33
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 1300
    :try_start_37
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljavax/mail/MessagingException; {:try_start_37 .. :try_end_3c} :catch_1cf

    .line 1305
    :cond_3c
    :goto_3c
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mMessageID:Ljava/lang/String;

    if-eqz v0, :cond_47

    .line 1307
    :try_start_40
    const-string v0, "Message-ID"

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mMessageID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljavax/mail/MessagingException; {:try_start_40 .. :try_end_47} :catch_1ee

    .line 1312
    :cond_47
    :goto_47
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mDate:Ljava/lang/String;

    if-eqz v0, :cond_64

    .line 1313
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1315
    new-instance v1, Ljava/util/Date;

    iget-object v2, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mDate:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    :try_start_5f
    const-string v1, "Date"

    invoke-virtual {p1, v1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Ljavax/mail/MessagingException; {:try_start_5f .. :try_end_64} :catch_20d

    .line 1324
    :cond_64
    :goto_64
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    if-eqz v0, :cond_86

    .line 1326
    :try_start_68
    iget-boolean v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mDelivery:Z

    if-eqz v0, :cond_77

    .line 1327
    const-string v0, "Return-Receipt-To"

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    invoke-virtual {v1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    :cond_77
    iget-boolean v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mRead:Z

    if-eqz v0, :cond_86

    .line 1329
    const-string v0, "Disposition-Notification-To"

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    invoke-virtual {v1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljavax/mail/MessagingException; {:try_start_68 .. :try_end_86} :catch_22c

    .line 1335
    :cond_86
    :goto_86
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mImportance:Ljava/lang/String;

    if-eqz v0, :cond_91

    .line 1337
    :try_start_8a
    const-string v0, "Importance"

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mImportance:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Ljavax/mail/MessagingException; {:try_start_8a .. :try_end_91} :catch_232

    .line 1344
    :cond_91
    :goto_91
    :try_start_91
    const-string v0, "MIME-Version"

    const-string v1, "1.0"

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Ljavax/mail/MessagingException; {:try_start_91 .. :try_end_98} :catch_251

    .line 1349
    :goto_98
    return-void

    .line 1255
    :catch_99
    move-exception v0

    .line 1256
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/AddressException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1257
    :catch_b8
    move-exception v0

    .line 1258
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1265
    :catch_d7
    move-exception v0

    .line 1266
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/AddressException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 1267
    :catch_f6
    move-exception v0

    .line 1268
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 1274
    :catch_115
    move-exception v0

    .line 1275
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/AddressException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1276
    :catch_134
    move-exception v0

    .line 1277
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1283
    :catch_153
    move-exception v0

    .line 1284
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/AddressException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1285
    :catch_172
    move-exception v0

    .line 1286
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1292
    :catch_191
    move-exception v0

    .line 1293
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/AddressException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 1294
    :catch_1b0
    move-exception v0

    .line 1295
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 1301
    :catch_1cf
    move-exception v0

    .line 1302
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 1308
    :catch_1ee
    move-exception v0

    .line 1309
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47

    .line 1318
    :catch_20d
    move-exception v0

    .line 1319
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    .line 1330
    :catch_22c
    move-exception v0

    .line 1331
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->printStackTrace()V

    goto/16 :goto_86

    .line 1338
    :catch_232
    move-exception v0

    .line 1339
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    .line 1345
    :catch_251
    move-exception v0

    .line 1347
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->printStackTrace()V

    goto/16 :goto_98
.end method

.method private signMimeMessage(Ljavax/mail/internet/MimeBodyPart;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeMultipart;
    .registers 21
    .parameter "message"
    .parameter "privateKey"
    .parameter "certificate"
    .parameter "signingAlgorithm"

    .prologue
    .line 405
    const/4 v13, 0x0

    .line 408
    .local v13, ret:Ljavax/mail/internet/MimeMultipart;
    :try_start_1
    new-instance v8, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;

    invoke-direct {v8}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;-><init>()V

    .line 409
    .local v8, capabilities:Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;
    sget-object v2, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->dES_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v8, v2}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->addCapability(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 410
    sget-object v2, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->dES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v8, v2}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->addCapability(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 411
    sget-object v2, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/16 v3, 0x80

    invoke-virtual {v8, v2, v3}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->addCapability(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;I)V

    .line 412
    sget-object v2, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/16 v3, 0x40

    invoke-virtual {v8, v2, v3}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->addCapability(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;I)V

    .line 413
    sget-object v2, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/16 v3, 0x28

    invoke-virtual {v8, v2, v3}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->addCapability(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;I)V

    .line 415
    new-instance v7, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 416
    .local v7, attributes:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lmyorg/bouncycastle/asn1/smime/SMIMEEncryptionKeyPreferenceAttribute;

    new-instance v3, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    new-instance v5, Lmyorg/bouncycastle/asn1/x509/X509Name;

    invoke-virtual/range {p3 .. p3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lmyorg/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lmyorg/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/smime/SMIMEEncryptionKeyPreferenceAttribute;-><init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    invoke-virtual {v7, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 419
    new-instance v2, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilitiesAttribute;

    invoke-direct {v2, v8}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilitiesAttribute;-><init>(Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;)V

    invoke-virtual {v7, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 421
    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;

    invoke-direct {v1}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;-><init>()V

    .line 422
    .local v1, signer:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;
    move-object/from16 v4, p4

    .line 423
    .local v4, signingAlgorithmToUse:Ljava/lang/String;
    if-nez v4, :cond_67

    .line 424
    const-string v2, "DSA"

    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    sget-object v4, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    .line 427
    :cond_67
    :goto_67
    new-instance v5, Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v5, v7}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    const/4 v6, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V

    .line 430
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v9, certList:Ljava/util/List;
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    const-string v2, "Collection"

    new-instance v3, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v3, v9}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    sget-object v5, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;

    move-result-object v10

    .line 436
    .local v10, certs:Ljava/security/cert/CertStore;
    invoke-virtual {v1, v10}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->addCertificatesAndCRLs(Ljava/security/cert/CertStore;)V

    .line 438
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v12

    .line 439
    .local v12, props:Ljava/util/Properties;
    const/4 v2, 0x0

    invoke-static {v12, v2}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v14

    .line 441
    .local v14, session:Ljavax/mail/Session;
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->generate(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)Ljavax/mail/internet/MimeMultipart;

    move-result-object v15

    .line 442
    .local v15, signedPart:Ljavax/mail/internet/MimeMultipart;
    move-object v13, v15

    .line 449
    .end local v1           #signer:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;
    .end local v4           #signingAlgorithmToUse:Ljava/lang/String;
    .end local v7           #attributes:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v8           #capabilities:Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;
    .end local v9           #certList:Ljava/util/List;
    .end local v10           #certs:Ljava/security/cert/CertStore;
    .end local v12           #props:Ljava/util/Properties;
    .end local v14           #session:Ljavax/mail/Session;
    .end local v15           #signedPart:Ljavax/mail/internet/MimeMultipart;
    :goto_a0
    return-object v13

    .line 424
    .restart local v1       #signer:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;
    .restart local v4       #signingAlgorithmToUse:Ljava/lang/String;
    .restart local v7       #attributes:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v8       #capabilities:Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;
    :cond_a1
    sget-object v4, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_MD5:Ljava/lang/String;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a3} :catch_a4

    goto :goto_67

    .line 444
    .end local v1           #signer:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;
    .end local v4           #signingAlgorithmToUse:Ljava/lang/String;
    .end local v7           #attributes:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v8           #capabilities:Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;
    :catch_a4
    move-exception v11

    .line 445
    .local v11, ex:Ljava/lang/Exception;
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0
.end method

.method private tryAsn1(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/cms/RecipientId;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1045
    const-string v0, "SMIMEHelper"

    const-string v1, "tryAsn1() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const/4 v0, 0x0

    .line 1047
    const/4 v2, 0x0

    .line 1049
    :try_start_9
    new-instance v1, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    invoke-direct {v1, p1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_87
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_57

    .line 1050
    :try_start_e
    new-instance v2, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;-><init>(Ljava/io/InputStream;)V

    .line 1051
    invoke-virtual {v2}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;->getRecipientInfos()Lmyorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v2

    .line 1052
    invoke-virtual {v2, p4}, Lmyorg/bouncycastle/cms/RecipientInformationStore;->get(Lmyorg/bouncycastle/cms/RecipientId;)Lmyorg/bouncycastle/cms/RecipientInformation;

    move-result-object v2

    .line 1054
    sget-object v3, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Lmyorg/bouncycastle/cms/RecipientInformation;->getContentStream(Ljava/security/Key;Ljava/lang/String;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->toMimeBodyPart(Lmyorg/bouncycastle/cms/CMSTypedStream;)Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;

    move-result-object v2

    .line 1057
    invoke-direct {p0, v2, p5, p2, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_b2

    .line 1059
    const/4 v0, 0x1

    .line 1063
    if-eqz v1, :cond_2e

    .line 1065
    :try_start_2b
    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_36

    .line 1073
    :cond_2e
    :goto_2e
    const-string v1, "SMIMEHelper"

    const-string v2, "tryAsn1() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return v0

    .line 1066
    :catch_36
    move-exception v1

    .line 1067
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    .line 1060
    :catch_57
    move-exception v1

    move-object v1, v2

    .line 1061
    :goto_59
    :try_start_59
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    const-string v3, "Message is not ASN.1 formatted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_b0

    .line 1063
    if-eqz v1, :cond_2e

    .line 1065
    :try_start_62
    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_2e

    .line 1066
    :catch_66
    move-exception v1

    .line 1067
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    .line 1063
    :catchall_87
    move-exception v0

    move-object v1, v2

    :goto_89
    if-eqz v1, :cond_8e

    .line 1065
    :try_start_8b
    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_8f

    .line 1069
    :cond_8e
    :goto_8e
    throw v0

    .line 1066
    :catch_8f
    move-exception v1

    .line 1067
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8e

    .line 1063
    :catchall_b0
    move-exception v0

    goto :goto_89

    .line 1060
    :catch_b2
    move-exception v2

    goto :goto_59
.end method

.method private tryImf(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/cms/RecipientId;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1088
    const-string v0, "SMIMEHelper"

    const-string v1, "tryImf() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const/4 v0, 0x0

    .line 1094
    :try_start_9
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 1095
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v1

    .line 1097
    new-instance v2, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_a4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_62

    .line 1099
    :try_start_17
    new-instance v3, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v3, v1, v2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V

    .line 1101
    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEEnveloped;

    invoke-direct {v1, v3}, Lmyorg/bouncycastle/mail/smime/SMIMEEnveloped;-><init>(Ljavax/mail/internet/MimeMessage;)V

    .line 1103
    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnveloped;->getRecipientInfos()Lmyorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v1

    .line 1104
    invoke-virtual {v1, p4}, Lmyorg/bouncycastle/cms/RecipientInformationStore;->get(Lmyorg/bouncycastle/cms/RecipientId;)Lmyorg/bouncycastle/cms/RecipientInformation;

    move-result-object v1

    .line 1106
    sget-object v3, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, p2, v3}, Lmyorg/bouncycastle/cms/RecipientInformation;->getContentStream(Ljava/security/Key;Ljava/lang/String;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->toMimeBodyPart(Lmyorg/bouncycastle/cms/CMSTypedStream;)Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;

    move-result-object v1

    .line 1109
    invoke-direct {p0, v1, p5, p2, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_ca
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_36} :catch_cc

    .line 1111
    const/4 v0, 0x1

    .line 1115
    if-eqz v2, :cond_3c

    .line 1117
    :try_start_39
    invoke-virtual {v2}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_44

    .line 1124
    :cond_3c
    :goto_3c
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    const-string v2, "tryImf() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return v0

    .line 1118
    :catch_44
    move-exception v1

    .line 1119
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 1112
    :catch_62
    move-exception v1

    move-object v2, v3

    .line 1113
    :goto_64
    :try_start_64
    sget-object v3, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_64 .. :try_end_80} :catchall_ca

    .line 1115
    if-eqz v2, :cond_3c

    .line 1117
    :try_start_82
    invoke-virtual {v2}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_3c

    .line 1118
    :catch_86
    move-exception v1

    .line 1119
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 1115
    :catchall_a4
    move-exception v0

    move-object v2, v3

    :goto_a6
    if-eqz v2, :cond_ab

    .line 1117
    :try_start_a8
    invoke-virtual {v2}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_ac

    .line 1120
    :cond_ab
    :goto_ab
    throw v0

    .line 1118
    :catch_ac
    move-exception v1

    .line 1119
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 1115
    :catchall_ca
    move-exception v0

    goto :goto_a6

    .line 1112
    :catch_cc
    move-exception v1

    goto :goto_64
.end method

.method private tryOtherFormat(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/cms/RecipientId;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z
    .registers 12
    .parameter "file"
    .parameter "privateKey"
    .parameter "certificate"
    .parameter "recId"
    .parameter "message"

    .prologue
    .line 1130
    const/4 v4, 0x0

    .line 1134
    .local v4, ret:Z
    const/4 v1, 0x0

    .line 1137
    .local v1, fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    :try_start_2
    new-instance v2, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_1c

    .line 1138
    .end local v1           #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .local v2, fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    :try_start_7
    invoke-static {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->toMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v3

    .line 1139
    .local v3, res:Ljavax/mail/internet/MimeBodyPart;
    invoke-direct {p0, v3, p5, p2, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_3a

    .line 1140
    const/4 v4, 0x1

    .line 1144
    if-eqz v2, :cond_3d

    .line 1146
    :try_start_11
    invoke-virtual {v2}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_16

    move-object v1, v2

    .line 1153
    .end local v2           #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .end local v3           #res:Ljavax/mail/internet/MimeBodyPart;
    .restart local v1       #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    :cond_15
    :goto_15
    return v4

    .line 1147
    .end local v1           #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .restart local v2       #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .restart local v3       #res:Ljavax/mail/internet/MimeBodyPart;
    :catch_16
    move-exception v0

    .line 1148
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 1149
    .end local v2           #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .restart local v1       #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    goto :goto_15

    .line 1141
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #res:Ljavax/mail/internet/MimeBodyPart;
    :catch_1c
    move-exception v0

    .line 1142
    .restart local v0       #ex:Ljava/lang/Exception;
    :goto_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2b

    .line 1144
    if-eqz v1, :cond_15

    .line 1146
    :try_start_22
    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_15

    .line 1147
    :catch_26
    move-exception v0

    .line 1148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 1144
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_2b
    move-exception v5

    :goto_2c
    if-eqz v1, :cond_31

    .line 1146
    :try_start_2e
    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    .line 1149
    :cond_31
    :goto_31
    throw v5

    .line 1147
    :catch_32
    move-exception v0

    .line 1148
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31

    .line 1144
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .restart local v2       #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    :catchall_37
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .restart local v1       #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    goto :goto_2c

    .line 1141
    .end local v1           #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .restart local v2       #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    :catch_3a
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .restart local v1       #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    goto :goto_1d

    .end local v1           #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .restart local v2       #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .restart local v3       #res:Ljavax/mail/internet/MimeBodyPart;
    :cond_3d
    move-object v1, v2

    .end local v2           #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .restart local v1       #fis:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    goto :goto_15
.end method

.method private static validateText(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "text"

    .prologue
    .line 862
    if-nez p0, :cond_4

    .line 863
    const/4 v1, 0x0

    .line 866
    :goto_3
    return-object v1

    .line 865
    :cond_4
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 866
    .local v0, matcher:Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->CRLF_ENDLINE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->CRLF_ENDLINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private static verify(Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z
    .registers 7
    .parameter "stores"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 844
    const/4 v1, 0x0

    .line 846
    .local v1, ret:Z
    invoke-static {p0, p1}, Lcom/android/emailcommon/smime/SMIMEHelper;->readSignerAndCertificates(Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    .line 848
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSignatures:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    .line 849
    iget-object v2, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSignatures:[Ljava/security/cert/X509Certificate;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lmyorg/bouncycastle/cms/SignerInformation;->verify(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v1

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 852
    :cond_1b
    return v1
.end method

.method private static verify(Lmyorg/bouncycastle/mail/smime/SMIMESigned;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z
    .registers 3
    .parameter "s"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 829
    invoke-static {p0}, Lcom/android/emailcommon/smime/SMIMEHelper;->getStores(Lmyorg/bouncycastle/mail/smime/SMIMESigned;)Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/emailcommon/smime/SMIMEHelper;->verify(Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public decryptMessage(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1218
    const/4 v6, 0x0

    .line 1220
    :try_start_1
    new-instance v4, Lmyorg/bouncycastle/cms/RecipientId;

    invoke-direct {v4}, Lmyorg/bouncycastle/cms/RecipientId;-><init>()V

    .line 1222
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Lmyorg/bouncycastle/cms/RecipientId;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 1223
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lmyorg/bouncycastle/cms/RecipientId;->setIssuer([B)V

    .line 1225
    new-instance v5, Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    invoke-direct {v5}, Lcom/android/emailcommon/smime/SMIMEHelper$Message;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1229
    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/smime/SMIMEHelper;->tryAsn1(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/cms/RecipientId;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1230
    const-string v0, "SMIMEHelper"

    const-string v1, "IMF message - decrypted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :goto_2e
    return-object v5

    :cond_2f
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1232
    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/smime/SMIMEHelper;->tryImf(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/cms/RecipientId;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1233
    const-string v0, "SMIMEHelper"

    const-string v1, "ASN1 message - decrypted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_41

    goto :goto_2e

    .line 1238
    :catch_41
    move-exception v0

    .line 1239
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_61
    move-object v5, v6

    goto :goto_2e

    :cond_63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1235
    :try_start_67
    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/smime/SMIMEHelper;->tryOtherFormat(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/cms/RecipientId;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_41

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_2e
.end method

.method public encryptMessage(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;ZLjava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/io/OutputStream;)V
    .registers 30
    .parameter "context"
    .parameter "message"
    .parameter "signMessage"
    .parameter "encryptionAlgorithm"
    .parameter "signingAlgorithm"
    .parameter "privateKey"
    .parameter "certificate"
    .parameter "recipientCertificates"
    .parameter "out"

    .prologue
    .line 593
    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    const-string v17, "encryptMessage() start"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v12, 0x0

    .line 603
    .local v12, pos:Ljava/io/PipedOutputStream;
    const/4 v10, 0x0

    .line 606
    .local v10, pis:Ljava/io/PipedInputStream;
    if-nez p4, :cond_d

    .line 608
    :try_start_b
    sget-object p4, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_3DES:Ljava/lang/String;

    .line 611
    :cond_d
    invoke-direct/range {p0 .. p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->createMimeBodyPart(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v8

    .line 620
    .local v8, mimeBodyPart:Ljavax/mail/internet/MimeBodyPart;
    const/4 v6, 0x0

    .line 621
    .local v6, encryptedPart:Ljavax/mail/internet/MimeBodyPart;
    if-eqz p3, :cond_82

    .line 622
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p5

    invoke-direct {v0, v8, v1, v2, v3}, Lcom/android/emailcommon/smime/SMIMEHelper;->signMimeMessage(Ljavax/mail/internet/MimeBodyPart;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeMultipart;

    move-result-object v15

    .line 624
    .local v15, signedPart:Ljavax/mail/internet/MimeMultipart;
    new-instance v14, Ljavax/mail/internet/MimeMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper;->mSession:Ljavax/mail/Session;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 626
    .local v14, signedMessage:Ljavax/mail/internet/MimeMessage;
    invoke-virtual {v14, v15}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 627
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p4

    invoke-direct {v0, v14, v1, v2}, Lcom/android/emailcommon/smime/SMIMEHelper;->encryptMimeMessage(Ljavax/mail/internet/MimeMessage;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v6

    .line 642
    .end local v14           #signedMessage:Ljavax/mail/internet/MimeMessage;
    .end local v15           #signedPart:Ljavax/mail/internet/MimeMultipart;
    :cond_3a
    new-instance v13, Ljava/io/PipedOutputStream;

    invoke-direct {v13}, Ljava/io/PipedOutputStream;-><init>()V
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_195
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_3f} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3f} :catch_1a1

    .line 643
    .end local v12           #pos:Ljava/io/PipedOutputStream;
    .local v13, pos:Ljava/io/PipedOutputStream;
    :try_start_3f
    new-instance v11, Ljava/io/PipedInputStream;

    const/16 v16, 0x2000

    move/from16 v0, v16

    invoke-direct {v11, v13, v0}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;I)V
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_1e2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3f .. :try_end_48} :catch_1f0
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_1e9

    .line 646
    .end local v10           #pis:Ljava/io/PipedInputStream;
    .local v11, pis:Ljava/io/PipedInputStream;
    :try_start_48
    new-instance v16, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;

    const/16 v17, 0x2000

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v6, v13, v2}, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;-><init>(Lcom/android/emailcommon/smime/SMIMEHelper;Ljavax/mail/internet/MimeBodyPart;Ljava/io/PipedOutputStream;I)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->start()V

    .line 659
    new-instance v5, Ljavax/mail/internet/EASMIMEMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper;->mSession:Ljavax/mail/Session;

    move-object/from16 v16, v0

    const/16 v17, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v5, v0, v11, v1}, Ljavax/mail/internet/EASMIMEMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;I)V

    .line 661
    .local v5, encryptedMessage:Ljavax/mail/internet/MimeMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/emailcommon/smime/SMIMEHelper;->setMessage(Ljavax/mail/internet/MimeMessage;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    .line 663
    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V
    :try_end_75
    .catchall {:try_start_48 .. :try_end_75} :catchall_1e5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_48 .. :try_end_75} :catch_1f4
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_75} :catch_1ec

    .line 697
    if-eqz v11, :cond_7a

    .line 699
    :try_start_77
    invoke-virtual {v11}, Ljava/io/PipedInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_9f

    .line 704
    :cond_7a
    :goto_7a
    if-eqz v13, :cond_1f9

    .line 706
    :try_start_7c
    invoke-virtual {v13}, Ljava/io/PipedOutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_a4

    move-object v10, v11

    .end local v11           #pis:Ljava/io/PipedInputStream;
    .restart local v10       #pis:Ljava/io/PipedInputStream;
    move-object v12, v13

    .line 712
    .end local v5           #encryptedMessage:Ljavax/mail/internet/MimeMessage;
    .end local v6           #encryptedPart:Ljavax/mail/internet/MimeBodyPart;
    .end local v8           #mimeBodyPart:Ljavax/mail/internet/MimeBodyPart;
    .end local v13           #pos:Ljava/io/PipedOutputStream;
    .restart local v12       #pos:Ljava/io/PipedOutputStream;
    :cond_81
    :goto_81
    return-void

    .line 630
    .restart local v6       #encryptedPart:Ljavax/mail/internet/MimeBodyPart;
    .restart local v8       #mimeBodyPart:Ljavax/mail/internet/MimeBodyPart;
    :cond_82
    :try_start_82
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p4

    invoke-direct {v0, v8, v1, v2}, Lcom/android/emailcommon/smime/SMIMEHelper;->encryptMimeBodyPart(Ljavax/mail/internet/MimeBodyPart;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_195
    .catch Ljava/lang/OutOfMemoryError; {:try_start_82 .. :try_end_8b} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8b} :catch_1a1

    move-result-object v6

    .line 632
    if-nez v6, :cond_3a

    .line 697
    if-eqz v10, :cond_91

    .line 699
    :try_start_90
    throw v10
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_91} :catch_9a

    .line 704
    :cond_91
    :goto_91
    if-eqz v12, :cond_81

    .line 706
    :try_start_93
    throw v12
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_94} :catch_95

    goto :goto_81

    .line 707
    :catch_95
    move-exception v4

    .line 708
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81

    .line 700
    .end local v4           #e:Ljava/io/IOException;
    :catch_9a
    move-exception v4

    .line 701
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_91

    .line 700
    .end local v4           #e:Ljava/io/IOException;
    .end local v10           #pis:Ljava/io/PipedInputStream;
    .end local v12           #pos:Ljava/io/PipedOutputStream;
    .restart local v5       #encryptedMessage:Ljavax/mail/internet/MimeMessage;
    .restart local v11       #pis:Ljava/io/PipedInputStream;
    .restart local v13       #pos:Ljava/io/PipedOutputStream;
    :catch_9f
    move-exception v4

    .line 701
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    .line 707
    .end local v4           #e:Ljava/io/IOException;
    :catch_a4
    move-exception v4

    .line 708
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v10, v11

    .end local v11           #pis:Ljava/io/PipedInputStream;
    .restart local v10       #pis:Ljava/io/PipedInputStream;
    move-object v12, v13

    .line 709
    .end local v13           #pos:Ljava/io/PipedOutputStream;
    .restart local v12       #pos:Ljava/io/PipedOutputStream;
    goto :goto_81

    .line 664
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #encryptedMessage:Ljavax/mail/internet/MimeMessage;
    .end local v6           #encryptedPart:Ljavax/mail/internet/MimeBodyPart;
    .end local v8           #mimeBodyPart:Ljavax/mail/internet/MimeBodyPart;
    :catch_ab
    move-exception v9

    .line 665
    .local v9, oe:Ljava/lang/OutOfMemoryError;
    :goto_ac
    :try_start_ac
    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "After - Runtime.getRuntime().freeMemory() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "After - Runtime.getRuntime().maxMemory() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "After - Runtime.getRuntime().totalMemory() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "After - getNativeHeapAllocatedSize : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "After - getNativeHeapFreeSize : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "After - getNativeHeapSize : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception caught in encryptMessage() :  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    throw v9
    :try_end_195
    .catchall {:try_start_ac .. :try_end_195} :catchall_195

    .line 697
    .end local v9           #oe:Ljava/lang/OutOfMemoryError;
    :catchall_195
    move-exception v16

    :goto_196
    if-eqz v10, :cond_19b

    .line 699
    :try_start_198
    invoke-virtual {v10}, Ljava/io/PipedInputStream;->close()V
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19b} :catch_1d8

    .line 704
    :cond_19b
    :goto_19b
    if-eqz v12, :cond_1a0

    .line 706
    :try_start_19d
    invoke-virtual {v12}, Ljava/io/PipedOutputStream;->close()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a0} :catch_1dd

    .line 709
    :cond_1a0
    :goto_1a0
    throw v16

    .line 693
    :catch_1a1
    move-exception v7

    .line 694
    .local v7, ex:Ljava/lang/Exception;
    :goto_1a2
    :try_start_1a2
    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception caught: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c1
    .catchall {:try_start_1a2 .. :try_end_1c1} :catchall_195

    .line 697
    if-eqz v10, :cond_1c6

    .line 699
    :try_start_1c3
    invoke-virtual {v10}, Ljava/io/PipedInputStream;->close()V
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c6} :catch_1d3

    .line 704
    :cond_1c6
    :goto_1c6
    if-eqz v12, :cond_81

    .line 706
    :try_start_1c8
    invoke-virtual {v12}, Ljava/io/PipedOutputStream;->close()V
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1cb} :catch_1cd

    goto/16 :goto_81

    .line 707
    :catch_1cd
    move-exception v4

    .line 708
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_81

    .line 700
    .end local v4           #e:Ljava/io/IOException;
    :catch_1d3
    move-exception v4

    .line 701
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c6

    .line 700
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #ex:Ljava/lang/Exception;
    :catch_1d8
    move-exception v4

    .line 701
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19b

    .line 707
    .end local v4           #e:Ljava/io/IOException;
    :catch_1dd
    move-exception v4

    .line 708
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a0

    .line 697
    .end local v4           #e:Ljava/io/IOException;
    .end local v12           #pos:Ljava/io/PipedOutputStream;
    .restart local v6       #encryptedPart:Ljavax/mail/internet/MimeBodyPart;
    .restart local v8       #mimeBodyPart:Ljavax/mail/internet/MimeBodyPart;
    .restart local v13       #pos:Ljava/io/PipedOutputStream;
    :catchall_1e2
    move-exception v16

    move-object v12, v13

    .end local v13           #pos:Ljava/io/PipedOutputStream;
    .restart local v12       #pos:Ljava/io/PipedOutputStream;
    goto :goto_196

    .end local v10           #pis:Ljava/io/PipedInputStream;
    .end local v12           #pos:Ljava/io/PipedOutputStream;
    .restart local v11       #pis:Ljava/io/PipedInputStream;
    .restart local v13       #pos:Ljava/io/PipedOutputStream;
    :catchall_1e5
    move-exception v16

    move-object v10, v11

    .end local v11           #pis:Ljava/io/PipedInputStream;
    .restart local v10       #pis:Ljava/io/PipedInputStream;
    move-object v12, v13

    .end local v13           #pos:Ljava/io/PipedOutputStream;
    .restart local v12       #pos:Ljava/io/PipedOutputStream;
    goto :goto_196

    .line 693
    .end local v12           #pos:Ljava/io/PipedOutputStream;
    .restart local v13       #pos:Ljava/io/PipedOutputStream;
    :catch_1e9
    move-exception v7

    move-object v12, v13

    .end local v13           #pos:Ljava/io/PipedOutputStream;
    .restart local v12       #pos:Ljava/io/PipedOutputStream;
    goto :goto_1a2

    .end local v10           #pis:Ljava/io/PipedInputStream;
    .end local v12           #pos:Ljava/io/PipedOutputStream;
    .restart local v11       #pis:Ljava/io/PipedInputStream;
    .restart local v13       #pos:Ljava/io/PipedOutputStream;
    :catch_1ec
    move-exception v7

    move-object v10, v11

    .end local v11           #pis:Ljava/io/PipedInputStream;
    .restart local v10       #pis:Ljava/io/PipedInputStream;
    move-object v12, v13

    .end local v13           #pos:Ljava/io/PipedOutputStream;
    .restart local v12       #pos:Ljava/io/PipedOutputStream;
    goto :goto_1a2

    .line 664
    .end local v12           #pos:Ljava/io/PipedOutputStream;
    .restart local v13       #pos:Ljava/io/PipedOutputStream;
    :catch_1f0
    move-exception v9

    move-object v12, v13

    .end local v13           #pos:Ljava/io/PipedOutputStream;
    .restart local v12       #pos:Ljava/io/PipedOutputStream;
    goto/16 :goto_ac

    .end local v10           #pis:Ljava/io/PipedInputStream;
    .end local v12           #pos:Ljava/io/PipedOutputStream;
    .restart local v11       #pis:Ljava/io/PipedInputStream;
    .restart local v13       #pos:Ljava/io/PipedOutputStream;
    :catch_1f4
    move-exception v9

    move-object v10, v11

    .end local v11           #pis:Ljava/io/PipedInputStream;
    .restart local v10       #pis:Ljava/io/PipedInputStream;
    move-object v12, v13

    .end local v13           #pos:Ljava/io/PipedOutputStream;
    .restart local v12       #pos:Ljava/io/PipedOutputStream;
    goto/16 :goto_ac

    .end local v10           #pis:Ljava/io/PipedInputStream;
    .end local v12           #pos:Ljava/io/PipedOutputStream;
    .restart local v5       #encryptedMessage:Ljavax/mail/internet/MimeMessage;
    .restart local v11       #pis:Ljava/io/PipedInputStream;
    .restart local v13       #pos:Ljava/io/PipedOutputStream;
    :cond_1f9
    move-object v10, v11

    .end local v11           #pis:Ljava/io/PipedInputStream;
    .restart local v10       #pis:Ljava/io/PipedInputStream;
    move-object v12, v13

    .end local v13           #pos:Ljava/io/PipedOutputStream;
    .restart local v12       #pos:Ljava/io/PipedOutputStream;
    goto/16 :goto_81
.end method

.method public parseSignedMessage(Ljava/io/InputStream;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    .registers 9
    .parameter "is"

    .prologue
    .line 1164
    const/4 v2, 0x0

    .line 1167
    .local v2, ret:Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    :try_start_1
    new-instance v3, Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    invoke-direct {v3}, Lcom/android/emailcommon/smime/SMIMEHelper$Message;-><init>()V

    .line 1168
    .local v3, tmp:Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigned:Z

    .line 1169
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    .line 1170
    .local v0, bodyPart:Ljavax/mail/internet/MimeBodyPart;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_15

    .line 1172
    move-object v2, v3

    .line 1177
    .end local v0           #bodyPart:Ljavax/mail/internet/MimeBodyPart;
    .end local v3           #tmp:Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    :goto_14
    return-object v2

    .line 1173
    :catch_15
    move-exception v1

    .line 1174
    .local v1, ex:Ljava/lang/Exception;
    sget-object v4, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public parseSignedMessage(Ljava/io/InputStream;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    .registers 12
    .parameter "is"
    .parameter "privateKey"
    .parameter "certificate"

    .prologue
    .line 1187
    const/4 v3, 0x0

    .line 1191
    .local v3, ret:Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    :try_start_1
    new-instance v2, Lmyorg/bouncycastle/cms/RecipientId;

    invoke-direct {v2}, Lmyorg/bouncycastle/cms/RecipientId;-><init>()V

    .line 1193
    .local v2, recId:Lmyorg/bouncycastle/cms/RecipientId;
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmyorg/bouncycastle/cms/RecipientId;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 1194
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lmyorg/bouncycastle/cms/RecipientId;->setIssuer([B)V

    .line 1196
    new-instance v4, Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    invoke-direct {v4}, Lcom/android/emailcommon/smime/SMIMEHelper$Message;-><init>()V

    .line 1197
    .local v4, tmp:Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigned:Z

    .line 1198
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    .line 1199
    .local v0, bodyPart:Ljavax/mail/internet/MimeBodyPart;
    invoke-direct {p0, v0, v4, p2, v2}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2a

    .line 1201
    move-object v3, v4

    .line 1206
    .end local v0           #bodyPart:Ljavax/mail/internet/MimeBodyPart;
    .end local v2           #recId:Lmyorg/bouncycastle/cms/RecipientId;
    .end local v4           #tmp:Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    :goto_29
    return-object v3

    .line 1202
    :catch_2a
    move-exception v1

    .line 1203
    .local v1, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public signMessage(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 14
    .parameter "context"
    .parameter "message"
    .parameter "privateKey"
    .parameter "certificate"
    .parameter "signingAlgorithm"
    .parameter "out"

    .prologue
    .line 543
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->createMimeBodyPart(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    .line 550
    .local v0, body:Ljavax/mail/internet/MimeBodyPart;
    if-eqz v0, :cond_1f

    .line 551
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/android/emailcommon/smime/SMIMEHelper;->signMimeMessage(Ljavax/mail/internet/MimeBodyPart;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeMultipart;

    move-result-object v3

    .line 553
    .local v3, msg:Ljavax/mail/internet/MimeMultipart;
    if-eqz v3, :cond_1f

    .line 555
    new-instance v2, Ljavax/mail/internet/MimeMessage;

    iget-object v4, p0, Lcom/android/emailcommon/smime/SMIMEHelper;->mSession:Ljavax/mail/Session;

    invoke-direct {v2, v4}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 556
    .local v2, mimeMsg:Ljavax/mail/internet/MimeMessage;
    invoke-direct {p0, v2, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->setMessage(Ljavax/mail/internet/MimeMessage;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    .line 559
    :try_start_16
    invoke-virtual {v2, v3}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 560
    invoke-virtual {v2}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    .line 561
    invoke-virtual {v2, p6}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1f
    .catch Ljavax/mail/MessagingException; {:try_start_16 .. :try_end_1f} :catch_20
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1f} :catch_41

    .line 571
    .end local v2           #mimeMsg:Ljavax/mail/internet/MimeMessage;
    .end local v3           #msg:Ljavax/mail/internet/MimeMultipart;
    :cond_1f
    :goto_1f
    return-void

    .line 562
    .restart local v2       #mimeMsg:Ljavax/mail/internet/MimeMessage;
    .restart local v3       #msg:Ljavax/mail/internet/MimeMultipart;
    :catch_20
    move-exception v1

    .line 563
    .local v1, ex:Ljavax/mail/MessagingException;
    sget-object v4, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->printStackTrace()V

    goto :goto_1f

    .line 565
    .end local v1           #ex:Ljavax/mail/MessagingException;
    :catch_41
    move-exception v1

    .line 566
    .local v1, ex:Ljava/io/IOException;
    sget-object v4, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f
.end method
