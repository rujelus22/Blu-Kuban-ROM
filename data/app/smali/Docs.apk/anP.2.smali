.class public LanP;
.super Ljava/lang/Object;
.source "TypeLiteral.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:I

.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final a:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, LanP;->a(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, LanP;->a:Ljava/lang/reflect/Type;

    .line 80
    iget-object v0, p0, LanP;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, LanP;->a:Ljava/lang/Class;

    .line 81
    iget-object v0, p0, LanP;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, LanP;->a:I

    .line 82
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 3
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "type"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, LanP;->a:Ljava/lang/reflect/Type;

    .line 90
    iget-object v0, p0, LanP;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, LanP;->a:Ljava/lang/Class;

    .line 91
    iget-object v0, p0, LanP;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, LanP;->a:I

    .line 92
    return-void
.end method

.method static a(Ljava/lang/Class;)LanP;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "LanP",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, LanP;

    invoke-static {p0}, LanP;->a(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, LanP;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;)LanP;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "LanP",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, LanP;

    invoke-direct {v0, p0}, LanP;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 100
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_10

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing type parameter."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_10
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 104
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private a([Ljava/lang/reflect/Type;)Ljava/util/List;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List",
            "<",
            "LanP",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 170
    array-length v0, p1

    new-array v1, v0, [LanP;

    .line 171
    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    .line 172
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, LanP;->b(Ljava/lang/reflect/Type;)LanP;

    move-result-object v2

    aput-object v2, v1, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 174
    :cond_12
    invoke-static {v1}, LaiA;->a([Ljava/lang/Object;)LaiA;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)LanP;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "LanP",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, LanP;

    invoke-direct {v0, p0}, LanP;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Field;)LanP;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "LanP",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LanP;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not defined by a supertype of %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, LanP;->a:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, LanP;->b(Ljava/lang/reflect/Type;)LanP;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Method;)LanP;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "LanP",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LanP;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not defined by a supertype of %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, LanP;->a:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, LanP;->b(Ljava/lang/reflect/Type;)LanP;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, LanP;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final a()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, LanP;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 12
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 187
    move-object v0, p1

    :goto_3
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_17

    .line 188
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 189
    iget-object v1, p0, LanP;->a:Ljava/lang/reflect/Type;

    iget-object v4, p0, LanP;->a:Ljava/lang/Class;

    invoke-static {v1, v4, v0}, Lapk;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 190
    if-ne p1, v0, :cond_15

    move-object v0, p1

    .line 243
    :cond_14
    :goto_14
    return-object v0

    :cond_15
    move-object v0, p1

    .line 194
    goto :goto_3

    :cond_17
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_2c

    .line 195
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 196
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 197
    invoke-virtual {p0, v1}, LanP;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 198
    if-eq v1, v2, :cond_14

    invoke-static {v2}, LaqZ;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object v0

    goto :goto_14

    .line 202
    :cond_2c
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_6d

    .line 203
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 204
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 205
    invoke-virtual {p0, v1}, LanP;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 206
    if-eq v5, v1, :cond_60

    move v1, v2

    .line 208
    :goto_3d
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 209
    array-length v6, v4

    move v9, v3

    move v3, v1

    move-object v1, v4

    move v4, v9

    :goto_46
    if-ge v4, v6, :cond_62

    .line 210
    aget-object v7, v1, v4

    invoke-virtual {p0, v7}, LanP;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 211
    aget-object v8, v1, v4

    if-eq v7, v8, :cond_5d

    .line 212
    if-nez v3, :cond_5b

    .line 213
    invoke-virtual {v1}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Type;

    move v3, v2

    .line 216
    :cond_5b
    aput-object v7, v1, v4

    .line 209
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_60
    move v1, v3

    .line 206
    goto :goto_3d

    .line 220
    :cond_62
    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v5, v0, v1}, LaqZ;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    goto :goto_14

    .line 224
    :cond_6d
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_14

    .line 225
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 226
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 227
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 229
    array-length v5, v1

    if-ne v5, v2, :cond_8d

    .line 230
    aget-object v2, v1, v3

    invoke-virtual {p0, v2}, LanP;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 231
    aget-object v1, v1, v3

    if-eq v2, v1, :cond_14

    .line 232
    invoke-static {v2}, LaqZ;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    goto :goto_14

    .line 234
    :cond_8d
    array-length v1, v4

    if-ne v1, v2, :cond_14

    .line 235
    aget-object v1, v4, v3

    invoke-virtual {p0, v1}, LanP;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 236
    aget-object v2, v4, v3

    if-eq v1, v2, :cond_14

    .line 237
    invoke-static {v1}, LaqZ;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    goto/16 :goto_14
.end method

.method public a(Ljava/lang/reflect/Member;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Ljava/util/List",
            "<",
            "LanP",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_29

    .line 284
    check-cast p1, Ljava/lang/reflect/Method;

    .line 285
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LanP;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not defined by a supertype of %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    iget-object v3, p0, LanP;->a:Ljava/lang/reflect/Type;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 299
    :goto_24
    invoke-direct {p0, v0}, LanP;->a([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 289
    :cond_29
    instance-of v0, p1, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_4b

    .line 290
    check-cast p1, Ljava/lang/reflect/Constructor;

    .line 291
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LanP;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s does not construct a supertype of %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    iget-object v3, p0, LanP;->a:Ljava/lang/reflect/Type;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_24

    .line 296
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a method or a constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Ljava/lang/reflect/Type;)LanP;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "LanP",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0, p1}, LanP;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, LanP;->a(Ljava/lang/reflect/Type;)LanP;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Class;)LanP;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "LanP",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, LanP;->a:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not a supertype of %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, LanP;->a:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, LanP;->a:Ljava/lang/reflect/Type;

    iget-object v1, p0, LanP;->a:Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lapk;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, LanP;->b(Ljava/lang/reflect/Type;)LanP;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 145
    instance-of v0, p1, LanP;

    if-eqz v0, :cond_12

    iget-object v0, p0, LanP;->a:Ljava/lang/reflect/Type;

    check-cast p1, LanP;

    iget-object v1, p1, LanP;->a:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lapk;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, LanP;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, LanP;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
