.class public interface abstract Lorg/columba/ristretto/io/Source;
.super Ljava/lang/Object;
.source "Source.java"

# interfaces
.implements Ljava/lang/CharSequence;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract deepClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract fromActualPosition()Lorg/columba/ristretto/io/Source;
.end method

.method public abstract getPosition()I
.end method

.method public abstract isEOF()Z
.end method

.method public abstract next()C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract seek(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract subSource(II)Lorg/columba/ristretto/io/Source;
.end method
