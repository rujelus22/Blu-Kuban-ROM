.class final Lcom/google/common/hash/n;
.super Lcom/google/common/hash/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/common/hash/b;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/common/hash/n;->a:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/google/common/hash/n;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/hash/n;->b:I

    .line 44
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 3
    .parameter

    .prologue
    .line 52
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 53
    :catch_5
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final newHasher()Lcom/google/common/hash/l;
    .registers 4

    .prologue
    .line 59
    new-instance v0, Lcom/google/common/hash/o;

    iget-object v1, p0, Lcom/google/common/hash/n;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/hash/n;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/o;-><init>(Ljava/security/MessageDigest;B)V

    return-object v0
.end method
