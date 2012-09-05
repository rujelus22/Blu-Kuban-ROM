.class public Lorg/columba/ristretto/message/InputStreamMimePart;
.super Lorg/columba/ristretto/message/StreamableMimePart;
.source "InputStreamMimePart.java"


# instance fields
.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/columba/ristretto/message/MimeHeader;Ljava/io/InputStream;)V
    .registers 3
    .parameter "header"
    .parameter "in"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/columba/ristretto/message/StreamableMimePart;-><init>(Lorg/columba/ristretto/message/MimeHeader;)V

    .line 59
    iput-object p2, p0, Lorg/columba/ristretto/message/InputStreamMimePart;->in:Ljava/io/InputStream;

    .line 60
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/columba/ristretto/message/InputStreamMimePart;->in:Ljava/io/InputStream;

    return-object v0
.end method
