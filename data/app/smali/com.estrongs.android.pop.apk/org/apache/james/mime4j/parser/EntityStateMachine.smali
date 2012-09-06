.class public interface abstract Lorg/apache/james/mime4j/parser/EntityStateMachine;
.super Ljava/lang/Object;


# virtual methods
.method public abstract advance()Lorg/apache/james/mime4j/parser/EntityStateMachine;
.end method

.method public abstract getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
.end method

.method public abstract getContentStream()Ljava/io/InputStream;
.end method

.method public abstract getField()Lorg/apache/james/mime4j/parser/Field;
.end method

.method public abstract getState()I
.end method

.method public abstract setRecursionMode(I)V
.end method
