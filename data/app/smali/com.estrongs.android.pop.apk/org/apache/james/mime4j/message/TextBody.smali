.class public abstract Lorg/apache/james/mime4j/message/TextBody;
.super Lorg/apache/james/mime4j/message/SingleBody;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/SingleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMimeCharset()Ljava/lang/String;
.end method

.method public abstract getReader()Ljava/io/Reader;
.end method
