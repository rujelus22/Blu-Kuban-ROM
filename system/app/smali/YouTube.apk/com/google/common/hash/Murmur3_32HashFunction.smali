.class final Lcom/google/common/hash/Murmur3_32HashFunction;
.super Lcom/google/common/hash/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final seed:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/common/hash/b;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    .line 34
    return-void
.end method


# virtual methods
.method public final bits()I
    .registers 2

    .prologue
    .line 37
    const/16 v0, 0x20

    return v0
.end method

.method public final newHasher()Lcom/google/common/hash/l;
    .registers 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/common/hash/q;

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/q;-><init>(I)V

    return-object v0
.end method
