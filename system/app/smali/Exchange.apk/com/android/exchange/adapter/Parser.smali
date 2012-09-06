.class public abstract Lcom/android/exchange/adapter/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/Parser$EasParserException;,
        Lcom/android/exchange/adapter/Parser$EodException;,
        Lcom/android/exchange/adapter/Parser$EmptyStreamException;,
        Lcom/android/exchange/adapter/Parser$EofException;
    }
.end annotation


# static fields
.field private static tagTables:[[Ljava/lang/String;


# instance fields
.field public bytes:[B

.field private capture:Z

.field private captureArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private depth:I

.field public endTag:I

.field private in:Ljava/io/InputStream;

.field private logTag:Ljava/lang/String;

.field private logging:Z

.field public name:Ljava/lang/String;

.field private nameArray:[Ljava/lang/String;

.field private nextId:I

.field private noContent:Z

.field public num:I

.field public page:I

.field public startTag:I

.field private startTagArray:[I

.field public tag:I

.field private tagTable:[Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/adapter/Parser;)V
    .registers 9
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/high16 v5, -0x8000

    const/4 v4, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 54
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    .line 55
    const-string v3, "EAS Parser"

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 69
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 78
    new-array v3, v6, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    .line 81
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    .line 85
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 154
    sget-object v2, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    .line 155
    .local v2, pages:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    array-length v3, v2

    if-ge v0, v3, :cond_2e

    .line 156
    aget-object v1, v2, v0

    .line 157
    .local v1, page:[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_2b

    .line 158
    sget-object v3, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 155
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 174
    .end local v1           #page:[Ljava/lang/String;
    :cond_2e
    iget-object v3, p1, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/adapter/Parser;->setInput(Ljava/io/InputStream;Z)V

    .line 175
    sget-boolean v3, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    const/4 v3, 0x0

    const/high16 v4, -0x8000

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 54
    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    .line 55
    const-string v3, "EAS Parser"

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 69
    iput v4, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 78
    new-array v3, v5, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    .line 81
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    .line 85
    iput v4, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 154
    sget-object v2, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    .line 155
    .local v2, pages:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    array-length v3, v2

    if-ge v0, v3, :cond_2e

    .line 156
    aget-object v1, v2, v0

    .line 157
    .local v1, page:[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_2b

    .line 158
    sget-object v3, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 155
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 164
    .end local v1           #page:[Ljava/lang/String;
    :cond_2e
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/exchange/adapter/Parser;->setInput(Ljava/io/InputStream;Z)V

    .line 165
    sget-boolean v3, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 166
    return-void
.end method

.method private final getNext(Z)I
    .registers 11
    .parameter "asInt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/high16 v5, -0x8000

    const/4 v7, 0x0

    .line 440
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    if-eqz v4, :cond_1a

    .line 441
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aput-object v7, v4, v5

    .line 442
    iput v8, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 443
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 444
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 510
    :goto_19
    return v4

    .line 447
    :cond_1a
    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 448
    iput-object v7, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 450
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v1

    .line 451
    .local v1, id:I
    :goto_22
    if-nez v1, :cond_39

    .line 452
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 454
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v3

    .line 456
    .local v3, pg:I
    shl-int/lit8 v4, v3, 0x6

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->page:I

    .line 461
    sget-object v4, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aget-object v4, v4, v3

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 462
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v1

    .line 463
    goto :goto_22

    .line 464
    .end local v3           #pg:I
    :cond_39
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 466
    sparse-switch v1, :sswitch_data_e2

    .line 505
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 506
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/Parser;->push(I)V

    .line 510
    :cond_44
    :goto_44
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_19

    .line 469
    :sswitch_47
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_44

    .line 473
    :sswitch_4b
    iput v8, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 474
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->pop()V

    goto :goto_44

    .line 479
    :sswitch_51
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 480
    if-eqz p1, :cond_8f

    .line 481
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInlineInt()I

    move-result v4

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 485
    :goto_5c
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_44

    .line 486
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v5, v5, -0x5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_96

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->num:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :goto_83
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto :goto_44

    .line 483
    :cond_8f
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInlineString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_5c

    .line 487
    :cond_96
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_83

    .line 493
    :sswitch_99
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    move-result v2

    .line 494
    .local v2, length:I
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->bytes:[B

    .line 495
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a2
    if-ge v0, v2, :cond_b0

    .line 496
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->bytes:[B

    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    .line 498
    :cond_b0
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_44

    .line 499
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v5, v5, -0x5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": (opaque:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto/16 :goto_44

    .line 466
    :sswitch_data_e2
    .sparse-switch
        -0x1 -> :sswitch_47
        0x1 -> :sswitch_4b
        0x3 -> :sswitch_51
        0xc3 -> :sswitch_99
    .end sparse-switch
.end method

.method private nextId()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_c

    .line 534
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 536
    :cond_c
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    return v0
.end method

.method private pop()V
    .registers 3

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v0, :cond_2a

    .line 407
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 411
    :cond_2a
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 412
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 413
    return-void
.end method

.method private push(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 417
    and-int/lit8 v0, p1, 0x3f

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 419
    and-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_5c

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 420
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 421
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v0, :cond_53

    .line 422
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v1, v1, -0x5

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    if-eqz v0, :cond_5e

    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    :goto_42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 427
    :cond_53
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget v2, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    aput v2, v0, v1

    .line 428
    return-void

    .line 419
    :cond_5c
    const/4 v0, 0x0

    goto :goto_9

    .line 424
    :cond_5e
    const-string v0, ""

    goto :goto_42
.end method

.method private read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 523
    .local v0, i:I
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    if-eqz v1, :cond_13

    .line 524
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureArray:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_13
    return v0
.end method

.method private readByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    .line 541
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 542
    new-instance v1, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1

    .line 544
    :cond_d
    return v0
.end method

.method private readInlineInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    const/4 v1, 0x0

    .line 559
    .local v1, result:I
    :goto_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v0

    .line 561
    .local v0, i:I
    if-nez v0, :cond_8

    .line 562
    return v1

    .line 564
    :cond_8
    const/16 v2, 0x30

    if-lt v0, v2, :cond_17

    const/16 v2, 0x39

    if-gt v0, v2, :cond_17

    .line 565
    mul-int/lit8 v2, v1, 0xa

    add-int/lit8 v3, v0, -0x30

    add-int v1, v2, v3

    goto :goto_1

    .line 567
    :cond_17
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Non integer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readInlineString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 593
    .local v1, outputStream:Ljava/io/ByteArrayOutputStream;
    :goto_7
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    .line 594
    .local v0, i:I
    if-nez v0, :cond_1a

    .line 601
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 602
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 604
    return-object v2

    .line 596
    .end local v2           #res:Ljava/lang/String;
    :cond_1a
    const/4 v3, -0x1

    if-ne v0, v3, :cond_23

    .line 597
    new-instance v3, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v3, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v3

    .line 599
    :cond_23
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7
.end method

.method private readInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    const/4 v1, 0x0

    .line 577
    .local v1, result:I
    :cond_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v0

    .line 578
    .local v0, i:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 579
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_1

    .line 581
    return v1
.end method


# virtual methods
.method protected getInput()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 247
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 249
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v3, :cond_2e

    .line 250
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v1, :cond_2b

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v3, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    add-int/lit8 v3, v3, -0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 253
    :cond_2b
    const-string v0, ""

    .line 263
    :cond_2d
    return-object v0

    .line 256
    :cond_2e
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 258
    .local v0, val:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 260
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v3, :cond_2d

    .line 261
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValueBytes()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->bytes:[B

    return-object v0
.end method

.method public getValueInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 275
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 276
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v2, v3, :cond_c

    move v0, v1

    .line 287
    :cond_b
    return v0

    .line 280
    :cond_c
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 282
    .local v0, val:I
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 284
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v3, :cond_b

    .line 285
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method log(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 389
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 390
    .local v0, cr:I
    if-lez v0, :cond_d

    .line 391
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 393
    :cond_d
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-boolean v1, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v1, :cond_1b

    .line 395
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_1b
    return-void
.end method

.method public nextTag(I)I
    .registers 5
    .parameter "endingTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x3

    .line 303
    and-int/lit8 p1, p1, 0x3f

    iput p1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 304
    :cond_5
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_27

    .line 306
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    .line 307
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->page:I

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    .line 308
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    .line 316
    :cond_1b
    :goto_1b
    return v0

    .line 310
    :cond_1c
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v0, :cond_5

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iget v2, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    if-ne v1, v2, :cond_5

    goto :goto_1b

    .line 315
    :cond_27
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    if-eqz v1, :cond_1b

    .line 321
    new-instance v0, Lcom/android/exchange/adapter/Parser$EodException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EodException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0
.end method

.method public parse()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/EasException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected pushTag(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 400
    shr-int/lit8 v0, p1, 0x6

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->page:I

    .line 401
    sget-object v0, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->page:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 402
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;->push(I)V

    .line 403
    return-void
.end method

.method resetInput(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 383
    :try_start_2
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 386
    :goto_5
    return-void

    .line 384
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setInput(Ljava/io/InputStream;Z)V
    .registers 6
    .parameter "in"
    .parameter "initialize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 364
    if-eqz p2, :cond_10

    .line 367
    :try_start_4
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I
    :try_end_7
    .catch Lcom/android/exchange/adapter/Parser$EofException; {:try_start_4 .. :try_end_7} :catch_18

    .line 371
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 372
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 373
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 375
    :cond_10
    sget-object v1, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 376
    return-void

    .line 368
    :catch_18
    move-exception v0

    .line 369
    .local v0, e:Lcom/android/exchange/adapter/Parser$EofException;
    new-instance v1, Lcom/android/exchange/adapter/Parser$EmptyStreamException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EmptyStreamException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1
.end method

.method public setLoggingTag(Ljava/lang/String;)V
    .registers 2
    .parameter "val"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public skipTag()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 333
    .local v0, thisTag:I
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    .line 334
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v1, v0, :cond_2

    .line 335
    return-void

    .line 340
    :cond_14
    new-instance v1, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1
.end method
