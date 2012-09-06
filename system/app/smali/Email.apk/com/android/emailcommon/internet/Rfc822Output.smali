.class public Lcom/android/emailcommon/internet/Rfc822Output;
.super Ljava/lang/Object;
.source "Rfc822Output.java"


# static fields
.field private static final BODY_PATTERN:Ljava/util/regex/Pattern;

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final NEWLINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

.field private static final PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

.field static sBoundaryDigit:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    const-string v0, "(?m)^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    .line 56
    const-string v0, "\r\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 67
    const-string v0, "(?:<\\s*body[^>]*>)(.*)(?:<\\s*/\\s*body\\s*>)"

    const/16 v1, 0x22

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->BODY_PATTERN:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "\\r?\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildBodyText(Lcom/android/emailcommon/provider/EmailContent$Body;IZ)[Ljava/lang/String;
    .registers 14
    .parameter "body"
    .parameter "flags"
    .parameter "useSmartReply"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 125
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    aput-object v10, v4, v8

    aput-object v10, v4, v7

    .line 126
    .local v4, messageBody:[Ljava/lang/String;
    if-nez p0, :cond_d

    .line 171
    :cond_c
    :goto_c
    return-object v4

    .line 129
    :cond_d
    iget-object v6, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 130
    .local v6, text:Ljava/lang/String;
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_56

    move v2, v7

    .line 131
    .local v2, isReply:Z
    :goto_14
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_58

    move v1, v7

    .line 133
    .local v1, isForward:Z
    :goto_19
    if-nez v2, :cond_1d

    if-eqz v1, :cond_34

    .line 134
    :cond_1d
    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-nez v9, :cond_5a

    const-string v0, ""

    .line 135
    .local v0, intro:Ljava/lang/String;
    :goto_23
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 137
    .end local v0           #intro:Ljava/lang/String;
    :cond_34
    if-eqz p2, :cond_5d

    .line 140
    if-eqz v1, :cond_4b

    .line 141
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 165
    :cond_4b
    :goto_4b
    aput-object v6, v4, v8

    .line 168
    if-nez p2, :cond_c

    .line 169
    invoke-static {p0, p2}, Lcom/android/emailcommon/internet/Rfc822Output;->getHtmlAlternate(Lcom/android/emailcommon/provider/EmailContent$Body;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    goto :goto_c

    .end local v1           #isForward:Z
    .end local v2           #isReply:Z
    :cond_56
    move v2, v8

    .line 130
    goto :goto_14

    .restart local v2       #isReply:Z
    :cond_58
    move v1, v8

    .line 131
    goto :goto_19

    .line 134
    .restart local v1       #isForward:Z
    :cond_5a
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    goto :goto_23

    .line 144
    :cond_5d
    iget-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 146
    .local v5, quotedText:Ljava/lang/String;
    if-nez v5, :cond_6f

    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    if-eqz v9, :cond_6f

    .line 147
    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    :cond_6f
    if-eqz v5, :cond_7d

    .line 151
    sget-object v9, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 152
    .local v3, matcher:Ljava/util/regex/Matcher;
    const-string v9, "\n"

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    :cond_7d
    if-eqz v2, :cond_9f

    .line 155
    if-eqz v5, :cond_4b

    .line 156
    sget-object v9, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 157
    .restart local v3       #matcher:Ljava/util/regex/Matcher;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 158
    goto :goto_4b

    .line 159
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    :cond_9f
    if-eqz v1, :cond_4b

    .line 160
    if-eqz v5, :cond_4b

    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4b
.end method

.method static getHtmlAlternate(Lcom/android/emailcommon/provider/EmailContent$Body;Z)Ljava/lang/String;
    .registers 8
    .parameter "body"
    .parameter "useSmartReply"

    .prologue
    .line 102
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 103
    const/4 v4, 0x0

    .line 118
    :goto_5
    return-object v4

    .line 105
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v0, altMessage:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, htmlContent:Ljava/lang/String;
    sget-object v4, Lcom/android/emailcommon/internet/Rfc822Output;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "<br>"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-eqz v4, :cond_39

    .line 110
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, htmlIntro:Ljava/lang/String;
    sget-object v4, Lcom/android/emailcommon/internet/Rfc822Output;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "<br>"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    .end local v3           #htmlIntro:Ljava/lang/String;
    :cond_39
    if-nez p1, :cond_44

    .line 115
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/internet/Rfc822Output;->getHtmlBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, htmlBody:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    .end local v1           #htmlBody:Ljava/lang/String;
    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5
.end method

.method static getHtmlBody(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "html"

    .prologue
    .line 90
    sget-object v1, Lcom/android/emailcommon/internet/Rfc822Output;->BODY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 91
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 94
    .end local p0
    :cond_11
    return-object p0
.end method

.method static getNextBoundary()Ljava/lang/String;
    .registers 4

    .prologue
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    const-string v1, "--_com.android.email_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 467
    const-class v1, Lcom/android/emailcommon/internet/Rfc822Output;

    monitor-enter v1

    .line 468
    :try_start_15
    sget-byte v2, Lcom/android/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 469
    sget-byte v2, Lcom/android/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    sput-byte v2, Lcom/android/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    .line 470
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_2a

    .line 471
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 470
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private static writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_26

    .line 376
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 377
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 378
    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->packedToHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 379
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 381
    :cond_26
    return-void
.end method

.method private static writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V
    .registers 4
    .parameter "writer"
    .parameter "boundary"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 393
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 394
    if-eqz p2, :cond_f

    .line 395
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 397
    :cond_f
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 398
    return-void
.end method

.method private static writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    .line 359
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 360
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 362
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 364
    :cond_22
    return-void
.end method

.method private static writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 342
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 343
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 344
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 345
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 347
    :cond_18
    return-void
.end method

.method private static writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 13
    .parameter "context"
    .parameter "writer"
    .parameter "out"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 283
    const-string v5, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\n name=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v5, "Content-Transfer-Encoding"

    const-string v6, "base64"

    invoke-static {p1, v5, v6}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget v5, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_63

    .line 289
    const-string v5, "Content-Disposition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attachment;\n filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_63
    iget-object v5, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v5, :cond_6e

    .line 295
    const-string v5, "Content-ID"

    iget-object v6, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_6e
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 300
    const/4 v2, 0x0

    .line 303
    .local v2, inStream:Ljava/io/InputStream;
    :try_start_74
    iget-object v5, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v5, :cond_9e

    .line 304
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v5, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v2           #inStream:Ljava/io/InputStream;
    .local v3, inStream:Ljava/io/InputStream;
    move-object v2, v3

    .line 311
    .end local v3           #inStream:Ljava/io/InputStream;
    .restart local v2       #inStream:Ljava/io/InputStream;
    :goto_80
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 312
    new-instance v0, Landroid/util/Base64OutputStream;

    const/16 v5, 0x14

    invoke-direct {v0, p2, v5}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 315
    .local v0, base64Out:Landroid/util/Base64OutputStream;
    invoke-static {v2, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 316
    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V

    .line 321
    const/16 v5, 0xd

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 322
    const/16 v5, 0xa

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 323
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 331
    .end local v0           #base64Out:Landroid/util/Base64OutputStream;
    :goto_9d
    return-void

    .line 307
    :cond_9e
    iget-object v5, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 308
    .local v1, fileUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_ab} :catch_b6
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_ab} :catch_ad

    move-result-object v2

    goto :goto_80

    .line 328
    .end local v1           #fileUri:Landroid/net/Uri;
    :catch_ad
    move-exception v4

    .line 329
    .local v4, ioe:Ljava/io/IOException;
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const-string v6, "Invalid attachment."

    invoke-direct {v5, v6, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 325
    .end local v4           #ioe:Ljava/io/IOException;
    :catch_b6
    move-exception v5

    goto :goto_9d
.end method

.method private static writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .registers 15
    .parameter "writer"
    .parameter "out"
    .parameter "bodyText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 415
    aget-object v4, p2, v7

    .line 416
    .local v4, text:Ljava/lang/String;
    aget-object v0, p2, v6

    .line 418
    .local v0, html:Ljava/lang/String;
    if-nez v4, :cond_f

    .line 419
    const-string v6, "\r\n"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 459
    :cond_e
    :goto_e
    return-void

    .line 421
    :cond_f
    const/4 v3, 0x0

    .line 422
    .local v3, multipartBoundary:Ljava/lang/String;
    if-eqz v0, :cond_8e

    move v2, v6

    .line 425
    .local v2, multipart:Z
    :goto_13
    if-eqz v2, :cond_3f

    .line 427
    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getNextBoundary()Ljava/lang/String;

    move-result-object v3

    .line 429
    const-string v8, "Content-Type"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "multipart/alternative; boundary=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v8, "\r\n"

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 433
    invoke-static {p0, v3, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 437
    :cond_3f
    const-string v8, "Content-Type"

    const-string v9, "text/plain; charset=utf-8"

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v8, "Content-Transfer-Encoding"

    const-string v9, "base64"

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v8, "\r\n"

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 440
    const-string v8, "UTF-8"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 441
    .local v5, textBytes:[B
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 442
    invoke-static {v5, v11}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 444
    if-eqz v2, :cond_e

    .line 446
    invoke-static {p0, v3, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 448
    const-string v7, "Content-Type"

    const-string v8, "text/html; charset=utf-8"

    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v7, "Content-Transfer-Encoding"

    const-string v8, "base64"

    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v7, "\r\n"

    invoke-virtual {p0, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 451
    const-string v7, "UTF-8"

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 452
    .local v1, htmlBytes:[B
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 453
    invoke-static {v1, v11}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    .line 456
    invoke-static {p0, v3, v6}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto :goto_e

    .end local v1           #htmlBytes:[B
    .end local v2           #multipart:Z
    .end local v5           #textBytes:[B
    :cond_8e
    move v2, v7

    .line 422
    goto :goto_13
.end method

.method public static writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V
    .registers 15
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
    .line 185
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 186
    if-nez v0, :cond_7

    .line 276
    :goto_6
    return-void

    .line 191
    :cond_7
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v1, 0x400

    invoke-direct {v6, p3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 192
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 197
    sget-object v1, Lcom/android/emailcommon/internet/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 198
    const-string v2, "Date"

    invoke-static {v7, v2, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v1, "Subject"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "Message-ID"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "From"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "To"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "Cc"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-eqz p5, :cond_51

    .line 210
    const-string v1, "Bcc"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_51
    const-string v1, "Reply-To"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "MIME-Version"

    const-string v2, "1.0"

    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v1

    .line 217
    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v1, v0, p4}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyText(Lcom/android/emailcommon/provider/EmailContent$Body;IZ)[Ljava/lang/String;

    move-result-object v8

    .line 219
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "(flags&256)=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 224
    :try_start_7f
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 225
    if-lez v3, :cond_99

    const/4 v0, 0x1

    move v1, v0

    .line 227
    :goto_87
    const-string v0, "mixed"

    .line 230
    if-nez v1, :cond_9c

    .line 231
    invoke-static {v7, v6, v8}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_10a

    .line 271
    :goto_8e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 274
    invoke-virtual {v7}, Ljava/io/Writer;->flush()V

    .line 275
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_6

    .line 225
    :cond_99
    const/4 v0, 0x0

    move v1, v0

    goto :goto_87

    .line 234
    :cond_9c
    :try_start_9c
    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getNextBoundary()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 238
    const/4 v4, 0x1

    if-ne v3, v4, :cond_b2

    .line 241
    const/16 v3, 0xa

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 242
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b2

    .line 243
    const-string v0, "alternative"

    .line 247
    :cond_b2
    const-string v3, "Content-Type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multipart/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; boundary=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v3, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "\r\n"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    aget-object v0, v8, v0

    if-eqz v0, :cond_eb

    .line 254
    const/4 v0, 0x0

    invoke-static {v7, v1, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 255
    invoke-static {v7, v6, v8}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 260
    :cond_eb
    const/4 v0, 0x0

    invoke-static {v7, v1, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 261
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 263
    invoke-static {p0, v7, v6, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 264
    const-string v0, "\r\n"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_eb

    .line 268
    const/4 v0, 0x1

    invoke-static {v7, v1, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V
    :try_end_109
    .catchall {:try_start_9c .. :try_end_109} :catchall_10a

    goto :goto_8e

    .line 271
    :catchall_10a
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method
