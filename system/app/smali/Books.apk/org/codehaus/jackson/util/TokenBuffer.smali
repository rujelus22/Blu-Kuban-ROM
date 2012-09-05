.class public Lorg/codehaus/jackson/util/TokenBuffer;
.super Lorg/codehaus/jackson/JsonGenerator;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/util/TokenBuffer$1;,
        Lorg/codehaus/jackson/util/TokenBuffer$Segment;,
        Lorg/codehaus/jackson/util/TokenBuffer$Parser;
    }
.end annotation


# static fields
.field protected static final DEFAULT_PARSER_FEATURES:I


# instance fields
.field protected _appendOffset:I

.field protected _closed:Z

.field protected _first:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _last:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lorg/codehaus/jackson/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/util/TokenBuffer;->DEFAULT_PARSER_FEATURES:I

    return-void
.end method


# virtual methods
.method protected final _append(Lorg/codehaus/jackson/JsonToken;)V
    .registers 5
    .parameter "type"

    .prologue
    .line 726
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_last:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v2, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    invoke-virtual {v1, v2, p1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->append(ILorg/codehaus/jackson/JsonToken;)Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v0

    .line 727
    .local v0, next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;
    if-nez v0, :cond_11

    .line 728
    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    .line 733
    :goto_10
    return-void

    .line 730
    :cond_11
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_last:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 731
    const/4 v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    goto :goto_10
.end method

.method protected final _append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V
    .registers 6
    .parameter "type"
    .parameter "value"

    .prologue
    .line 736
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_last:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v2, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    invoke-virtual {v1, v2, p1, p2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->append(ILorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v0

    .line 737
    .local v0, next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;
    if-nez v0, :cond_11

    .line 738
    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    .line 743
    :goto_10
    return-void

    .line 740
    :cond_11
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_last:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 741
    const/4 v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_appendOffset:I

    goto :goto_10
.end method

.method protected _reportUnsupportedOperation()V
    .registers 3

    .prologue
    .line 746
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Called operation not supported for TokenBuffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asParser()Lorg/codehaus/jackson/JsonParser;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public asParser(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonParser;
    .registers 4
    .parameter "codec"

    .prologue
    .line 136
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_first:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0, v1, p1}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;-><init>(Lorg/codehaus/jackson/util/TokenBuffer$Segment;Lorg/codehaus/jackson/ObjectCodec;)V

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_closed:Z

    .line 354
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v7, 0x64

    .line 268
    const/16 v0, 0x64

    .line 270
    .local v0, MAX_COUNT:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v6, "[TokenBuffer: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser()Lorg/codehaus/jackson/JsonParser;

    move-result-object v3

    .line 273
    .local v3, jp:Lorg/codehaus/jackson/JsonParser;
    const/4 v1, 0x0

    .line 278
    .local v1, count:I
    :goto_13
    :try_start_13
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_36

    move-result-object v5

    .line 282
    .local v5, t:Lorg/codehaus/jackson/JsonToken;
    if-nez v5, :cond_3d

    .line 292
    if-lt v1, v7, :cond_2c

    .line 293
    const-string v6, " ... (truncated "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, -0x64

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " entries)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_2c
    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 279
    .end local v5           #t:Lorg/codehaus/jackson/JsonToken;
    :catch_36
    move-exception v2

    .line 280
    .local v2, ioe:Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 283
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v5       #t:Lorg/codehaus/jackson/JsonToken;
    :cond_3d
    if-ge v1, v7, :cond_4d

    .line 284
    if-lez v1, :cond_46

    .line 285
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_46
    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonToken;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    .line 290
    goto :goto_13
.end method

.method public writeBoolean(Z)V
    .registers 3
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 563
    if-eqz p1, :cond_8

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    :goto_4
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;)V

    .line 564
    return-void

    .line 563
    :cond_8
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_4
.end method

.method public final writeEndArray()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 377
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;)V

    .line 379
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 380
    .local v0, c:Lorg/codehaus/jackson/impl/JsonWriteContext;
    if-eqz v0, :cond_f

    .line 381
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 383
    :cond_f
    return-void
.end method

.method public final writeEndObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 397
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;)V

    .line 399
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 400
    .local v0, c:Lorg/codehaus/jackson/impl/JsonWriteContext;
    if-eqz v0, :cond_f

    .line 401
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 403
    :cond_f
    return-void
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 409
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public writeNull()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 568
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;)V

    .line 569
    return-void
.end method

.method public writeNumber(D)V
    .registers 5
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 527
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 528
    return-void
.end method

.method public writeNumber(F)V
    .registers 4
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 532
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method public writeNumber(I)V
    .registers 4
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 517
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 518
    return-void
.end method

.method public writeNumber(J)V
    .registers 5
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 522
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 523
    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .registers 3
    .parameter "dec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 537
    if-nez p1, :cond_6

    .line 538
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNull()V

    .line 542
    :goto_5
    return-void

    .line 540
    :cond_6
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .registers 3
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 546
    if-nez p1, :cond_6

    .line 547
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNull()V

    .line 551
    :goto_5
    return-void

    .line 549
    :cond_6
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public writeRaw(C)V
    .registers 2
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 492
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .registers 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 477
    return-void
.end method

.method public writeRaw([CII)V
    .registers 4
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->_reportUnsupportedOperation()V

    .line 487
    return-void
.end method

.method public final writeStartArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 369
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;)V

    .line 370
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 371
    return-void
.end method

.method public final writeStartObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;)V

    .line 390
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 391
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 437
    if-nez p1, :cond_6

    .line 438
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeNull()V

    .line 442
    :goto_5
    return-void

    .line 440
    :cond_6
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->_append(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_5
.end method
