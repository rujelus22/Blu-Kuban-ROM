.class public final Lcom/google/android/youtube/core/transfer/c;
.super Lcom/google/android/youtube/core/transfer/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/security/Key;

.field private final b:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/core/transfer/n;ZZLcom/google/android/youtube/core/transfer/e;Ljava/security/Key;)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/google/android/youtube/core/transfer/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/core/transfer/n;ZZLcom/google/android/youtube/core/transfer/e;)V

    .line 68
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/c;->a:Ljava/security/Key;

    .line 69
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/transfer/c;->b:Ljavax/crypto/spec/IvParameterSpec;

    .line 70
    return-void
.end method


# virtual methods
.method protected final a(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)I
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 75
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 77
    const/4 v1, 0x0

    :try_start_a
    array-length v2, v0

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/c;->a:Ljava/security/Key;

    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/c;->b:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/youtube/core/utils/f;->a([BIILjava/security/Key;Ljavax/crypto/spec/IvParameterSpec;J)V
    :try_end_16
    .catch Ljava/security/GeneralSecurityException; {:try_start_a .. :try_end_16} :catch_1f

    .line 83
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 78
    :catch_1f
    move-exception v0

    .line 81
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
