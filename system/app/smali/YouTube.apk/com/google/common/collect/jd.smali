.class public final Lcom/google/common/collect/jd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a([Ljava/lang/Object;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    aget-object v0, p0, p1

    .line 179
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 180
    aput-object v0, p0, p2

    .line 181
    return-void
.end method

.method private static a(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 169
    add-int/lit8 v1, v0, 0x1

    aput-object v3, p1, v0

    move v0, v1

    goto :goto_5

    .line 171
    :cond_15
    return-object p1
.end method

.method static a(Ljava/util/Collection;)[Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 163
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/common/collect/jd;->a(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 138
    array-length v1, p1

    if-ge v1, v0, :cond_b

    .line 139
    invoke-static {p1, v0}, Lcom/google/common/collect/jd;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 141
    :cond_b
    invoke-static {p0, p1}, Lcom/google/common/collect/jd;->a(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 142
    array-length v1, p1

    if-le v1, v0, :cond_14

    .line 143
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 145
    :cond_14
    return-object p1
.end method

.method public static a([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method
