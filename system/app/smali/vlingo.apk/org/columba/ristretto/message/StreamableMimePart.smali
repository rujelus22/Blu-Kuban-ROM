.class public abstract Lorg/columba/ristretto/message/StreamableMimePart;
.super Lorg/columba/ristretto/message/MimePart;
.source "StreamableMimePart.java"

# interfaces
.implements Lorg/columba/ristretto/io/Streamable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/columba/ristretto/message/MimePart;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/message/MimeHeader;)V
    .registers 2
    .parameter "header"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/columba/ristretto/message/MimePart;-><init>(Lorg/columba/ristretto/message/MimeHeader;)V

    .line 61
    return-void
.end method
