.class final Lcom/google/common/hash/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[J


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 65
    const/16 v0, 0x40

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v0, v1}, Lcom/google/common/a/a;->a(IILjava/math/RoundingMode;)I

    move-result v0

    new-array v0, v0, [J

    invoke-direct {p0, v0}, Lcom/google/common/hash/e;-><init>([J)V

    .line 66
    return-void
.end method

.method constructor <init>([J)V
    .registers 4
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    array-length v0, p1

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    const-string v1, "data length is zero!"

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/Object;)V

    .line 71
    iput-object p1, p0, Lcom/google/common/hash/e;->a:[J

    .line 72
    return-void

    .line 70
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method final a()I
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/common/hash/e;->a:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    return v0
.end method
