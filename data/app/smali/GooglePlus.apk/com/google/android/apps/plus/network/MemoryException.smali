.class public Lcom/google/android/apps/plus/network/MemoryException;
.super Ljava/io/IOException;
.source "MemoryException.java"


# static fields
.field private static final serialVersionUID:J = 0x6ed8771df0c1b719L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method
