.class Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
.super Ljava/lang/Object;
.source "MimeTreeParser.java"


# instance fields
.field private i:Lorg/columba/ristretto/imap/parser/Interval;

.field private response:Lorg/columba/ristretto/imap/IMAPResponse;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)V
    .registers 4
    .parameter "response"
    .parameter "s"

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    .line 409
    iput-object p1, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->response:Lorg/columba/ristretto/imap/IMAPResponse;

    .line 410
    new-instance v0, Lorg/columba/ristretto/imap/parser/Interval;

    invoke-direct {v0}, Lorg/columba/ristretto/imap/parser/Interval;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    .line 411
    return-void
.end method


# virtual methods
.method public getNextItem()Lorg/columba/ristretto/imap/parser/Item;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 420
    new-instance v1, Lorg/columba/ristretto/imap/parser/Item;

    invoke-direct {v1}, Lorg/columba/ristretto/imap/parser/Item;-><init>()V

    .line 423
    .local v1, result:Lorg/columba/ristretto/imap/parser/Item;
    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget-object v4, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v4, v4, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    .line 425
    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v3, v3, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    iget-object v4, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_1f

    move-object v1, v2

    .line 478
    .end local v1           #result:Lorg/columba/ristretto/imap/parser/Item;
    :goto_1e
    return-object v1

    .line 427
    .restart local v1       #result:Lorg/columba/ristretto/imap/parser/Item;
    :cond_1f
    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    iget-object v4, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v4, v4, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_43

    .line 428
    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v4, v3, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    .line 429
    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v3, v3, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    iget-object v4, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_1f

    move-object v1, v2

    .line 430
    goto :goto_1e

    .line 435
    :cond_43
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v3, v3, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_7a

    .line 436
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    const-string v4, "\""

    iget-object v5, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v5, v5, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    .line 438
    invoke-virtual {v1, v6}, Lorg/columba/ristretto/imap/parser/Item;->setType(I)V

    .line 439
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v3, v3, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v4, v4, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/parser/Item;->setValue(Ljava/lang/Object;)V

    goto :goto_1e

    .line 444
    :cond_7a
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v3, v3, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_ba

    .line 445
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    const-string v4, "}"

    iget-object v5, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v5, v5, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    .line 447
    invoke-virtual {v1, v6}, Lorg/columba/ristretto/imap/parser/Item;->setType(I)V

    .line 448
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->response:Lorg/columba/ristretto/imap/IMAPResponse;

    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    iget-object v4, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v4, v4, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    iget-object v5, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v5, v5, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/columba/ristretto/imap/IMAPResponse;->getData(Ljava/lang/CharSequence;)Lorg/columba/ristretto/io/Source;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/parser/Item;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 453
    :cond_ba
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v3, v3, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_ef

    .line 454
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    iget-object v4, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v4, v4, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    invoke-static {v3, v4}, Lorg/columba/ristretto/imap/parser/ParenthesisParser;->getClosingPos(Ljava/lang/CharSequence;I)I

    move-result v3

    iput v3, v2, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    .line 456
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/parser/Item;->setType(I)V

    .line 457
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v3, v3, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v4, v4, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/parser/Item;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 463
    :cond_ef
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    const-string v4, " "

    iget-object v5, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v5, v5, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    .line 464
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v2, v2, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_112

    .line 465
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    .line 467
    :cond_112
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->s:Ljava/lang/String;

    iget-object v3, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v3, v3, Lorg/columba/ristretto/imap/parser/Interval;->a:I

    iget-object v4, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v4, v4, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, item:Ljava/lang/String;
    iget-object v2, p0, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->i:Lorg/columba/ristretto/imap/parser/Interval;

    iget v3, v2, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lorg/columba/ristretto/imap/parser/Interval;->b:I

    .line 470
    const-string v2, "NIL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 471
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/parser/Item;->setType(I)V

    goto/16 :goto_1e

    .line 473
    :cond_136
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/parser/Item;->setValue(Ljava/lang/Object;)V

    .line 474
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/parser/Item;->setType(I)V

    goto/16 :goto_1e
.end method
