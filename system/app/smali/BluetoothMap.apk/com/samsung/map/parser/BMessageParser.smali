.class public Lcom/samsung/map/parser/BMessageParser;
.super Ljava/lang/Object;
.source "BMessageParser.java"


# instance fields
.field public currentName:Ljava/lang/String;

.field public currentValue:Ljava/lang/String;

.field errorExtra:Ljava/lang/String;

.field msg:Lcom/samsung/map/bmessage/BMessage;

.field parsingComplete:Z

.field ps:Lcom/samsung/map/parser/ParsingStatus;

.field reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/samsung/map/bmessage/BMessage;

    invoke-direct {v0}, Lcom/samsung/map/bmessage/BMessage;-><init>()V

    iput-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->msg:Lcom/samsung/map/bmessage/BMessage;

    .line 65
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->reader:Ljava/io/BufferedReader;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/map/parser/BMessageParser;->parsingComplete:Z

    .line 67
    sget-object v0, Lcom/samsung/map/parser/ParsingStatus;->OK:Lcom/samsung/map/parser/ParsingStatus;

    iput-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->ps:Lcom/samsung/map/parser/ParsingStatus;

    .line 68
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public getBMessage()Lcom/samsung/map/bmessage/BMessage;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->msg:Lcom/samsung/map/bmessage/BMessage;

    return-object v0
.end method

.method hasPadding(Ljava/lang/String;I)Z
    .registers 7
    .parameter "s"
    .parameter "padding"

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le p2, v3, :cond_8

    .line 289
    :cond_7
    :goto_7
    return v2

    .line 283
    :cond_8
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, p2, :cond_1a

    .line 284
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 285
    .local v0, c:C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_17

    const/16 v3, 0x9

    if-ne v0, v3, :cond_7

    .line 283
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 289
    .end local v0           #c:C
    :cond_1a
    const/4 v2, 0x1

    goto :goto_7
.end method

.method public parse()Lcom/samsung/map/parser/ParsingStatus;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseObject()V
    :try_end_3
    .catch Lcom/samsung/map/parser/ParsingException; {:try_start_0 .. :try_end_3} :catch_9

    .line 79
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/map/parser/BMessageParser;->parsingComplete:Z

    .line 80
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->ps:Lcom/samsung/map/parser/ParsingStatus;

    return-object v1

    .line 76
    :catch_9
    move-exception v0

    .line 77
    .local v0, e:Lcom/samsung/map/parser/ParsingException;
    const-string v1, "BMessageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method parseBodyContents()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/map/parser/ParsingException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseMessage()Ljava/lang/String;

    move-result-object v0

    .local v0, bodyContent:Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 266
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 269
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 271
    const-string v0, "Custom body"

    .line 272
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_1a
    return-object v1
.end method

.method parseContent()Lcom/samsung/map/bmessage/BMessageContent;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/map/parser/ParsingException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lcom/samsung/map/bmessage/BMessageContent;

    invoke-direct {v0}, Lcom/samsung/map/bmessage/BMessageContent;-><init>()V

    .line 228
    .local v0, content:Lcom/samsung/map/bmessage/BMessageContent;
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseNextProperty()V

    .line 229
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    const-string v3, "PARTID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 230
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/map/bmessage/BMessageContent;->PartId:Ljava/lang/String;

    .line 231
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseNextProperty()V

    .line 233
    :cond_19
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    const-string v3, "ENCODING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 234
    iget-object v2, v0, Lcom/samsung/map/bmessage/BMessageContent;->Properties:Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;

    iget-object v3, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;->Encoding:Ljava/lang/String;

    .line 235
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseNextProperty()V

    .line 237
    :cond_2c
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    const-string v3, "CHARSET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 238
    iget-object v2, v0, Lcom/samsung/map/bmessage/BMessageContent;->Properties:Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;

    iget-object v3, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;->Charset:Ljava/lang/String;

    .line 239
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseNextProperty()V

    .line 241
    :cond_3f
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    const-string v3, "LANGUAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 242
    iget-object v2, v0, Lcom/samsung/map/bmessage/BMessageContent;->Properties:Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;

    iget-object v3, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;->Language:Ljava/lang/String;

    .line 243
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseNextProperty()V

    .line 245
    :cond_52
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    const-string v3, "LENGTH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 247
    :try_start_5c
    iget-object v2, v0, Lcom/samsung/map/bmessage/BMessageContent;->Properties:Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/samsung/map/bmessage/BMessageContent$BodyProperty;->Length:I
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_6b} :catch_72

    .line 256
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseBodyContents()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/map/bmessage/BMessageContent;->BodyContents:Ljava/util/ArrayList;

    .line 258
    return-object v0

    .line 248
    :catch_72
    move-exception v1

    .line 249
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/samsung/map/parser/ParsingException;

    sget-object v3, Lcom/samsung/map/parser/ParsingStatus;->INVALID_PROPERTY_VALUE:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " expected a number ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/map/parser/ParsingException;-><init>(Lcom/samsung/map/parser/ParsingStatus;Ljava/lang/String;)V

    throw v2

    .line 253
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_9c
    new-instance v2, Lcom/samsung/map/parser/ParsingException;

    sget-object v3, Lcom/samsung/map/parser/ParsingStatus;->INVALID_PROPERTY_VALUE:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " missing LENGTH property ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/map/parser/ParsingException;-><init>(Lcom/samsung/map/parser/ParsingStatus;Ljava/lang/String;)V

    throw v2
.end method

.method parseEnvelope()Lcom/samsung/map/bmessage/BMessageEnvelope;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/map/parser/ParsingException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, env:Lcom/samsung/map/bmessage/BMessageEnvelope;
    const-string v1, "BEGIN:BENV"

    invoke-virtual {p0, v1}, Lcom/samsung/map/parser/BMessageParser;->tryTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 200
    new-instance v0, Lcom/samsung/map/bmessage/BMessageEnvelope;

    .end local v0           #env:Lcom/samsung/map/bmessage/BMessageEnvelope;
    invoke-direct {v0}, Lcom/samsung/map/bmessage/BMessageEnvelope;-><init>()V

    .line 202
    .restart local v0       #env:Lcom/samsung/map/bmessage/BMessageEnvelope;
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseRecipients()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/map/bmessage/BMessageEnvelope;->recipients:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseEnvelope()Lcom/samsung/map/bmessage/BMessageEnvelope;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/map/bmessage/BMessageEnvelope;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    .line 204
    const-string v1, "BEGIN:BBODY"

    invoke-virtual {p0, v1}, Lcom/samsung/map/parser/BMessageParser;->tryTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 205
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseContent()Lcom/samsung/map/bmessage/BMessageContent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/map/bmessage/BMessageEnvelope;->content:Lcom/samsung/map/bmessage/BMessageContent;

    .line 206
    const-string v1, "END:BBODY"

    invoke-virtual {p0, v1}, Lcom/samsung/map/parser/BMessageParser;->parseTag(Ljava/lang/String;)V

    .line 208
    :cond_2d
    const-string v1, "END:BENV"

    invoke-virtual {p0, v1}, Lcom/samsung/map/parser/BMessageParser;->parseTag(Ljava/lang/String;)V

    .line 211
    :cond_32
    return-object v0
.end method

.method parseLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "expected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/map/parser/ParsingException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_8e

    .line 353
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 354
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 355
    .local v0, delimiter:I
    if-gez v0, :cond_44

    .line 356
    new-instance v2, Lcom/samsung/map/parser/ParsingException;

    sget-object v3, Lcom/samsung/map/parser/ParsingStatus;->INVALID_PROPERTY_FORMATTING:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parsed: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', but expected \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/map/parser/ParsingException;-><init>(Lcom/samsung/map/parser/ParsingStatus;Ljava/lang/String;)V

    throw v2

    .line 359
    :cond_44
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    .line 360
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    .line 361
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 362
    new-instance v2, Lcom/samsung/map/parser/ParsingException;

    sget-object v3, Lcom/samsung/map/parser/ParsingStatus;->UNEXPECTED_PROPERTY:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parsed \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', but expected \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/map/parser/ParsingException;-><init>(Lcom/samsung/map/parser/ParsingStatus;Ljava/lang/String;)V

    throw v2

    .line 366
    .end local v0           #delimiter:I
    :cond_8e
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    return-object v2
.end method

.method parseMessage()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    const-string v4, "BEGIN:MSG"

    invoke-virtual {p0, v4}, Lcom/samsung/map/parser/BMessageParser;->tryTag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 294
    const/4 v0, 0x0

    .line 320
    :cond_9
    :goto_9
    return-object v0

    .line 297
    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 298
    .local v0, body:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/map/parser/BMessageParser;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_65

    .line 300
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 301
    .local v1, length:I
    const/4 v3, 0x0

    .line 304
    .local v3, padding:I
    :goto_1c
    if-ge v3, v1, :cond_31

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_31

    .line 305
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 308
    :cond_31
    :goto_31
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "END:MSG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2, v3}, Lcom/samsung/map/parser/BMessageParser;->hasPadding(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .end local v2           #line:Ljava/lang/String;
    :cond_50
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    iget-object v4, p0, Lcom/samsung/map/parser/BMessageParser;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #line:Ljava/lang/String;
    goto :goto_31

    .line 316
    .end local v1           #length:I
    .end local v3           #padding:I
    :cond_65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_9

    .line 317
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method parseNextProperty()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/map/parser/ParsingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3a

    .line 371
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_54

    .line 373
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 374
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    .line 375
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    .line 377
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_54

    .line 378
    new-instance v1, Lcom/samsung/map/parser/ParsingException;

    sget-object v2, Lcom/samsung/map/parser/ParsingStatus;->INVALID_PROPERTY_FORMATTING:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", invalid property formatting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/map/parser/ParsingException;-><init>(Lcom/samsung/map/parser/ParsingStatus;Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_54
    return-void
.end method

.method parseObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/map/parser/ParsingException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v0, "<bmessage-object>"

    iput-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 87
    const-string v0, "BEGIN:BMSG"

    invoke-virtual {p0, v0}, Lcom/samsung/map/parser/BMessageParser;->parseTag(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->msg:Lcom/samsung/map/bmessage/BMessage;

    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseProperty()Lcom/samsung/map/bmessage/BMessageProperty;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/map/bmessage/BMessage;->property:Lcom/samsung/map/bmessage/BMessageProperty;

    .line 89
    iget-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->msg:Lcom/samsung/map/bmessage/BMessage;

    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseOriginators()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/map/bmessage/BMessage;->originators:Ljava/util/ArrayList;

    .line 90
    iget-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->msg:Lcom/samsung/map/bmessage/BMessage;

    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseEnvelope()Lcom/samsung/map/bmessage/BMessageEnvelope;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/map/bmessage/BMessage;->envelope:Lcom/samsung/map/bmessage/BMessageEnvelope;

    .line 91
    const-string v0, "END:BMSG"

    invoke-virtual {p0, v0}, Lcom/samsung/map/parser/BMessageParser;->parseTag(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method parseOriginators()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/map/bmessage/VCard;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/map/parser/ParsingException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 142
    .local v0, extraSwap:Ljava/lang/String;
    const-string v2, "<bmessage-originator>"

    iput-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseVCardList()Ljava/util/ArrayList;

    move-result-object v1

    .line 144
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/map/bmessage/VCard;>;"
    iput-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 146
    return-object v1
.end method

.method parseProperty()Lcom/samsung/map/bmessage/BMessageProperty;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/map/parser/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 96
    iget-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 97
    .local v0, extraSwap:Ljava/lang/String;
    new-instance v1, Lcom/samsung/map/bmessage/BMessageProperty;

    invoke-direct {v1}, Lcom/samsung/map/bmessage/BMessageProperty;-><init>()V

    .line 99
    .local v1, property:Lcom/samsung/map/bmessage/BMessageProperty;
    const-string v2, "<bmessage-version-property>"

    iput-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 100
    const-string v2, "VERSION"

    invoke-virtual {p0, v2}, Lcom/samsung/map/parser/BMessageParser;->parseLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/map/bmessage/BMessageProperty;->Version:Ljava/lang/String;

    .line 102
    const-string v2, "<bmessage-readstatus-property>"

    iput-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 103
    const-string v2, "STATUS"

    invoke-virtual {p0, v2}, Lcom/samsung/map/parser/BMessageParser;->parseLine(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    const-string v3, "UNREAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 106
    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/map/bmessage/BMessageProperty;->ReadStatus:I

    .line 114
    :goto_2a
    const-string v2, "<bmessage-type-property>"

    iput-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 115
    const-string v2, "TYPE"

    invoke-virtual {p0, v2}, Lcom/samsung/map/parser/BMessageParser;->parseLine(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    const-string v3, "SMS_GSM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 118
    const/4 v2, 0x2

    iput v2, v1, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    .line 130
    :goto_40
    const-string v2, "<bmessage-folder-property>"

    iput-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 131
    const-string v2, "FOLDER"

    invoke-virtual {p0, v2}, Lcom/samsung/map/parser/BMessageParser;->parseLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/map/bmessage/BMessageProperty;->Folder:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 134
    return-object v1

    .line 107
    :cond_4f
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    const-string v3, "READ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 108
    iput v4, v1, Lcom/samsung/map/bmessage/BMessageProperty;->ReadStatus:I

    goto :goto_2a

    .line 110
    :cond_5c
    new-instance v2, Lcom/samsung/map/parser/ParsingException;

    sget-object v3, Lcom/samsung/map/parser/ParsingStatus;->INVALID_PROPERTY_VALUE:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " unexpected value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/map/parser/ParsingException;-><init>(Lcom/samsung/map/parser/ParsingStatus;Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_85
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    const-string v3, "SMS_CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 120
    const/4 v2, 0x4

    iput v2, v1, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    goto :goto_40

    .line 121
    :cond_93
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    const-string v3, "MMS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 122
    const/16 v2, 0x8

    iput v2, v1, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    goto :goto_40

    .line 123
    :cond_a2
    iget-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    const-string v3, "EMAIL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 124
    iput v4, v1, Lcom/samsung/map/bmessage/BMessageProperty;->Type:I

    goto :goto_40

    .line 126
    :cond_af
    new-instance v2, Lcom/samsung/map/parser/ParsingException;

    sget-object v3, Lcom/samsung/map/parser/ParsingStatus;->INVALID_PROPERTY_VALUE:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " unexpected value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/map/parser/ParsingException;-><init>(Lcom/samsung/map/parser/ParsingStatus;Ljava/lang/String;)V

    throw v2
.end method

.method parseRecipients()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/map/bmessage/VCard;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/map/parser/ParsingException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/map/bmessage/VCard;>;"
    iget-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 218
    .local v0, extraSwap:Ljava/lang/String;
    const-string v2, "<bmessage-envelope>"

    iput-object v2, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseVCardList()Ljava/util/ArrayList;

    move-result-object v1

    .line 221
    iput-object v0, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    .line 222
    return-object v1
.end method

.method parseTag(Ljava/lang/String;)V
    .registers 7
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/map/parser/ParsingException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_42

    .line 327
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 329
    new-instance v1, Lcom/samsung/map/parser/ParsingException;

    sget-object v2, Lcom/samsung/map/parser/ParsingStatus;->INVALID_TAG:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parsed \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', but expected \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/map/parser/ParsingException;-><init>(Lcom/samsung/map/parser/ParsingStatus;Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_42
    return-void
.end method

.method parseVCard()Lcom/samsung/map/bmessage/VCard;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/map/parser/ParsingException;
        }
    .end annotation

    .prologue
    .line 165
    const-string v1, "BEGIN:VCARD"

    invoke-virtual {p0, v1}, Lcom/samsung/map/parser/BMessageParser;->tryTag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 166
    const/4 v0, 0x0

    .line 193
    :cond_9
    return-object v0

    .line 169
    :cond_a
    new-instance v0, Lcom/samsung/map/bmessage/VCard;

    invoke-direct {v0}, Lcom/samsung/map/bmessage/VCard;-><init>()V

    .line 171
    .local v0, vc:Lcom/samsung/map/bmessage/VCard;
    const-string v1, "VERSION"

    invoke-virtual {p0, v1}, Lcom/samsung/map/parser/BMessageParser;->parseLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/map/bmessage/VCard;->Version:Ljava/lang/String;

    .line 172
    const-string v1, "N"

    invoke-virtual {p0, v1}, Lcom/samsung/map/parser/BMessageParser;->parseLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/map/bmessage/VCard;->N:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseNextProperty()V

    .line 175
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    const-string v2, "FN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 176
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/map/bmessage/VCard;->FN:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseNextProperty()V

    .line 179
    :cond_33
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    const-string v2, "TEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 180
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/map/bmessage/VCard;->Tel:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseNextProperty()V

    .line 183
    :cond_44
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    const-string v2, "EMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 184
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/map/bmessage/VCard;->Email:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseNextProperty()V

    .line 188
    :cond_55
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    const-string v2, "END"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    const-string v2, "VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 189
    :cond_69
    new-instance v1, Lcom/samsung/map/parser/ParsingException;

    sget-object v2, Lcom/samsung/map/parser/ParsingStatus;->INVALID_TAG:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/map/parser/BMessageParser;->errorExtra:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "parsed \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/map/parser/BMessageParser;->currentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/map/parser/BMessageParser;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', but expected \'END:VCARD\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/map/parser/ParsingException;-><init>(Lcom/samsung/map/parser/ParsingStatus;Ljava/lang/String;)V

    throw v1
.end method

.method parseVCardList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/map/bmessage/VCard;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/map/parser/ParsingException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/map/bmessage/VCard;>;"
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/map/parser/BMessageParser;->parseVCard()Lcom/samsung/map/bmessage/VCard;

    move-result-object v1

    .local v1, vc:Lcom/samsung/map/bmessage/VCard;
    if-eqz v1, :cond_f

    .line 154
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 157
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 158
    const/4 v0, 0x0

    .line 161
    :cond_16
    return-object v0
.end method

.method tryTag(Ljava/lang/String;)Z
    .registers 5
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->reader:Ljava/io/BufferedReader;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 338
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 340
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 341
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 342
    const/4 v1, 0x1

    .line 346
    :goto_19
    return v1

    .line 345
    :cond_1a
    iget-object v1, p0, Lcom/samsung/map/parser/BMessageParser;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->reset()V

    .line 346
    const/4 v1, 0x0

    goto :goto_19
.end method
