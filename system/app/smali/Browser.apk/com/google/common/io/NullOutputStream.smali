.class public Lcom/google/common/io/NullOutputStream;
.super Ljava/io/OutputStream;
.source "NullOutputStream.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 2
    .parameter "b"

    .prologue
    .line 30
    return-void
.end method

.method public write([BII)V
    .registers 4
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 34
    return-void
.end method
