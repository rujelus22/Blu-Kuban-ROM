.class public Lcom/vlingo/client/core/http/custom/LimitInputStream;
.super Ljava/io/InputStream;
.source "LimitInputStream.java"


# instance fields
.field private ivMax:I

.field private ivOrg:Ljava/io/InputStream;

.field private ivRead:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3
    .parameter "org"
    .parameter "max"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 27
    iput p2, p0, Lcom/vlingo/client/core/http/custom/LimitInputStream;->ivMax:I

    .line 28
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/LimitInputStream;->ivOrg:Ljava/io/InputStream;

    .line 29
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/LimitInputStream;->ivOrg:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 45
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    iget v0, p0, Lcom/vlingo/client/core/http/custom/LimitInputStream;->ivMax:I

    iget v1, p0, Lcom/vlingo/client/core/http/custom/LimitInputStream;->ivRead:I

    if-ne v0, v1, :cond_8

    .line 34
    const/4 v0, -0x1

    .line 38
    :goto_7
    return v0

    .line 37
    :cond_8
    iget v0, p0, Lcom/vlingo/client/core/http/custom/LimitInputStream;->ivRead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vlingo/client/core/http/custom/LimitInputStream;->ivRead:I

    .line 38
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/LimitInputStream;->ivOrg:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_7
.end method
