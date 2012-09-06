.class public abstract Lorg/apache/james/mime4j/message/BinaryBody;
.super Lorg/apache/james/mime4j/message/SingleBody;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/SingleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getInputStream()Ljava/io/InputStream;
.end method
