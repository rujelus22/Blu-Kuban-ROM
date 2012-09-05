.class Lcom/google/android/common/base/UnicodeEscaper$1;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/UnicodeEscaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pendingHighSurrogate:C

.field final synthetic this$0:Lcom/google/android/common/base/UnicodeEscaper;

.field final synthetic val$out:Ljava/lang/Appendable;


# direct methods
.method private completeSurrogatePair(C)V
    .registers 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_29

    .line 317
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected low surrogate character but got \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_29
    iget-object v1, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->this$0:Lcom/google/android/common/base/UnicodeEscaper;

    iget-char v2, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    invoke-static {v2, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 323
    .local v0, escaped:[C
    if-eqz v0, :cond_3e

    .line 324
    invoke-direct {p0, v0}, Lcom/google/android/common/base/UnicodeEscaper$1;->outputChars([C)V

    .line 329
    :goto_3a
    const/4 v1, 0x0

    iput-char v1, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    .line 330
    return-void

    .line 326
    :cond_3e
    iget-object v1, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    iget-char v2, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 327
    iget-object v1, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_3a
.end method

.method private outputChars([C)V
    .registers 5
    .parameter "chars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    const/4 v0, 0x0

    .local v0, n:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 337
    iget-object v1, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    aget-char v2, p1, v0

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 339
    :cond_e
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .registers 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    iget-char v1, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    if-eqz v1, :cond_8

    .line 290
    invoke-direct {p0, p1}, Lcom/google/android/common/base/UnicodeEscaper$1;->completeSurrogatePair(C)V

    .line 307
    :goto_7
    return-object p0

    .line 291
    :cond_8
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 292
    iput-char p1, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    goto :goto_7

    .line 294
    :cond_11
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 295
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected low surrogate character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_3a
    iget-object v1, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->this$0:Lcom/google/android/common/base/UnicodeEscaper;

    invoke-virtual {v1, p1}, Lcom/google/android/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 301
    .local v0, escaped:[C
    if-eqz v0, :cond_46

    .line 302
    invoke-direct {p0, v0}, Lcom/google/android/common/base/UnicodeEscaper$1;->outputChars([C)V

    goto :goto_7

    .line 304
    :cond_46
    iget-object v1, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_7
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 4
    .parameter "csq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/common/base/UnicodeEscaper$1;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 9
    .parameter "csq"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p2, p3, v2}, Lcom/google/android/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 267
    iget-char v2, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    if-eqz v2, :cond_1a

    if-ge p2, p3, :cond_1a

    .line 268
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, start:I
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/common/base/UnicodeEscaper$1;->completeSurrogatePair(C)V

    move p2, v1

    .line 271
    .end local v1           #start:I
    .restart local p2
    :cond_1a
    if-ge p2, p3, :cond_3f

    .line 274
    add-int/lit8 v2, p3, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 275
    .local v0, last:C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 276
    iput-char v0, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    .line 277
    add-int/lit8 p3, p3, -0x1

    .line 282
    :cond_2c
    iget-object v2, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    iget-object v3, p0, Lcom/google/android/common/base/UnicodeEscaper$1;->this$0:Lcom/google/android/common/base/UnicodeEscaper;

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/common/base/UnicodeEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 284
    .end local v0           #last:C
    :cond_3f
    return-object p0
.end method
