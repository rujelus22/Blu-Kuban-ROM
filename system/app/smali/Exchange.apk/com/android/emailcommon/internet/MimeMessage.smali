.class public Lcom/android/emailcommon/internet/MimeMessage;
.super Lcom/android/emailcommon/mail/Message;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private mBcc:[Lcom/android/emailcommon/mail/Address;

.field private mBody:Lcom/android/emailcommon/mail/Body;

.field private mCc:[Lcom/android/emailcommon/mail/Address;

.field private mFrom:[Lcom/android/emailcommon/mail/Address;

.field private mHeader:Lcom/android/emailcommon/internet/MimeHeader;

.field private mInhibitLocalMessageId:Z

.field private mReplyTo:[Lcom/android/emailcommon/mail/Address;

.field private mSentDate:Ljava/util/Date;

.field private mTo:[Lcom/android/emailcommon/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 72
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/emailcommon/internet/MimeMessage;->sRandom:Ljava/util/Random;

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/emailcommon/internet/MimeMessage;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 83
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 120
    return-void
.end method

.method private getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    if-nez v0, :cond_b

    .line 146
    new-instance v0, Lcom/android/emailcommon/internet/MimeHeader;

    invoke-direct {v0}, Lcom/android/emailcommon/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    .line 148
    :cond_b
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public getBody()Lcom/android/emailcommon/mail/Body;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 178
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, contentType:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 180
    const-string v0, "text/plain"

    .line 182
    .end local v0           #contentType:Ljava/lang/String;
    :cond_a
    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 187
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, contentDisposition:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 189
    const/4 v0, 0x0

    .line 191
    .end local v0           #contentDisposition:Ljava/lang/String;
    :cond_9
    return-object v0
.end method

.method protected getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 500
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v1, :cond_2d

    .line 160
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {p0, v2}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;

    .line 162
    .local v0, field:Lorg/apache/james/mime4j/field/DateTimeField;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2d} :catch_30

    .line 167
    .end local v0           #field:Lorg/apache/james/mime4j/field/DateTimeField;
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    return-object v1

    .line 163
    :catch_30
    move-exception v1

    goto :goto_2d
.end method

.method protected parse(Ljava/io/InputStream;)V
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/internet/MimeHeader;->clear()V

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 127
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

    .line 128
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    .line 129
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    .line 130
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    .line 131
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

    .line 132
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 133
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    .line 135
    new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V

    .line 136
    .local v0, parser:Lorg/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;-><init>(Lcom/android/emailcommon/internet/MimeMessage;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V

    .line 137
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 138
    return-void
.end method

.method public setBody(Lcom/android/emailcommon/mail/Body;)V
    .registers 8
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    .line 371
    instance-of v1, p1, Lcom/android/emailcommon/mail/Multipart;

    if-eqz v1, :cond_1d

    move-object v0, p1

    .line 372
    check-cast v0, Lcom/android/emailcommon/mail/Multipart;

    .line 373
    .local v0, multipart:Lcom/android/emailcommon/mail/Multipart;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/mail/Multipart;->setParent(Lcom/android/emailcommon/mail/Part;)V

    .line 374
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v1, "MIME-Version"

    const-string v2, "1.0"

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .end local v0           #multipart:Lcom/android/emailcommon/mail/Multipart;
    :cond_1c
    :goto_1c
    return-void

    .line 377
    :cond_1d
    instance-of v1, p1, Lcom/android/emailcommon/internet/TextBody;

    if-eqz v1, :cond_1c

    .line 378
    const-string v1, "Content-Type"

    const-string v2, "%s;\n charset=utf-8"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "base64"

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method
