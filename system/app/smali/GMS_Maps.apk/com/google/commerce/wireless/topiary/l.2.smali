.class public Lcom/google/commerce/wireless/topiary/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/l;->a:Ljava/io/DataInputStream;

    .line 20
    return-void
.end method


# virtual methods
.method public a()[B
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 24
    if-gez v0, :cond_a

    .line 25
    const/4 v0, 0x0

    .line 29
    :goto_9
    return-object v0

    .line 27
    :cond_a
    new-array v0, v0, [B

    .line 28
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    goto :goto_9
.end method

.method public close()V
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 35
    return-void
.end method
