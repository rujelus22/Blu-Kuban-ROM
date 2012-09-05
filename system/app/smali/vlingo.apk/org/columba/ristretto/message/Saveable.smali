.class public interface abstract Lorg/columba/ristretto/message/Saveable;
.super Ljava/lang/Object;
.source "Saveable.java"


# virtual methods
.method public abstract load(Ljava/io/ObjectInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract save(Ljava/io/ObjectOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
