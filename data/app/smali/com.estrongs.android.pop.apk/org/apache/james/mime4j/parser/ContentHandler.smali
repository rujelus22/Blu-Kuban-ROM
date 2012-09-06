.class public interface abstract Lorg/apache/james/mime4j/parser/ContentHandler;
.super Ljava/lang/Object;


# virtual methods
.method public abstract body(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V
.end method

.method public abstract endBodyPart()V
.end method

.method public abstract endHeader()V
.end method

.method public abstract endMessage()V
.end method

.method public abstract endMultipart()V
.end method

.method public abstract epilogue(Ljava/io/InputStream;)V
.end method

.method public abstract field(Lorg/apache/james/mime4j/parser/Field;)V
.end method

.method public abstract preamble(Ljava/io/InputStream;)V
.end method

.method public abstract raw(Ljava/io/InputStream;)V
.end method

.method public abstract startBodyPart()V
.end method

.method public abstract startHeader()V
.end method

.method public abstract startMessage()V
.end method

.method public abstract startMultipart(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V
.end method
