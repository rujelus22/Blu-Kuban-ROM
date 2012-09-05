.class public abstract Lcom/google/protobuf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method


# virtual methods
.method public final w()[B
    .registers 4

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/a;->j()I

    move-result v0

    new-array v0, v0, [B

    .line 63
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->a([BII)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 64
    invoke-virtual {p0, v1}, Lcom/google/protobuf/a;->a(Lcom/google/protobuf/CodedOutputStream;)V

    .line 65
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->a()I

    move-result v1

    if-eqz v1, :cond_26

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_1d

    .line 67
    :catch_1d
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 66
    :cond_26
    return-object v0
.end method
