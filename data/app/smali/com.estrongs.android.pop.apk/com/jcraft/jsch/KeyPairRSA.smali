.class public Lcom/jcraft/jsch/KeyPairRSA;
.super Lcom/jcraft/jsch/KeyPair;


# static fields
.field private static final c:[B

.field private static final d:[B

.field private static final e:[B


# instance fields
.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "-----BEGIN RSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->c:[B

    const-string v0, "-----END RSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->d:[B

    const-string v0, "ssh-rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->e:[B

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->b:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    return-void
.end method
