.class public Lorg/columba/ristretto/message/BasicHeader;
.super Ljava/lang/Object;
.source "BasicHeader.java"


# static fields
.field private static final COMMENT:I = 0x2

.field public static final HIGH:I = 0x4

.field public static final HIGHEST:I = 0x5

.field public static final LOW:I = 0x2

.field public static final LOWEST:I = 0x1

.field public static final NORMAL:I = 0x3

.field private static final PLAIN:I = 0x0

.field private static final QUOTED:I = 0x1

.field private static final whiteSpaceTokenizer:Ljava/util/regex/Pattern;


# instance fields
.field private header:Lorg/columba/ristretto/message/Header;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const-string v0, "\\s*([^\\s]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/message/BasicHeader;->whiteSpaceTokenizer:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/message/Header;)V
    .registers 2
    .parameter "header"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    .line 89
    return-void
.end method

.method private getAddress(Ljava/lang/String;)Lorg/columba/ristretto/message/Address;
    .registers 4
    .parameter "from"

    .prologue
    .line 421
    if-eqz p1, :cond_13

    .line 423
    :try_start_2
    invoke-static {p1}, Lorg/columba/ristretto/message/BasicHeader;->removeComments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/columba/ristretto/coder/EncodedWord;->decode(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v1}, Lorg/columba/ristretto/parser/AddressParser;->parseAddress(Ljava/lang/CharSequence;)Lorg/columba/ristretto/message/Address;
    :try_end_d
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_2 .. :try_end_d} :catch_f

    move-result-object v1

    .line 428
    :goto_e
    return-object v1

    .line 424
    :catch_f
    move-exception v0

    .line 425
    .local v0, e:Lorg/columba/ristretto/parser/ParserException;
    invoke-virtual {v0}, Lorg/columba/ristretto/parser/ParserException;->printStackTrace()V

    .line 428
    .end local v0           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private getMailboxlist(Ljava/lang/String;)[Lorg/columba/ristretto/message/Address;
    .registers 4
    .parameter "from"

    .prologue
    .line 410
    if-eqz p1, :cond_13

    .line 412
    :try_start_2
    invoke-static {p1}, Lorg/columba/ristretto/message/BasicHeader;->removeComments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/columba/ristretto/coder/EncodedWord;->decode(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v1}, Lorg/columba/ristretto/parser/AddressParser;->parseMailboxList(Ljava/lang/CharSequence;)[Lorg/columba/ristretto/message/Address;
    :try_end_d
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_2 .. :try_end_d} :catch_f

    move-result-object v1

    .line 417
    :goto_e
    return-object v1

    .line 413
    :catch_f
    move-exception v0

    .line 414
    .local v0, e:Lorg/columba/ristretto/parser/ParserException;
    invoke-virtual {v0}, Lorg/columba/ristretto/parser/ParserException;->printStackTrace()V

    .line 417
    .end local v0           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_13
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/columba/ristretto/message/Address;

    goto :goto_e
.end method

.method private getWhitespaceSeparatedList(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "references"

    .prologue
    .line 396
    if-eqz p1, :cond_29

    .line 397
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 398
    .local v1, referenceList:Ljava/util/LinkedList;
    sget-object v3, Lorg/columba/ristretto/message/BasicHeader;->whiteSpaceTokenizer:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 399
    .local v0, matcher:Ljava/util/regex/Matcher;
    :goto_d
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 400
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 402
    :cond_1c
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .local v2, result:[Ljava/lang/String;
    move-object v3, v2

    .line 403
    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 406
    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .end local v1           #referenceList:Ljava/util/LinkedList;
    .end local v2           #result:[Ljava/lang/String;
    :goto_28
    return-object v2

    :cond_29
    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/String;

    goto :goto_28
.end method

.method public static final removeComments(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 472
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 474
    .local v3, result:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 475
    .local v4, state:I
    const/4 v1, 0x0

    .line 478
    .local v1, depth:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4e

    .line 479
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 481
    .local v0, current:C
    sparse-switch v0, :sswitch_data_54

    .line 521
    if-eq v4, v6, :cond_20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 478
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 483
    :sswitch_23
    if-eq v4, v6, :cond_20

    .line 485
    if-ne v4, v7, :cond_2c

    const/4 v4, 0x0

    .line 487
    :goto_28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 486
    :cond_2c
    const/4 v4, 0x1

    goto :goto_28

    .line 492
    :sswitch_2e
    if-ne v4, v7, :cond_34

    .line 493
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 497
    :cond_34
    if-ne v4, v6, :cond_39

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 500
    :cond_39
    const/4 v4, 0x2

    .line 501
    const/4 v1, 0x1

    .line 503
    goto :goto_20

    .line 507
    :sswitch_3c
    if-ne v4, v7, :cond_42

    .line 508
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 511
    :cond_42
    if-ne v4, v6, :cond_4a

    .line 512
    add-int/lit8 v1, v1, -0x1

    .line 513
    if-nez v1, :cond_20

    const/4 v4, 0x0

    goto :goto_20

    .line 516
    :cond_4a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 527
    .end local v0           #current:C
    :cond_4e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 481
    nop

    :sswitch_data_54
    .sparse-switch
        0x22 -> :sswitch_23
        0x28 -> :sswitch_2e
        0x29 -> :sswitch_3c
    .end sparse-switch
.end method

.method private setAddressList([Lorg/columba/ristretto/message/Address;Ljava/lang/String;)V
    .registers 7
    .parameter "addresses"
    .parameter "fieldKey"

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lorg/columba/ristretto/message/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, addressfield:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_21

    .line 388
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/columba/ristretto/message/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 392
    :cond_21
    iget-object v2, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method private setMessageIDList(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .parameter "key"
    .parameter "messageids"

    .prologue
    const/4 v4, 0x0

    .line 375
    new-instance v0, Ljava/lang/StringBuffer;

    aget-object v2, p2, v4

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, field:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_9
    array-length v2, p2

    if-ge v1, v2, :cond_19

    .line 377
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 378
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 381
    :cond_19
    iget-object v2, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lorg/columba/ristretto/coder/EncodedWord;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    return-void
.end method


# virtual methods
.method public count()I
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    invoke-virtual {v0}, Lorg/columba/ristretto/message/Header;->count()I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 446
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    invoke-virtual {v0, p1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBcc()[Lorg/columba/ristretto/message/Address;
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Bcc"

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/columba/ristretto/message/BasicHeader;->getMailboxlist(Ljava/lang/String;)[Lorg/columba/ristretto/message/Address;

    move-result-object v0

    return-object v0
.end method

.method public getBeenThere()Lorg/columba/ristretto/message/Address;
    .registers 4

    .prologue
    .line 108
    iget-object v1, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v2, "X-BeenThere"

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/columba/ristretto/message/BasicHeader;->getAddress(Ljava/lang/String;)Lorg/columba/ristretto/message/Address;

    move-result-object v0

    .line 109
    .local v0, result:Lorg/columba/ristretto/message/Address;
    if-nez v0, :cond_1a

    .line 110
    iget-object v1, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v2, "X-Beenthere"

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/columba/ristretto/message/BasicHeader;->getAddress(Ljava/lang/String;)Lorg/columba/ristretto/message/Address;

    move-result-object v0

    .line 113
    :cond_1a
    return-object v0
.end method

.method public getCc()[Lorg/columba/ristretto/message/Address;
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Cc"

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/columba/ristretto/message/BasicHeader;->getMailboxlist(Ljava/lang/String;)[Lorg/columba/ristretto/message/Address;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .registers 5

    .prologue
    .line 228
    iget-object v2, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v3, "Date"

    invoke-virtual {v2, v3}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, date:Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 231
    :try_start_a
    invoke-static {v0}, Lorg/columba/ristretto/message/BasicHeader;->removeComments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/columba/ristretto/parser/DateParser;->parse(Ljava/lang/CharSequence;)Ljava/util/Date;
    :try_end_11
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_a .. :try_end_11} :catch_13

    move-result-object v2

    .line 236
    :goto_12
    return-object v2

    .line 232
    :catch_13
    move-exception v1

    .line 233
    .local v1, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    goto :goto_12

    .line 236
    .end local v1           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_1a
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    goto :goto_12
.end method

.method public getFrom()Lorg/columba/ristretto/message/Address;
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "From"

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/columba/ristretto/message/BasicHeader;->getAddress(Ljava/lang/String;)Lorg/columba/ristretto/message/Address;

    move-result-object v0

    return-object v0
.end method

.method public getInReplyTo()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 195
    iget-object v1, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v2, "In-Reply-To"

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, references:Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/message/BasicHeader;->getWhitespaceSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMessageID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Message-ID"

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .registers 6

    .prologue
    const/4 v2, 0x3

    .line 209
    iget-object v3, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v4, "X-Priority"

    invoke-virtual {v3, v4}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, priority:Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 212
    :try_start_b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_e} :catch_10

    move-result v2

    .line 217
    :cond_f
    :goto_f
    return v2

    .line 213
    :catch_10
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_f
.end method

.method public getReferences()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 184
    iget-object v1, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v2, "References"

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, references:Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/columba/ristretto/message/BasicHeader;->getWhitespaceSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getReplyTo()[Lorg/columba/ristretto/message/Address;
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Reply-To"

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/columba/ristretto/message/BasicHeader;->getMailboxlist(Ljava/lang/String;)[Lorg/columba/ristretto/message/Address;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 4

    .prologue
    .line 163
    iget-object v1, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v2, "Subject"

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, subject:Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-static {v0}, Lorg/columba/ristretto/coder/EncodedWord;->decode(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getTo()[Lorg/columba/ristretto/message/Address;
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "To"

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/columba/ristretto/message/BasicHeader;->getMailboxlist(Ljava/lang/String;)[Lorg/columba/ristretto/message/Address;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 456
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    invoke-virtual {v0, p1, p2}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    return-void
.end method

.method public setBcc([Lorg/columba/ristretto/message/Address;)V
    .registers 3
    .parameter "addresses"

    .prologue
    .line 280
    const-string v0, "Bcc"

    invoke-direct {p0, p1, v0}, Lorg/columba/ristretto/message/BasicHeader;->setAddressList([Lorg/columba/ristretto/message/Address;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public setCc([Lorg/columba/ristretto/message/Address;)V
    .registers 3
    .parameter "addresses"

    .prologue
    .line 269
    const-string v0, "Cc"

    invoke-direct {p0, p1, v0}, Lorg/columba/ristretto/message/BasicHeader;->setAddressList([Lorg/columba/ristretto/message/Address;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .registers 5
    .parameter "date"

    .prologue
    .line 302
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Date"

    invoke-static {p1}, Lorg/columba/ristretto/message/MessageDate;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method public setFrom(Lorg/columba/ristretto/message/Address;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 247
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "From"

    invoke-virtual {p1}, Lorg/columba/ristretto/message/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public setInReplyTo([Ljava/lang/String;)V
    .registers 3
    .parameter "messageids"

    .prologue
    .line 349
    const-string v0, "In-Reply-To"

    invoke-direct {p0, v0, p1}, Lorg/columba/ristretto/message/BasicHeader;->setMessageIDList(Ljava/lang/String;[Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public setMessageID(Ljava/lang/String;)V
    .registers 4
    .parameter "messageid"

    .prologue
    .line 321
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Message-ID"

    invoke-virtual {v0, v1, p1}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    return-void
.end method

.method public setPriority(I)V
    .registers 5
    .parameter "priority"

    .prologue
    .line 359
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "X-Priority"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method public setReferences([Ljava/lang/String;)V
    .registers 3
    .parameter "messageids"

    .prologue
    .line 335
    const-string v0, "References"

    invoke-direct {p0, v0, p1}, Lorg/columba/ristretto/message/BasicHeader;->setMessageIDList(Ljava/lang/String;[Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public setReplyTo([Lorg/columba/ristretto/message/Address;)V
    .registers 3
    .parameter "addresses"

    .prologue
    .line 291
    const-string v0, "Reply-To"

    invoke-direct {p0, p1, v0}, Lorg/columba/ristretto/message/BasicHeader;->setAddressList([Lorg/columba/ristretto/message/Address;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public setSubject(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 6
    .parameter "subject"
    .parameter "charset"

    .prologue
    .line 371
    iget-object v0, p0, Lorg/columba/ristretto/message/BasicHeader;->header:Lorg/columba/ristretto/message/Header;

    const-string v1, "Subject"

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lorg/columba/ristretto/coder/EncodedWord;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method public setTo([Lorg/columba/ristretto/message/Address;)V
    .registers 3
    .parameter "addresses"

    .prologue
    .line 258
    const-string v0, "To"

    invoke-direct {p0, p1, v0}, Lorg/columba/ristretto/message/BasicHeader;->setAddressList([Lorg/columba/ristretto/message/Address;Ljava/lang/String;)V

    .line 259
    return-void
.end method
