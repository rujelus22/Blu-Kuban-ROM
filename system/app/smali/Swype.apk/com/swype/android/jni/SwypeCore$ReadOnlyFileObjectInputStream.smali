.class Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectInputStream;
.super Ljava/lang/Object;
.source "SwypeCore.java"

# interfaces
.implements Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/jni/SwypeCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReadOnlyFileObjectInputStream"
.end annotation


# instance fields
.field private is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "is"

    .prologue
    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput-object p1, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectInputStream;->is:Ljava/io/InputStream;

    .line 803
    return-void
.end method


# virtual methods
.method public available()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectInputStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    .line 807
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectInputStream;->is:Ljava/io/InputStream;

    .line 810
    :cond_c
    return-void
.end method

.method public getStartOffset()J
    .registers 3

    .prologue
    .line 824
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public read([BII)I
    .registers 5
    .parameter "buffer"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    iget-object v0, p0, Lcom/swype/android/jni/SwypeCore$ReadOnlyFileObjectInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method
