.class public abstract Lcom/jcraft/jsch/KeyPair;
.super Ljava/lang/Object;


# static fields
.field static a:[[B

.field private static final b:[B

.field private static d:[B


# instance fields
.field private c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "\n"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->b:[B

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const-string v2, "Proc-Type: 4,ENCRYPTED"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DEK-Info: DES-EDE3-CBC,"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->a:[[B

    const-string v0, " "

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPair;->d:[B

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPair;->c:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    return-void
.end method

.method public finalize()V
    .registers 1

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->a()V

    return-void
.end method
