.class public Lcom/android/emailcommon/internet/Rfc822Output;
.super Ljava/lang/Object;
.source "Rfc822Output.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;
    }
.end annotation


# static fields
.field private static final PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

.field private static final PATTERN_ENDLINE_LF:Ljava/util/regex/Pattern;

.field private static final PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

.field static final mDateFormat:Ljava/text/SimpleDateFormat;

.field private static mDeviceId:Ljava/lang/String;

.field private static mIsExchangeAccount:Z

.field private static mPolicySet:Lcom/android/emailcommon/service/PolicySet;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 83
    const-string v0, "(?m)^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "\r\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    .line 87
    const-string v0, "\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_ENDLINE_LF:Ljava/util/regex/Pattern;

    .line 120
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/emailcommon/internet/Rfc822Output;->mIsExchangeAccount:Z

    .line 124
    sput-object v3, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    .line 125
    sput-object v3, Lcom/android/emailcommon/internet/Rfc822Output;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static buildBodyText(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Z)Ljava/lang/String;
    .registers 15
    .parameter "context"
    .parameter "message"
    .parameter "appendQuotedText"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 131
    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v1

    .line 132
    .local v1, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    if-nez v1, :cond_d

    move-object v8, v9

    .line 172
    :goto_c
    return-object v8

    .line 136
    :cond_d
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    .local v7, sbText:Ljava/lang/StringBuffer;
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 139
    .local v2, flags:I
    and-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_4c

    move v6, v8

    .line 140
    .local v6, isReply:Z
    :goto_19
    and-int/lit8 v10, v2, 0x2

    if-eqz v10, :cond_1e

    move v5, v8

    .line 142
    .local v5, isForward:Z
    :cond_1e
    iget-object v10, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-nez v10, :cond_4e

    const-string v3, ""

    .line 144
    .local v3, intro:Ljava/lang/String;
    :goto_24
    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 146
    .local v0, acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "eas"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 148
    .local v4, isExchange:Z
    if-ne v8, p2, :cond_51

    .line 149
    iget-object v10, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    if-eq v8, v6, :cond_3f

    if-ne v8, v5, :cond_5f

    .line 152
    :cond_3f
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_c

    .end local v0           #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v3           #intro:Ljava/lang/String;
    .end local v4           #isExchange:Z
    .end local v5           #isForward:Z
    .end local v6           #isReply:Z
    :cond_4c
    move v6, v5

    .line 139
    goto :goto_19

    .line 142
    .restart local v5       #isForward:Z
    .restart local v6       #isReply:Z
    :cond_4e
    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    goto :goto_24

    .line 158
    .restart local v0       #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v3       #intro:Ljava/lang/String;
    .restart local v4       #isExchange:Z
    :cond_51
    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getIsExchangeAccount()Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 163
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_5f
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-gtz v8, :cond_67

    move-object v8, v9

    .line 169
    goto :goto_c

    .line 172
    :cond_67
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_c
.end method

.method static buildBodyTextHtml(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Z)Ljava/lang/String;
    .registers 15
    .parameter "context"
    .parameter "message"
    .parameter "appendQuotedText"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 192
    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v2

    .line 193
    .local v2, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    if-nez v2, :cond_c

    .line 220
    :goto_b
    return-object v9

    .line 197
    :cond_c
    const/4 v0, 0x0

    .line 199
    .local v0, BodyHtml:Ljava/lang/String;
    iget v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 200
    .local v3, flags:I
    and-int/lit8 v10, v3, 0x1

    if-eqz v10, :cond_5b

    move v7, v8

    .line 201
    .local v7, isReply:Z
    :goto_14
    and-int/lit8 v10, v3, 0x2

    if-eqz v10, :cond_19

    move v6, v8

    .line 202
    .local v6, isForward:Z
    :cond_19
    iget-object v10, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-nez v10, :cond_5d

    const-string v4, ""

    .line 204
    .local v4, intro:Ljava/lang/String;
    :goto_1f
    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 206
    .local v1, acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "eas"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 208
    .local v5, isExchange:Z
    if-eq v8, v7, :cond_33

    if-ne v8, v6, :cond_55

    .line 209
    :cond_33
    const-string v10, "<"

    const-string v11, "&lt;"

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    const-string v10, ">"

    const-string v11, "&gt;"

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    const-string v10, "\n"

    const-string v11, "<br>"

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    iget-object v10, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-ne v8, p2, :cond_60

    iget-object v8, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    :goto_51
    invoke-static {v10, v8, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->getIntergratedHTML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_55
    if-nez v0, :cond_59

    .line 218
    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    :cond_59
    move-object v9, v0

    .line 220
    goto :goto_b

    .end local v1           #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v4           #intro:Ljava/lang/String;
    .end local v5           #isExchange:Z
    .end local v6           #isForward:Z
    .end local v7           #isReply:Z
    :cond_5b
    move v7, v6

    .line 200
    goto :goto_14

    .line 202
    .restart local v6       #isForward:Z
    .restart local v7       #isReply:Z
    :cond_5d
    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    goto :goto_1f

    .restart local v1       #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v4       #intro:Ljava/lang/String;
    .restart local v5       #isExchange:Z
    :cond_60
    move-object v8, v9

    .line 213
    goto :goto_51
.end method

.method static buildBodyTextHtmlSnc(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1340
    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v5

    .line 1341
    if-nez v5, :cond_c

    .line 1342
    const/4 v0, 0x0

    .line 1379
    :goto_b
    return-object v0

    .line 1344
    :cond_c
    new-instance v4, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;

    invoke-direct {v4}, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;-><init>()V

    .line 1347
    iget-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_82

    :cond_1d
    iget-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v0, :cond_82

    iget-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_82

    move v0, v2

    .line 1350
    :goto_2a
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1354
    if-eqz v0, :cond_75

    .line 1355
    iget-object v3, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 1358
    :goto_33
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1359
    and-int/lit8 v6, v7, 0x1

    if-eqz v6, :cond_78

    move v6, v2

    .line 1360
    :goto_3a
    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_7a

    .line 1361
    :goto_3e
    iget-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-nez v1, :cond_7c

    const-string v1, ""

    move-object v5, v1

    .line 1371
    :goto_45
    if-eqz v2, :cond_80

    .line 1372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1374
    :goto_5a
    if-nez v6, :cond_5e

    if-eqz v2, :cond_6f

    .line 1375
    :cond_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1377
    :cond_6f
    iput-object v1, v4, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;->bodyString:Ljava/lang/String;

    .line 1378
    iput-boolean v0, v4, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;->isHtml:Z

    move-object v0, v4

    .line 1379
    goto :goto_b

    .line 1357
    :cond_75
    iget-object v3, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_33

    :cond_78
    move v6, v1

    .line 1359
    goto :goto_3a

    :cond_7a
    move v2, v1

    .line 1360
    goto :goto_3e

    .line 1361
    :cond_7c
    iget-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    move-object v5, v1

    goto :goto_45

    :cond_80
    move-object v1, v3

    goto :goto_5a

    :cond_82
    move v0, v1

    goto :goto_2a
.end method

.method private static convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    .registers 6
    .parameter "addresses"

    .prologue
    .line 356
    array-length v3, p0

    new-array v2, v3, [Ljavax/mail/Address;

    .line 357
    .local v2, ret:[Ljavax/mail/Address;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v3, p0

    if-ge v1, v3, :cond_1c

    .line 359
    :try_start_7
    new-instance v3, Ljavax/mail/internet/InternetAddress;

    aget-object v4, p0, v1

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1
    :try_end_14
    .catch Ljavax/mail/internet/AddressException; {:try_start_7 .. :try_end_14} :catch_17

    .line 357
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 360
    :catch_17
    move-exception v0

    .line 361
    .local v0, ex:Ljavax/mail/internet/AddressException;
    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_14

    .line 365
    .end local v0           #ex:Ljavax/mail/internet/AddressException;
    :cond_1c
    return-object v2
.end method

.method private static getEmailPriority(I)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 337
    packed-switch p0, :pswitch_data_10

    .line 345
    const-string v0, "normal"

    :goto_5
    return-object v0

    .line 339
    :pswitch_6
    const-string v0, "high"

    goto :goto_5

    .line 341
    :pswitch_9
    const-string v0, "normal"

    goto :goto_5

    .line 343
    :pswitch_c
    const-string v0, "low"

    goto :goto_5

    .line 337
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static getEncryptionAlgorithm(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 468
    packed-switch p0, :pswitch_data_16

    .line 480
    sget-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_3DES:Ljava/lang/String;

    :goto_5
    return-object v0

    .line 470
    :pswitch_6
    sget-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_3DES:Ljava/lang/String;

    goto :goto_5

    .line 472
    :pswitch_9
    sget-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_DES:Ljava/lang/String;

    goto :goto_5

    .line 474
    :pswitch_c
    sget-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC2128:Ljava/lang/String;

    goto :goto_5

    .line 476
    :pswitch_f
    sget-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC264:Ljava/lang/String;

    goto :goto_5

    .line 478
    :pswitch_12
    sget-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC240:Ljava/lang/String;

    goto :goto_5

    .line 468
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public static getIntergratedHTML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "newHtml"
    .parameter "htmlReply"
    .parameter "IntroText"

    .prologue
    .line 269
    const/4 v9, 0x0

    .line 270
    .local v9, tmpString:Ljava/lang/String;
    const-string v4, "html"

    .line 271
    .local v4, StartTagHTML:Ljava/lang/String;
    const-string v1, "/html"

    .line 272
    .local v1, EndTagHTML:Ljava/lang/String;
    const-string v3, "body"

    .line 273
    .local v3, StartTagBODY:Ljava/lang/String;
    const-string v0, "/body"

    .line 274
    .local v0, EndTagBODY:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    .local v2, IntergratedHTML:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_db

    .line 276
    move-object v9, p0

    .line 278
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, salesCode:Ljava/lang/String;
    const-string v10, "PTR"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3f

    const-string v10, "PCL"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3f

    const-string v10, "CEL"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3f

    const-string v10, "MIR"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3f

    const-string v10, "ILO"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_53

    .line 280
    :cond_3f
    if-nez p1, :cond_53

    const/4 v10, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "<body dir=\"rtl\">"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-ne v10, v11, :cond_53

    .line 285
    const-string v10, "<div dir=\"RTL\">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :cond_53
    const/4 v10, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "</body>"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-ne v10, v11, :cond_72

    .line 289
    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "</body>"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    :cond_72
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<br>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<br>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    if-eqz p1, :cond_bc

    .line 296
    const/4 v7, -0x1

    .line 297
    .local v7, startIndexOfBODY:I
    move-object v9, p1

    .line 298
    const/4 v10, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "<body"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-ne v10, v11, :cond_c4

    .line 299
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "<body"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 300
    .local v8, tmp:I
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, startBody:Ljava/lang/String;
    const-string v10, ">"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, 0x1

    .line 304
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    .end local v5           #salesCode:Ljava/lang/String;
    .end local v6           #startBody:Ljava/lang/String;
    .end local v7           #startIndexOfBODY:I
    .end local v8           #tmp:I
    :cond_bc
    :goto_bc
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-gtz v10, :cond_13d

    .line 326
    const/4 v10, 0x0

    .line 329
    :goto_c3
    return-object v10

    .line 306
    .restart local v5       #salesCode:Ljava/lang/String;
    .restart local v7       #startIndexOfBODY:I
    :cond_c4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</body></html>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_bc

    .line 309
    .end local v5           #salesCode:Ljava/lang/String;
    .end local v7           #startIndexOfBODY:I
    :cond_db
    if-eqz p1, :cond_bc

    .line 310
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<br>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<br>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    const/4 v7, -0x1

    .line 313
    .restart local v7       #startIndexOfBODY:I
    move-object v9, p1

    .line 314
    const/4 v10, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "<body"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-ne v10, v11, :cond_126

    .line 315
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "<body"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 316
    .restart local v8       #tmp:I
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 317
    .restart local v6       #startBody:Ljava/lang/String;
    const-string v10, ">"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, 0x1

    .line 319
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_bc

    .line 321
    .end local v6           #startBody:Ljava/lang/String;
    .end local v8           #tmp:I
    :cond_126
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</body></html>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_bc

    .line 329
    .end local v7           #startIndexOfBODY:I
    :cond_13d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_c3
.end method

.method public static getIsExchangeAccount()Z
    .registers 1

    .prologue
    .line 1333
    sget-boolean v0, Lcom/android/emailcommon/internet/Rfc822Output;->mIsExchangeAccount:Z

    return v0
.end method

.method public static setIsExchangeAccount(Z)V
    .registers 1
    .parameter "isExchangeAcoount"

    .prologue
    .line 1524
    sput-boolean p0, Lcom/android/emailcommon/internet/Rfc822Output;->mIsExchangeAccount:Z

    .line 1525
    return-void
.end method

.method private static writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1251
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_26

    .line 1252
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1253
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1254
    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->packedToHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1255
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1257
    :cond_26
    return-void
.end method

.method private static writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1268
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 1269
    if-nez p2, :cond_a

    .line 1275
    :cond_a
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1276
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1277
    if-eqz p2, :cond_19

    .line 1278
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1280
    :cond_19
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1281
    return-void
.end method

.method private static writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1234
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    .line 1235
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1236
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1238
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1240
    :cond_22
    return-void
.end method

.method private static writeHTMLWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1318
    const-string v0, "Content-Type"

    const-string v1, "text/html; charset=utf-8"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v0, "Content-Transfer-Encoding"

    const-string v1, "base64"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1321
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1322
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 1323
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1324
    return-void
.end method

.method private static writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1217
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 1218
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1219
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1220
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1221
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1223
    :cond_18
    return-void
.end method

.method private static writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 1104
    .line 1106
    :try_start_2
    iget-object v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_8} :catch_b6

    move-result v1

    .line 1111
    if-ne v1, v5, :cond_ee

    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getIsExchangeAccount()Z

    move-result v1

    if-nez v1, :cond_ee

    .line 1120
    iget-object v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";\n name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v2, "Content-Transfer-Encoding"

    const-string v3, "base64"

    invoke-static {p1, v2, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget v2, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_78

    .line 1130
    if-ne v5, p4, :cond_bf

    .line 1131
    const-string v2, "Content-Disposition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inline;\n filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    :cond_78
    :goto_78
    if-ne v5, p4, :cond_81

    .line 1161
    const-string v1, "Content-ID"

    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    :cond_81
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1170
    :try_start_86
    iget-object v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v1, :cond_187

    .line 1171
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_91
    .catchall {:try_start_86 .. :try_end_91} :catchall_1d8
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_91} :catch_1b1
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_91} :catch_1bf

    .line 1183
    :goto_91
    :try_start_91
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 1184
    new-instance v1, Landroid/util/Base64OutputStream;

    const/16 v3, 0x14

    invoke-direct {v1, p2, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_1de
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_9b} :catch_1ea
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_9b} :catch_1e3

    .line 1188
    :try_start_9b
    invoke-static {v2, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 1194
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1195
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1196
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_ab
    .catchall {:try_start_9b .. :try_end_ab} :catchall_1cc
    .catch Ljava/io/FileNotFoundException; {:try_start_9b .. :try_end_ab} :catch_1ed
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_ab} :catch_1e8

    .line 1202
    if-eqz v1, :cond_b0

    .line 1203
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    .line 1204
    :cond_b0
    if-eqz v2, :cond_b5

    .line 1205
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1207
    :cond_b5
    :goto_b5
    return-void

    .line 1107
    :catch_b6
    move-exception v0

    .line 1108
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Invalid attachment."

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1134
    :cond_bf
    const-string v2, "Content-Disposition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachment;\n filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    .line 1139
    :cond_ee
    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "base64"

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_78

    .line 1148
    if-ne v5, p4, :cond_155

    .line 1149
    const-string v1, "Content-Disposition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inline;\n filename=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_78

    .line 1153
    :cond_155
    const-string v1, "Content-Disposition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment;\n filename=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_78

    .line 1172
    :cond_187
    :try_start_187
    iget-object v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v1, :cond_19b

    .line 1174
    iget-object v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    goto/16 :goto_91

    .line 1177
    :cond_19b
    const-string v1, "Rfc8220Output"

    const-string v2, "writeOneAttachment() : attachment.mContentBytes, attachment.mContentUri are null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string v1, "Rfc8220Output"

    const-string v2, "writeOneAttachment() : cannot attach this attachment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a9
    .catchall {:try_start_187 .. :try_end_1a9} :catchall_1d8
    .catch Ljava/io/FileNotFoundException; {:try_start_187 .. :try_end_1a9} :catch_1b1
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_1a9} :catch_1bf

    .line 1202
    if-eqz v0, :cond_1ac

    .line 1203
    throw v0

    .line 1204
    :cond_1ac
    if-eqz v0, :cond_b5

    .line 1205
    throw v0

    goto/16 :goto_b5

    .line 1197
    :catch_1b1
    move-exception v1

    move-object v1, v0

    .line 1202
    :goto_1b3
    if-eqz v0, :cond_1b8

    .line 1203
    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V

    .line 1204
    :cond_1b8
    if-eqz v1, :cond_b5

    .line 1205
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto/16 :goto_b5

    .line 1199
    :catch_1bf
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 1200
    :goto_1c4
    :try_start_1c4
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Invalid attachment."

    invoke-direct {v3, v4, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1cc
    .catchall {:try_start_1c4 .. :try_end_1cc} :catchall_1cc

    .line 1202
    :catchall_1cc
    move-exception v0

    :goto_1cd
    if-eqz v1, :cond_1d2

    .line 1203
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    .line 1204
    :cond_1d2
    if-eqz v2, :cond_1d7

    .line 1205
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1d7
    throw v0

    .line 1202
    :catchall_1d8
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1cd

    :catchall_1de
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1cd

    .line 1199
    :catch_1e3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1c4

    :catch_1e8
    move-exception v0

    goto :goto_1c4

    .line 1197
    :catch_1ea
    move-exception v1

    move-object v1, v2

    goto :goto_1b3

    :catch_1ed
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_1b3
.end method

.method private static writeRfc822Header(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1528
    const-string v0, "Content-Disposition"

    const-string v1, "inline"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string v0, "Content-Type"

    const-string v1, "message/rfc822"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".msg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1532
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1533
    const-string v0, "Content-Description"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    return-void
.end method

.method private static writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1296
    const-string v0, "Content-Type"

    const-string v1, "text/plain; charset=utf-8"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string v0, "Content-Transfer-Encoding"

    const-string v1, "base64"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1299
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1300
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 1301
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1302
    return-void
.end method

.method public static writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    .line 500
    if-nez v13, :cond_7

    .line 1093
    :cond_6
    :goto_6
    return-void

    .line 506
    :cond_7
    const/4 v10, 0x0

    .line 507
    iget v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_104

    const/4 v2, 0x1

    .line 508
    :goto_f
    iget v3, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_107

    const/4 v3, 0x1

    .line 511
    :goto_16
    iget-boolean v4, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v4, :cond_1e

    iget-boolean v4, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v4, :cond_3ba

    .line 512
    :cond_1e
    const-string v4, "RFC822Output"

    const-string v5, "message.mEncrypted || message.mSigned"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    sget-object v4, Lcom/android/emailcommon/internet/Rfc822Output;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 516
    new-instance v11, Lcom/android/emailcommon/smime/SMIMEHelper;

    invoke-direct {v11}, Lcom/android/emailcommon/smime/SMIMEHelper;-><init>()V

    .line 517
    new-instance v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    invoke-direct {v12}, Lcom/android/emailcommon/smime/SMIMEHelper$Message;-><init>()V

    .line 518
    iput-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mDate:Ljava/lang/String;

    .line 519
    iget-object v4, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    iput-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSubject:Ljava/lang/String;

    .line 520
    iget-object v4, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    iput-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mMessageID:Ljava/lang/String;

    .line 521
    iget-object v4, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/internet/Rfc822Output;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    .line 522
    iget-object v4, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/internet/Rfc822Output;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v4

    iput-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mTo:[Ljavax/mail/Address;

    .line 523
    iget-object v4, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/internet/Rfc822Output;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v4

    iput-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mCC:[Ljavax/mail/Address;

    .line 525
    iput-boolean v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mRead:Z

    .line 526
    iput-boolean v3, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mDelivery:Z

    .line 528
    if-eqz p5, :cond_7f

    .line 529
    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v2

    iput-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBCC:[Ljavax/mail/Address;

    .line 531
    :cond_7f
    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v2

    iput-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mReplyTo:[Ljavax/mail/Address;

    .line 532
    iget v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->getEmailPriority(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mImportance:Ljava/lang/String;

    .line 535
    iget-wide v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    .line 538
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v13, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyText(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Z)Ljava/lang/String;

    move-result-object v2

    .line 539
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v13, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyTextHtml(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Z)Ljava/lang/String;

    move-result-object v3

    .line 541
    if-eqz v3, :cond_10a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_10a

    .line 542
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mIsHtml:Z

    .line 543
    iput-object v3, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    .line 550
    :goto_b8
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 551
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 554
    if-eqz v3, :cond_113

    .line 555
    :cond_cf
    :goto_cf
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_110

    .line 556
    const-class v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v3, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 560
    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v4, :cond_cf

    .line 561
    new-instance v4, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;

    invoke-direct {v4}, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;-><init>()V

    .line 562
    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v4, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mUri:Landroid/net/Uri;

    .line 563
    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    .line 565
    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v5, :cond_fa

    .line 566
    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mContentId:Ljava/lang/String;

    .line 570
    :cond_fa
    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    iput v2, v4, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mIsInline:I

    .line 571
    iget-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    .line 507
    :cond_104
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 508
    :cond_107
    const/4 v3, 0x0

    goto/16 :goto_16

    .line 545
    :cond_10a
    const/4 v3, 0x0

    iput-boolean v3, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mIsHtml:Z

    .line 546
    iput-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    goto :goto_b8

    .line 575
    :cond_110
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_113
    :try_start_113
    new-instance v3, Lcom/android/emailcommon/smime/CertificateMgr;

    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mDeviceId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v3, v2, v0}, Lcom/android/emailcommon/smime/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 580
    iget-object v4, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 581
    const-string v2, "RFC822Output"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alias= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v8, 0x0

    .line 583
    const/4 v9, 0x0

    .line 585
    if-eqz v4, :cond_145

    .line 586
    invoke-virtual {v3, v4}, Lcom/android/emailcommon/smime/CertificateMgr;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    .line 587
    invoke-virtual {v3, v4}, Lcom/android/emailcommon/smime/CertificateMgr;->getCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v9

    move-object v8, v2

    .line 590
    :cond_145
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 591
    iget-boolean v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v2, :cond_215

    .line 592
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/mail/Address;

    .line 593
    const/4 v3, 0x0

    iget-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    aput-object v4, v2, v3

    .line 594
    const/4 v3, 0x4

    new-array v3, v3, [[Ljavax/mail/Address;

    const/4 v4, 0x0

    iget-object v5, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mTo:[Ljavax/mail/Address;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mCC:[Ljavax/mail/Address;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBCC:[Ljavax/mail/Address;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/android/emailcommon/smime/SMIMEHelper;->joinAddresses([[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object v5

    .line 630
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    const/4 v3, 0x1

    .line 632
    const/4 v2, 0x0

    move v4, v2

    :goto_177
    array-length v2, v5

    if-ge v4, v2, :cond_1c0

    .line 633
    aget-object v2, v5, v4

    check-cast v2, Ljavax/mail/internet/InternetAddress;

    .line 634
    if-eqz v3, :cond_19f

    .line 635
    const-string v3, "email"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " LIKE \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const/4 v2, 0x0

    .line 632
    :goto_19a
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_177

    .line 639
    :cond_19f
    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, "email"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " LIKE \'"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\' "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_19a

    .line 644
    :cond_1c0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_215

    .line 645
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "certificate"

    aput-object v3, v4, v2

    .line 648
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$CertificateCacheColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 651
    if-eqz v2, :cond_215

    .line 652
    :cond_1e0
    :goto_1e0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_212

    .line 653
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 654
    if-eqz v3, :cond_1e0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1e0

    .line 655
    invoke-static {v3}, Lcom/android/emailcommon/smime/CertificateUtil;->convertToX509(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_1fa} :catch_1fb

    goto :goto_1e0

    .line 725
    :catch_1fb
    move-exception v2

    .line 726
    const-class v3, Lcom/android/emailcommon/internet/Rfc822Output;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 729
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 658
    :cond_212
    :try_start_212
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 663
    :cond_215
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHMS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v7, v2, v3

    .line 664
    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v2, :cond_351

    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v2, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-eqz v2, :cond_351

    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_351

    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_351

    .line 667
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHMS:[Ljava/lang/String;

    sget-object v3, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget v3, v3, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    aget-object v7, v2, v3

    .line 671
    :cond_23a
    :goto_23a
    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v2, :cond_360

    .line 672
    const-string v2, "RFC822Output"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPolicySet.mRequireSignedSMIMEAlgorithm= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget v4, v4, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :goto_25a
    const-string v2, "RFC822Output"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signingAlgorithm= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string v2, "RFC822Output"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "privateKey.getAlgorithm()= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->getEncryptionAlgorithm(I)Ljava/lang/String;

    move-result-object v6

    .line 680
    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v2, :cond_369

    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v2, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-eqz v2, :cond_369

    .line 681
    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->getEncryptionAlgorithm(I)Ljava/lang/String;

    move-result-object v6

    .line 687
    :cond_2a5
    :goto_2a5
    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v2, :cond_388

    .line 688
    const-string v2, "RFC822Output"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPolicySet.mRequireEncryptionSMIMEAlgorithm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget v4, v4, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_2c5
    iget-boolean v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v2, :cond_391

    .line 694
    iget-boolean v5, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/security/cert/X509Certificate;

    move-object v2, v11

    move-object/from16 v3, p0

    move-object v4, v12

    move-object/from16 v11, p3

    invoke-virtual/range {v2 .. v11}, Lcom/android/emailcommon/smime/SMIMEHelper;->encryptMessage(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;ZLjava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/io/OutputStream;)V

    .line 707
    :goto_2dd
    iget-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 708
    iget-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e7
    :goto_2e7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;

    .line 709
    const-string v4, "Rfc8220Output"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "context.getCacheDir().getName(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v4, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e7

    .line 712
    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2e7

    .line 714
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_39e

    .line 715
    const-string v4, "Rfc8220Output"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp file deleted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e7

    .line 668
    :cond_351
    if-eqz v10, :cond_23a

    iget v2, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_23a

    .line 669
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHMS:[Ljava/lang/String;

    iget v3, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    aget-object v7, v2, v3

    goto/16 :goto_23a

    .line 675
    :cond_360
    const-string v2, "RFC822Output"

    const-string v3, "mPolicySet is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25a

    .line 682
    :cond_369
    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    if-eqz v2, :cond_379

    .line 683
    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->getEncryptionAlgorithm(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2a5

    .line 684
    :cond_379
    if-eqz v10, :cond_2a5

    iget v2, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_2a5

    .line 685
    iget v2, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->getEncryptionAlgorithm(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2a5

    .line 691
    :cond_388
    const-string v2, "RFC822Output"

    const-string v3, "mPolicySet is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c5

    :cond_391
    move-object v10, v11

    move-object/from16 v11, p0

    move-object v13, v8

    move-object v14, v9

    move-object v15, v7

    move-object/from16 v16, p3

    .line 701
    invoke-virtual/range {v10 .. v16}, Lcom/android/emailcommon/smime/SMIMEHelper;->signMessage(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto/16 :goto_2dd

    .line 717
    :cond_39e
    const-string v4, "Rfc8220Output"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to delete temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b8
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_3b8} :catch_1fb

    goto/16 :goto_2e7

    .line 734
    :cond_3ba
    const-string v4, "RFC822Output"

    const-string v5, "writeTo() normal"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    new-instance v12, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x400

    move-object/from16 v0, p3

    invoke-direct {v12, v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 736
    new-instance v14, Ljava/io/OutputStreamWriter;

    invoke-direct {v14, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 742
    sget-object v4, Lcom/android/emailcommon/internet/Rfc822Output;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 743
    const-string v5, "Date"

    invoke-static {v14, v5, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v4, "Subject"

    iget-object v5, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v14, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v4, "Message-ID"

    iget-object v5, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-static {v14, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget v4, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    invoke-static {v4}, Lcom/android/emailcommon/internet/Rfc822Output;->getEmailPriority(I)Ljava/lang/String;

    move-result-object v4

    .line 750
    const-string v5, "Importance"

    invoke-static {v14, v5, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v4, "From"

    iget-object v5, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v14, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v4, "To"

    iget-object v5, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v14, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v4, "Cc"

    iget-object v5, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v14, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    if-eqz p5, :cond_418

    .line 760
    const-string v4, "Bcc"

    iget-object v5, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v14, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_418
    if-nez v2, :cond_41c

    if-eqz v3, :cond_486

    .line 766
    :cond_41c
    const/4 v5, 0x0

    .line 767
    const/4 v4, 0x0

    .line 769
    iget-object v6, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    const-string v7, "@m.google.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_432

    iget-object v6, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    const-string v7, "@google.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_46b

    .line 771
    :cond_432
    const/4 v4, 0x1

    .line 772
    iget-object v6, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 773
    if-ltz v6, :cond_46b

    .line 774
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 778
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@gmail.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 795
    :cond_46b
    if-eqz v5, :cond_588

    if-eqz v4, :cond_588

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 798
    :goto_473
    if-eqz v2, :cond_47a

    .line 799
    const-string v2, "Disposition-Notification-To"

    invoke-static {v14, v2, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_47a
    if-eqz v3, :cond_481

    .line 803
    const-string v2, "Return-Receipt-To"

    invoke-static {v14, v2, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :cond_481
    const-string v2, "Return-Path"

    invoke-static {v14, v2, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_486
    const-string v2, "Reply-To"

    iget-object v3, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v14, v2, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v2, "MIME-Version"

    const-string v3, "1.0"

    invoke-static {v14, v2, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v13, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyText(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Z)Ljava/lang/String;

    move-result-object v9

    .line 817
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v13, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyTextHtml(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Z)Ljava/lang/String;

    move-result-object v8

    .line 819
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 820
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 826
    const/4 v5, 0x0

    .line 827
    const/4 v4, 0x0

    .line 828
    :try_start_4bb
    iget-boolean v2, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 829
    const/4 v2, 0x0

    .line 830
    const/4 v7, 0x0

    .line 832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--_com.android.email_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 834
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 835
    const/4 v10, 0x0

    .line 836
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_4f7

    .line 837
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 838
    const/16 v10, 0xa

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 841
    :cond_4f7
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_595

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_595

    .line 846
    const-string v2, "alternative"

    .line 848
    const-string v4, "Content-Type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multipart/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "; boundary=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v4, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v2, "\r\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 855
    if-nez v9, :cond_536

    if-eqz v8, :cond_554

    .line 856
    :cond_536
    const/4 v2, 0x0

    invoke-static {v14, v3, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 860
    iget-wide v4, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_54f

    .line 861
    const-string v2, "Content-Disposition"

    const-string v4, "inline"

    invoke-static {v14, v2, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_54f
    if-eqz v8, :cond_58c

    .line 865
    invoke-static {v14, v12, v8}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHTMLWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 870
    :cond_554
    :goto_554
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 871
    const-class v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v15, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 874
    const/4 v4, 0x0

    invoke-static {v14, v3, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 875
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v12, v2, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V

    .line 876
    const-string v2, "\r\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 877
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_554

    .line 880
    const/4 v2, 0x1

    invoke-static {v14, v3, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 881
    const-string v2, "\r\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_57d
    .catchall {:try_start_4bb .. :try_end_57d} :catchall_590

    .line 1050
    :cond_57d
    :goto_57d
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1053
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1054
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_6

    .line 795
    :cond_588
    iget-object v4, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto/16 :goto_473

    .line 867
    :cond_58c
    :try_start_58c
    invoke-static {v14, v12, v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_58f
    .catchall {:try_start_58c .. :try_end_58f} :catchall_590

    goto :goto_554

    .line 1050
    :catchall_590
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 883
    :cond_595
    const/4 v10, 0x1

    :try_start_596
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eq v10, v11, :cond_78c

    .line 884
    const-string v7, "alternative"

    move v10, v2

    move-object v11, v7

    .line 909
    :goto_5a0
    const-string v2, "Content-Type"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "multipart/"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "; boundary=\""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "\""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v2, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v2, "\r\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 912
    const/4 v2, 0x0

    invoke-static {v14, v3, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 914
    const/4 v2, 0x1

    const-string v7, "mixed"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v2, v7, :cond_811

    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--_com.android.email_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 917
    const-string v6, "Content-Type"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "multipart/alternative; boundary=\""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "\""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v6, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string v6, "\r\n"

    invoke-virtual {v14, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object v6, v2

    move v7, v5

    .line 922
    :goto_627
    if-nez v9, :cond_80e

    .line 924
    const-string v2, ""

    .line 926
    :goto_62b
    if-eqz v6, :cond_631

    .line 927
    const/4 v5, 0x0

    invoke-static {v14, v6, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 931
    :cond_631
    iget-wide v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v5

    if-eqz v5, :cond_648

    .line 932
    const-string v5, "Content-Disposition"

    const-string v9, "inline"

    invoke-static {v14, v5, v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :cond_648
    invoke-static {v14, v12, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 936
    const-string v5, "\r\n"

    invoke-virtual {v14, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 938
    if-nez v8, :cond_80b

    .line 939
    if-eqz v2, :cond_7d1

    .line 940
    const-string v5, "<"

    const-string v8, "&lt;"

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 941
    const-string v5, ">"

    const-string v8, "&gt;"

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 942
    const-string v5, "\n"

    const-string v8, "<br>"

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 950
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<html><head></head><body><div style=\"word-break;keep-all;\">"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "</div></body></html>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 956
    :goto_686
    if-eqz v6, :cond_7d6

    .line 957
    const/4 v2, 0x0

    invoke-static {v14, v6, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 962
    :goto_68c
    if-lez v10, :cond_6cf

    .line 964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--_com.android.email_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 966
    const-string v4, "Content-Type"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multipart/relative; boundary=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v4, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v4, "\r\n"

    invoke-virtual {v14, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object v4, v2

    .line 971
    :cond_6cf
    if-eqz v4, :cond_6d5

    .line 972
    const/4 v2, 0x0

    invoke-static {v14, v4, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 976
    :cond_6d5
    iget-wide v7, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_6ea

    .line 977
    const-string v2, "Content-Disposition"

    const-string v7, "inline"

    invoke-static {v14, v2, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :cond_6ea
    invoke-static {v14, v12, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHTMLWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 981
    const-string v2, "\r\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 983
    if-eqz v4, :cond_733

    .line 984
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 985
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_72a

    .line 987
    :cond_6fd
    const-class v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v15, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 989
    if-eqz v2, :cond_724

    iget-object v7, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v7, :cond_724

    if-eqz v5, :cond_724

    const/4 v7, 0x1

    iget-object v8, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-ne v7, v8, :cond_724

    .line 994
    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getIsExchangeAccount()Z

    move-result v7

    if-eqz v7, :cond_7dc

    if-nez p4, :cond_7dc

    iget v7, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_7dc

    .line 1003
    :cond_724
    :goto_724
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6fd

    .line 1006
    :cond_72a
    const/4 v2, 0x1

    invoke-static {v14, v4, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 1007
    const-string v2, "\r\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1010
    :cond_733
    if-eqz v6, :cond_7ed

    .line 1011
    const/4 v2, 0x1

    invoke-static {v14, v6, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 1012
    const-string v2, "\r\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1020
    :goto_73e
    const/4 v2, 0x1

    const-string v4, "mixed"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v2, v4, :cond_57d

    .line 1021
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1022
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_781

    .line 1024
    :cond_750
    const-class v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v15, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1026
    if-eqz v2, :cond_77b

    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_76d

    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_77b

    if-eqz v5, :cond_77b

    const/4 v4, 0x1

    iget-object v6, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eq v4, v6, :cond_77b

    .line 1032
    :cond_76d
    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getIsExchangeAccount()Z

    move-result v4

    if-eqz v4, :cond_7fa

    if-nez p4, :cond_7fa

    iget v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_7fa

    .line 1041
    :cond_77b
    :goto_77b
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_750

    .line 1044
    :cond_781
    const/4 v2, 0x1

    invoke-static {v14, v3, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 1045
    const-string v2, "\r\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_57d

    .line 886
    :cond_78c
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 887
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_7bf

    move v10, v2

    .line 889
    :goto_796
    const-class v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v15, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 891
    iget-object v11, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v11, :cond_7c7

    if-eqz v8, :cond_7c7

    const/4 v11, 0x1

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v11, v2, :cond_7c7

    .line 896
    add-int/lit8 v2, v10, 0x1

    move/from16 v18, v7

    move v7, v2

    move/from16 v2, v18

    .line 900
    :goto_7b4
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_815

    move/from16 v18, v2

    move v2, v7

    move/from16 v7, v18

    .line 902
    :cond_7bf
    if-lez v7, :cond_7cb

    .line 903
    const-string v7, "mixed"

    move v10, v2

    move-object v11, v7

    goto/16 :goto_5a0

    .line 898
    :cond_7c7
    add-int/lit8 v2, v7, 0x1

    move v7, v10

    goto :goto_7b4

    .line 905
    :cond_7cb
    const-string v7, "alternative"

    move v10, v2

    move-object v11, v7

    goto/16 :goto_5a0

    .line 953
    :cond_7d1
    const-string v2, "<html><head></head><body><div style=\"word-break;keep-all;\"></div></body></html>"

    move-object v5, v2

    goto/16 :goto_686

    .line 959
    :cond_7d6
    const/4 v2, 0x0

    invoke-static {v14, v3, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto/16 :goto_68c

    .line 999
    :cond_7dc
    const/4 v7, 0x0

    invoke-static {v14, v4, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 1000
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v12, v2, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V

    .line 1001
    const-string v2, "\r\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_724

    .line 1015
    :cond_7ed
    const/4 v2, 0x1

    invoke-static {v14, v3, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 1016
    const-string v2, "\r\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1017
    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_73e

    .line 1037
    :cond_7fa
    const/4 v4, 0x0

    invoke-static {v14, v3, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 1038
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v12, v2, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V

    .line 1039
    const-string v2, "\r\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_809
    .catchall {:try_start_596 .. :try_end_809} :catchall_590

    goto/16 :goto_77b

    :cond_80b
    move-object v5, v8

    goto/16 :goto_686

    :cond_80e
    move-object v2, v9

    goto/16 :goto_62b

    :cond_811
    move v7, v6

    move-object v6, v5

    goto/16 :goto_627

    :cond_815
    move v10, v7

    move v7, v2

    goto/16 :goto_796
.end method

.method public static writeToSnC(Landroid/content/Context;JLjava/io/OutputStream;JLjava/util/List;)Ljava/lang/String;
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/io/OutputStream;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1386
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 1387
    if-nez v6, :cond_23

    .line 1388
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to forward non-existent message id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1392
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--_com.android.email_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1393
    new-instance v8, Ljava/io/BufferedOutputStream;

    const/16 v0, 0x400

    invoke-direct {v8, p3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 1394
    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1396
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_62

    .line 1397
    const-string v0, "BDAT %d\r\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1404
    :cond_62
    sget-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1405
    const-string v1, "Date"

    invoke-static {v9, v1, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const-string v0, "Subject"

    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const-string v0, "Message-ID"

    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const-string v1, "X-Priority"

    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_115

    const-string v0, "1"

    :goto_8b
    invoke-static {v9, v1, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const-string v0, "From"

    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const-string v0, "To"

    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v0, "Cc"

    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string v0, "Reply-To"

    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string v0, "MIME-Version"

    const-string v1, "1.0"

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string v0, "Content-Type: multipart/mixed; boundary=\"%s\"\r\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1428
    invoke-static {p0, v6}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyTextHtmlSnc(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;

    move-result-object v10

    .line 1429
    iget-object v11, v10, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;->bodyString:Ljava/lang/String;

    .line 1431
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1432
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1436
    :try_start_d9
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 1437
    if-lez v3, :cond_121

    const/4 v0, 0x1

    move v1, v0

    .line 1438
    :goto_e1
    const-string v0, "mixed"

    .line 1442
    if-nez v1, :cond_133

    .line 1443
    if-eqz v11, :cond_12d

    .line 1444
    const/4 v0, 0x0

    invoke-static {v9, v7, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 1445
    const-string v0, "Content-Disposition"

    const-string v1, "inline"

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    if-eqz v10, :cond_124

    iget-boolean v0, v10, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;->isHtml:Z

    if-eqz v0, :cond_124

    .line 1447
    invoke-static {v9, v8, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHTMLWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_fb
    .catchall {:try_start_d9 .. :try_end_fb} :catchall_128

    .line 1508
    :goto_fb
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1511
    const/4 v0, 0x0

    invoke-static {v9, v7, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 1513
    iget-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeRfc822Header(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1514
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1516
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 1517
    const-string v0, "Rfc8220Output"

    const-string v1, "Done with the writing.. Now Time to Flush....."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return-object v7

    .line 1410
    :cond_115
    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    if-nez v0, :cond_11d

    const-string v0, "5"

    goto/16 :goto_8b

    :cond_11d
    const-string v0, "3"

    goto/16 :goto_8b

    .line 1437
    :cond_121
    const/4 v0, 0x0

    move v1, v0

    goto :goto_e1

    .line 1449
    :cond_124
    :try_start_124
    invoke-static {v9, v8, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_127
    .catchall {:try_start_124 .. :try_end_127} :catchall_128

    goto :goto_fb

    .line 1508
    :catchall_128
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1452
    :cond_12d
    :try_start_12d
    const-string v0, "\r\n"

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_fb

    .line 1460
    :cond_133
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1461
    const/4 v1, 0x1

    if-ne v3, v1, :cond_145

    .line 1466
    const/16 v1, 0xa

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1467
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_145

    .line 1468
    const-string v0, "alternative"

    .line 1471
    :cond_145
    const-string v1, "MIME-Version"

    const-string v3, "1.0"

    invoke-static {v9, v1, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const-string v1, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; boundary=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const-string v0, "\r\n"

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1478
    if-eqz v11, :cond_18f

    .line 1479
    const/4 v0, 0x0

    invoke-static {v9, v7, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 1480
    const-string v0, "Content-Disposition"

    const-string v1, "inline"

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    if-eqz v10, :cond_1ad

    iget-boolean v0, v10, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;->isHtml:Z

    if-eqz v0, :cond_1ad

    .line 1483
    invoke-static {v9, v8, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHTMLWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1495
    :cond_18f
    :goto_18f
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1497
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v1, :cond_1a5

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v3, "content://com.android.email"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b1

    .line 1505
    :cond_1a5
    :goto_1a5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_18f

    goto/16 :goto_fb

    .line 1488
    :cond_1ad
    invoke-static {v9, v8, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_18f

    .line 1502
    :cond_1b1
    const/4 v1, 0x0

    invoke-static {v9, v7, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 1503
    const/4 v1, 0x0

    invoke-static {p0, v9, v8, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V

    .line 1504
    const-string v0, "\r\n"

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1be
    .catchall {:try_start_12d .. :try_end_1be} :catchall_128

    goto :goto_1a5
.end method
