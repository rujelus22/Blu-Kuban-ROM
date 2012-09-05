.class public Lcom/samsung/swift/service/media/UnsupportedFormatException;
.super Lcom/samsung/swift/exception/SwiftException;
.source "UnsupportedFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x664025ecd9494b35L


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 95
    const-string v0, "The image format is not supported"

    invoke-direct {p0, v0}, Lcom/samsung/swift/exception/SwiftException;-><init>(Ljava/lang/String;)V

    .line 96
    return-void
.end method
