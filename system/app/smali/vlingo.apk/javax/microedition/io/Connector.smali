.class public Ljavax/microedition/io/Connector;
.super Ljava/lang/Object;
.source "Connector.java"


# static fields
.field public static final READ:I = 0x0

.field public static final READ_WRITE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;
    .registers 4
    .parameter "name"
    .parameter "mode"
    .parameter "timeouts"

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public static open(Ljava/lang/String;)Ljavax/microedition/io/file/FileConnection;
    .registers 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public static open(Ljava/lang/String;I)Ljavax/microedition/io/file/FileConnection;
    .registers 3
    .parameter "string"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method
