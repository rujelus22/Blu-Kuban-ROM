.class public Lorg/columba/ristretto/imap/IMAPResponse;
.super Ljava/lang/Object;
.source "IMAPResponse.java"


# static fields
.field public static final RESPONSE_CONTINUATION:I = 0x3

.field public static final RESPONSE_MAILBOX_DATA:I = 0x1

.field public static final RESPONSE_MESSAGE_DATA:I = 0x2

.field public static final RESPONSE_STATUS:I

.field private static final literalMatcher:Ljava/util/regex/Matcher;

.field private static final literalPattern:Ljava/util/regex/Pattern;


# instance fields
.field protected literals:Ljava/util/List;

.field protected preNumber:I

.field protected responseMessage:Ljava/lang/String;

.field protected responseSubType:Ljava/lang/String;

.field protected responseTextCode:Lorg/columba/ristretto/imap/ResponseTextCode;

.field protected responseType:I

.field protected source:Ljava/lang/String;

.field protected tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    const-string v0, "^\\{(\\d+)\\}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/IMAPResponse;->literalPattern:Ljava/util/regex/Pattern;

    .line 54
    sget-object v0, Lorg/columba/ristretto/imap/IMAPResponse;->literalPattern:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/IMAPResponse;->literalMatcher:Ljava/util/regex/Matcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/columba/ristretto/imap/IMAPResponse;->source:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->literals:Ljava/util/List;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->preNumber:I

    .line 102
    return-void
.end method


# virtual methods
.method public addLiteral(Lorg/columba/ristretto/io/Source;)V
    .registers 3
    .parameter "literal"

    .prologue
    .line 321
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->literals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method public appendResponseText(Ljava/lang/String;)V
    .registers 4
    .parameter "restresponse"

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPResponse;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->source:Ljava/lang/String;

    .line 302
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseMessage:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public getData(Ljava/lang/CharSequence;)Lorg/columba/ristretto/io/Source;
    .registers 5
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 356
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lorg/columba/ristretto/io/CharSequenceSource;

    invoke-direct {v0, p1}, Lorg/columba/ristretto/io/CharSequenceSource;-><init>(Ljava/lang/CharSequence;)V

    .line 365
    :goto_c
    return-object v0

    .line 357
    :cond_d
    sget-object v0, Lorg/columba/ristretto/imap/IMAPResponse;->literalMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 358
    sget-object v0, Lorg/columba/ristretto/imap/IMAPResponse;->literalMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 359
    sget-object v0, Lorg/columba/ristretto/imap/IMAPResponse;->literalMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/columba/ristretto/imap/IMAPResponse;->getLiteral(I)Lorg/columba/ristretto/io/Source;

    move-result-object v0

    goto :goto_c

    .line 362
    :cond_29
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_42

    .line 363
    new-instance v0, Lorg/columba/ristretto/io/CharSequenceSource;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/columba/ristretto/io/CharSequenceSource;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 365
    :cond_42
    new-instance v0, Lorg/columba/ristretto/io/CharSequenceSource;

    invoke-direct {v0, p1}, Lorg/columba/ristretto/io/CharSequenceSource;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method

.method public getLiteral(I)Lorg/columba/ristretto/io/Source;
    .registers 3
    .parameter "index"

    .prologue
    .line 312
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->literals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/io/Source;

    return-object v0
.end method

.method public getPreNumber()I
    .registers 2

    .prologue
    .line 334
    iget v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->preNumber:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseSubType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseTextCode()Lorg/columba/ristretto/imap/ResponseTextCode;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseTextCode:Lorg/columba/ristretto/imap/ResponseTextCode;

    return-object v0
.end method

.method public getResponseType()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseType:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 4

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/columba/ristretto/imap/IMAPResponse;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 125
    .local v0, cleanedup:Ljava/lang/StringBuffer;
    sget-object v1, Lorg/columba/ristretto/imap/IMAPResponse;->literalMatcher:Ljava/util/regex/Matcher;

    iget-object v2, p0, Lorg/columba/ristretto/imap/IMAPResponse;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 127
    :goto_12
    sget-object v1, Lorg/columba/ristretto/imap/IMAPResponse;->literalMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 128
    sget-object v1, Lorg/columba/ristretto/imap/IMAPResponse;->literalMatcher:Ljava/util/regex/Matcher;

    sget-object v2, Lorg/columba/ristretto/imap/IMAPResponse;->literalMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/columba/ristretto/imap/IMAPResponse;->getData(Ljava/lang/CharSequence;)Lorg/columba/ristretto/io/Source;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_12

    .line 130
    :cond_2e
    sget-object v1, Lorg/columba/ristretto/imap/IMAPResponse;->literalMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isBAD()Z
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseSubType:Ljava/lang/String;

    const-string v1, "BAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBYE()Z
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseSubType:Ljava/lang/String;

    const-string v1, "BYE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNO()Z
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseSubType:Ljava/lang/String;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOK()Z
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseSubType:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTagged()Z
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/columba/ristretto/imap/IMAPResponse;->tag:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setPreNumber(I)V
    .registers 2
    .parameter "preNumber"

    .prologue
    .line 343
    iput p1, p0, Lorg/columba/ristretto/imap/IMAPResponse;->preNumber:I

    .line 344
    return-void
.end method

.method public setResponseMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "responseText"

    .prologue
    .line 222
    iput-object p1, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseMessage:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setResponseSubType(Ljava/lang/String;)V
    .registers 2
    .parameter "responseSubType"

    .prologue
    .line 270
    iput-object p1, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseSubType:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setResponseTextCode(Lorg/columba/ristretto/imap/ResponseTextCode;)V
    .registers 2
    .parameter "responseTextCode"

    .prologue
    .line 294
    iput-object p1, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseTextCode:Lorg/columba/ristretto/imap/ResponseTextCode;

    .line 295
    return-void
.end method

.method public setResponseType(I)V
    .registers 2
    .parameter "responseType"

    .prologue
    .line 248
    iput p1, p0, Lorg/columba/ristretto/imap/IMAPResponse;->responseType:I

    .line 249
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2
    .parameter "string"

    .prologue
    .line 192
    iput-object p1, p0, Lorg/columba/ristretto/imap/IMAPResponse;->tag:Ljava/lang/String;

    .line 193
    return-void
.end method
