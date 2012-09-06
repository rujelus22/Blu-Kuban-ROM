.class Lcom/google/googlenav/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x3

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bs;->a:I

    .line 188
    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bs;->b:I

    .line 190
    const/4 v0, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bs;->c:I

    .line 192
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .prologue
    .line 195
    iget v0, p0, Lcom/google/googlenav/bs;->a:I

    iget v1, p0, Lcom/google/googlenav/bs;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/bs;->c:I

    add-int/2addr v0, v1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
