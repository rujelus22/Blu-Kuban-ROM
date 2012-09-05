.class public Lcom/samsung/swift/util/ostream;
.super Ljava/io/OutputStream;
.source "ostream.java"


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>(J)V
    .registers 3
    .parameter "peer"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 98
    iput-wide p1, p0, Lcom/samsung/swift/util/ostream;->peer:J

    .line 99
    return-void
.end method


# virtual methods
.method public native write(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native write([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
