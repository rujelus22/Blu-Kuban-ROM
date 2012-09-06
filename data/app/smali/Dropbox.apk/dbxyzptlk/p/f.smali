.class final Ldbxyzptlk/p/f;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;Ljava/security/MessageDigest;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Ldbxyzptlk/p/a;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/p/f;->a:Ljava/lang/String;

    .line 118
    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Ldbxyzptlk/p/a;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/p/f;->b:Ljava/lang/String;

    .line 119
    return-void
.end method
