.class public final Lorg/codehaus/jackson/io/SegmentedStringWriter;
.super Ljava/io/Writer;
.source "SegmentedStringWriter.java"


# instance fields
.field protected final _buffer:Lorg/codehaus/jackson/util/TextBuffer;


# virtual methods
.method public append(C)Ljava/io/Writer;
    .registers 2
    .parameter "c"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/SegmentedStringWriter;->write(I)V

    .line 39
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 6
    .parameter "csq"

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lorg/codehaus/jackson/util/TextBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lorg/codehaus/jackson/util/TextBuffer;->append(Ljava/lang/String;II)V

    .line 47
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 8
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 53
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lorg/codehaus/jackson/util/TextBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lorg/codehaus/jackson/util/TextBuffer;->append(Ljava/lang/String;II)V

    .line 55
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/SegmentedStringWriter;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/SegmentedStringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/io/SegmentedStringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 60
    return-void
.end method

.method public write(I)V
    .registers 4
    .parameter "c"

    .prologue
    .line 74
    iget-object v0, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lorg/codehaus/jackson/util/TextBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->append(C)V

    .line 75
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 5
    .parameter "str"

    .prologue
    .line 78
    iget-object v0, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lorg/codehaus/jackson/util/TextBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/codehaus/jackson/util/TextBuffer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 7
    .parameter "str"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 82
    iget-object v0, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lorg/codehaus/jackson/util/TextBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/codehaus/jackson/util/TextBuffer;->append(Ljava/lang/String;II)V

    .line 83
    return-void
.end method

.method public write([C)V
    .registers 5
    .parameter "cbuf"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lorg/codehaus/jackson/util/TextBuffer;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lorg/codehaus/jackson/util/TextBuffer;->append([CII)V

    .line 65
    return-void
.end method

.method public write([CII)V
    .registers 5
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/codehaus/jackson/io/SegmentedStringWriter;->_buffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/util/TextBuffer;->append([CII)V

    .line 70
    return-void
.end method
