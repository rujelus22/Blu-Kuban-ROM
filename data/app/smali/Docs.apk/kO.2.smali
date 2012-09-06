.class LkO;
.super Ljava/lang/Object;
.source "DataModelModule.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<",
        "Ljavax/crypto/KeyGenerator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LkN;


# direct methods
.method constructor <init>(LkN;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, LkO;->a:LkN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, LkO;->a()Ljavax/crypto/KeyGenerator;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljavax/crypto/KeyGenerator;
    .registers 3

    .prologue
    .line 29
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 30
    :catch_7
    move-exception v0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Phone does not support AES"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
