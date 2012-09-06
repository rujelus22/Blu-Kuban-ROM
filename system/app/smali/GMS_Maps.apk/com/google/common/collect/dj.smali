.class final Lcom/google/common/collect/dj;
.super Lcom/google/common/collect/bC;
.source "SourceFile"


# instance fields
.field final transient b:[Ljava/lang/Object;

.field private final transient d:I

.field private final transient e:I


# direct methods
.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/common/collect/bC;-><init>([Ljava/lang/Object;)V

    .line 40
    iput-object p3, p0, Lcom/google/common/collect/dj;->b:[Ljava/lang/Object;

    .line 41
    iput p4, p0, Lcom/google/common/collect/dj;->d:I

    .line 42
    iput p2, p0, Lcom/google/common/collect/dj;->e:I

    .line 43
    return-void
.end method


# virtual methods
.method c()Z
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    if-nez p1, :cond_5

    move v0, v1

    .line 55
    :goto_4
    return v0

    .line 49
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/bn;->a(I)I

    move-result v0

    .line 50
    :goto_d
    iget-object v2, p0, Lcom/google/common/collect/dj;->b:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/dj;->d:I

    and-int/2addr v3, v0

    aget-object v2, v2, v3

    .line 51
    if-nez v2, :cond_18

    move v0, v1

    .line 52
    goto :goto_4

    .line 54
    :cond_18
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 55
    const/4 v0, 0x1

    goto :goto_4

    .line 49
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/google/common/collect/dj;->e:I

    return v0
.end method
