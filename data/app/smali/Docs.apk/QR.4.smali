.class public LQR;
.super Ljava/lang/Object;
.source "EncryptedFileSource.java"

# interfaces
.implements LRd;


# instance fields
.field private final a:LXP;

.field private final a:Ljava/io/File;

.field private final a:Ljava/lang/String;

.field private final a:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljava/io/File;Ljava/lang/String;LXP;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, LQR;->a:Ljava/io/File;

    .line 40
    iput-object p3, p0, LQR;->a:Ljava/lang/String;

    .line 41
    iput-object p4, p0, LQR;->a:LXP;

    .line 42
    iput-object p1, p0, LQR;->a:Ljavax/crypto/SecretKey;

    .line 43
    return-void
.end method


# virtual methods
.method a(Ljava/io/File;)Ljava/io/InputStream;
    .registers 3
    .parameter

    .prologue
    .line 64
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, LQR;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, LQR;->a:Ljava/io/File;

    invoke-virtual {p0, v0}, LQR;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    .line 54
    :try_start_6
    iget-object v0, p0, LQR;->a:LXP;

    iget-object v2, p0, LQR;->a:Ljavax/crypto/SecretKey;

    invoke-interface {v0, v2, v1, p2}, LXP;->a(Ljava/security/Key;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_1a
    .catch LFw; {:try_start_6 .. :try_end_d} :catch_11

    .line 58
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 60
    return-void

    .line 55
    :catch_11
    move-exception v0

    .line 56
    :try_start_12
    new-instance v0, Ljava/io/IOException;

    const-string v2, "File cannot be decrypted"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1a

    .line 58
    :catchall_1a
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method
