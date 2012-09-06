.class public Lcom/jcraft/jsch/jcraft/HMACSHA196;
.super Lcom/jcraft/jsch/jcraft/HMACSHA1;


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/jcraft/HMACSHA1;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACSHA196;->a:[B

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public a([BI)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACSHA196;->a:[B

    invoke-super {p0, v0, v2}, Lcom/jcraft/jsch/jcraft/HMACSHA1;->a([BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACSHA196;->a:[B

    const/16 v1, 0xc

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
