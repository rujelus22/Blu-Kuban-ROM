.class public Lcom/google/masf/ConnectionException;
.super Ljava/io/IOException;


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/masf/ConnectionException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/masf/ConnectionException;->statusCode:I

    return-void
.end method
