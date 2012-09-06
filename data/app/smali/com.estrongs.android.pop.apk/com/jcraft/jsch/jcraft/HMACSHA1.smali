.class public Lcom/jcraft/jsch/jcraft/HMACSHA1;
.super Lcom/jcraft/jsch/jcraft/HMAC;

# interfaces
.implements Lcom/jcraft/jsch/MAC;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/jcraft/jsch/jcraft/HMAC;-><init>()V

    const/4 v0, 0x0

    :try_start_4
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_e

    move-result-object v0

    :goto_a
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jcraft/HMACSHA1;->a(Ljava/security/MessageDigest;)V

    return-void

    :catch_e
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_a
.end method


# virtual methods
.method public bridge synthetic a()I
    .registers 2

    invoke-super {p0}, Lcom/jcraft/jsch/jcraft/HMAC;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/jcraft/jsch/jcraft/HMAC;->a(I)V

    return-void
.end method

.method public bridge synthetic a([B)V
    .registers 2

    invoke-super {p0, p1}, Lcom/jcraft/jsch/jcraft/HMAC;->a([B)V

    return-void
.end method

.method public bridge synthetic a([BI)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/jcraft/HMAC;->a([BI)V

    return-void
.end method

.method public bridge synthetic a([BII)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/jcraft/HMAC;->a([BII)V

    return-void
.end method
