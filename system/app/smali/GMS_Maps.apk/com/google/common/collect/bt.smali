.class abstract Lcom/google/common/collect/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lcom/google/common/collect/bt;
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/google/common/collect/bt;
    .registers 5
    .parameter

    .prologue
    .line 298
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_c

    aget-object v2, p1, v0

    .line 299
    invoke-virtual {p0, v2}, Lcom/google/common/collect/bt;->a(Ljava/lang/Object;)Lcom/google/common/collect/bt;

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 301
    :cond_c
    return-object p0
.end method
