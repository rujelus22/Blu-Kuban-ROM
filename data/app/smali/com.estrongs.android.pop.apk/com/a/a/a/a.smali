.class Lcom/a/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/a;->a:Ljava/security/MessageDigest;
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method a([B)V
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method a()[B
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method
