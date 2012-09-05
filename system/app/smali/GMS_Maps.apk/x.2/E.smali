.class public Lx/E;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lx/F;

.field public final b:[B

.field public final c:I

.field public final d:[B


# direct methods
.method private constructor <init>(Lx/F;I[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_9

    const/16 v0, 0x1f

    if-le p2, v0, :cond_11

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "refCount must be between 0 and 31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    array-length v0, p3

    const v1, 0xffffff

    if-le v0, v1, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iput-object p1, p0, Lx/E;->a:Lx/F;

    invoke-virtual {p1}, Lx/F;->b()[B

    move-result-object v0

    iput-object v0, p0, Lx/E;->b:[B

    iput p2, p0, Lx/E;->c:I

    iput-object p3, p0, Lx/E;->d:[B

    return-void
.end method

.method synthetic constructor <init>(Lx/F;I[BLx/B;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lx/E;-><init>(Lx/F;I[B)V

    return-void
.end method

.method private constructor <init>(Lx/F;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lx/E;-><init>(Lx/F;I[B)V

    return-void
.end method

.method synthetic constructor <init>(Lx/F;[BLx/B;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lx/E;-><init>(Lx/F;[B)V

    return-void
.end method
