.class public Lapk;
.super Ljava/lang/Object;
.source "MoreTypes.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "LanP",
            "<*>;",
            "LanP",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final a:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    sput-object v0, Lapk;->a:[Ljava/lang/reflect/Type;

    .line 53
    new-instance v0, LaiD;

    invoke-direct {v0}, LaiD;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v2}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaiD;->a(Ljava/lang/Object;Ljava/lang/Object;)LaiD;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v1

    const-class v2, Ljava/lang/Byte;

    invoke-static {v2}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaiD;->a(Ljava/lang/Object;Ljava/lang/Object;)LaiD;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v1

    const-class v2, Ljava/lang/Short;

    invoke-static {v2}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaiD;->a(Ljava/lang/Object;Ljava/lang/Object;)LaiD;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-static {v2}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaiD;->a(Ljava/lang/Object;Ljava/lang/Object;)LaiD;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    invoke-static {v2}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaiD;->a(Ljava/lang/Object;Ljava/lang/Object;)LaiD;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v1

    const-class v2, Ljava/lang/Float;

    invoke-static {v2}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaiD;->a(Ljava/lang/Object;Ljava/lang/Object;)LaiD;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v1

    const-class v2, Ljava/lang/Double;

    invoke-static {v2}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaiD;->a(Ljava/lang/Object;Ljava/lang/Object;)LaiD;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v1

    const-class v2, Ljava/lang/Character;

    invoke-static {v2}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaiD;->a(Ljava/lang/Object;Ljava/lang/Object;)LaiD;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    invoke-static {v2}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaiD;->a(Ljava/lang/Object;Ljava/lang/Object;)LaiD;

    move-result-object v0

    invoke-virtual {v0}, LaiD;->a()LaiC;

    move-result-object v0

    sput-object v0, Lapk;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)I
    .registers 2
    .parameter

    .prologue
    .line 47
    invoke-static {p0}, Lapk;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static a([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 305
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 306
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 307
    return v0

    .line 305
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static a(LanP;)LanP;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LanP",
            "<TT;>;)",
            "LanP",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, LanP;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lapk;->b(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 79
    new-instance v0, Laoy;

    invoke-direct {v0}, Laoy;-><init>()V

    invoke-virtual {v0, p0}, Laoy;->a(LanP;)Laoy;

    move-result-object v0

    .line 80
    new-instance v1, Lani;

    invoke-virtual {v0}, Laoy;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lani;-><init>(Ljava/lang/Iterable;)V

    throw v1

    .line 83
    :cond_1d
    invoke-virtual {p0}, LanP;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v2, LasT;

    if-ne v1, v2, :cond_37

    .line 84
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 89
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, LaqZ;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    invoke-static {v0}, LanP;->a(Ljava/lang/reflect/Type;)LanP;

    move-result-object v0

    .line 96
    :cond_36
    :goto_36
    return-object v0

    .line 95
    :cond_37
    sget-object v0, Lapk;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanP;

    .line 96
    if-nez v0, :cond_36

    move-object v0, p0

    goto :goto_36
.end method

.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 152
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_8

    .line 154
    check-cast p0, Ljava/lang/Class;

    .line 174
    :goto_7
    return-object p0

    .line 156
    :cond_8
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2e

    move-object v0, p0

    .line 157
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 162
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 163
    instance-of v1, v0, Ljava/lang/Class;

    const-string v2, "Expected a Class, but <%s> is of type %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 165
    check-cast v0, Ljava/lang/Class;

    move-object p0, v0

    goto :goto_7

    .line 167
    :cond_2e
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_45

    .line 168
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_7

    .line 171
    :cond_45
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4c

    .line 174
    const-class p0, Ljava/lang/Object;

    goto :goto_7

    .line 177
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 319
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/lang/Class;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 245
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 5
    .parameter

    .prologue
    .line 125
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1b

    .line 126
    check-cast p0, Ljava/lang/Class;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lapm;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lapm;-><init>(Ljava/lang/reflect/Type;)V

    move-object p0, v0

    .line 147
    :cond_1a
    :goto_1a
    return-object p0

    .line 129
    :cond_1b
    instance-of v0, p0, Lapl;

    if-nez v0, :cond_1a

    .line 132
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_38

    .line 133
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 134
    new-instance v0, Lapn;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lapn;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    move-object p0, v0

    goto :goto_1a

    .line 137
    :cond_38
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_49

    .line 138
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 139
    new-instance v0, Lapm;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lapm;-><init>(Ljava/lang/reflect/Type;)V

    move-object p0, v0

    goto :goto_1a

    .line 141
    :cond_49
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_1a

    .line 142
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 143
    new-instance v0, Lapo;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lapo;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    move-object p0, v0

    goto :goto_1a
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 254
    if-ne p2, p1, :cond_3

    .line 284
    :goto_2
    return-object p0

    .line 259
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 260
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 261
    const/4 v0, 0x0

    array-length v2, v1

    :goto_f
    if-ge v0, v2, :cond_34

    .line 262
    aget-object v3, v1, v0

    if-ne v3, p2, :cond_1c

    .line 263
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object p0, v1, v0

    goto :goto_2

    .line 264
    :cond_1c
    aget-object v3, v1, v0

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 265
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v0

    aget-object v0, v1, v0

    invoke-static {v2, v0, p2}, Lapk;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_2

    .line 261
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 271
    :cond_34
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 272
    :goto_3a
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_5a

    .line 273
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 274
    if-ne v0, p2, :cond_49

    .line 275
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_2

    .line 276
    :cond_49
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 277
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lapk;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_2

    :cond_58
    move-object p1, v0

    .line 280
    goto :goto_3a

    :cond_5a
    move-object p0, p2

    .line 284
    goto :goto_2
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {p2}, Lapk;->a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v1

    .line 291
    if-nez v1, :cond_7

    .line 301
    :cond_6
    :goto_6
    return-object p2

    .line 295
    :cond_7
    invoke-static {p0, p1, v1}, Lapk;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 296
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_6

    .line 297
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-static {v1, p2}, Lapk;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 298
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object p2, v0, v1

    goto :goto_6
.end method

.method static synthetic a(Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p0, p1}, Lapk;->b(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/reflect/Type;)Z
    .registers 2
    .parameter

    .prologue
    .line 47
    invoke-static {p0}, Lapk;->b(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    if-ne p0, p1, :cond_6

    move v1, v0

    .line 236
    :cond_5
    :goto_5
    return v1

    .line 190
    :cond_6
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_f

    .line 192
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5

    .line 194
    :cond_f
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_49

    .line 195
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_5

    .line 200
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 201
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 202
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    :goto_45
    move v1, v0

    goto :goto_5

    :cond_47
    move v0, v1

    goto :goto_45

    .line 206
    :cond_49
    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_62

    .line 207
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_5

    .line 211
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 212
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 213
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lapk;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v1

    goto :goto_5

    .line 215
    :cond_62
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_8f

    .line 216
    instance-of v2, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_5

    .line 220
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 221
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 222
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    :goto_8a
    move v1, v0

    goto/16 :goto_5

    :cond_8d
    move v0, v1

    goto :goto_8a

    .line 225
    :cond_8f
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_5

    .line 226
    instance-of v2, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_5

    .line 229
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 230
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .line 231
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    if-ne v2, v3, :cond_b6

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    :goto_b3
    move v1, v0

    goto/16 :goto_5

    :cond_b6
    move v0, v1

    goto :goto_b3
.end method

.method private static b(Ljava/lang/Object;)I
    .registers 2
    .parameter

    .prologue
    .line 241
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static b(Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 507
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_f
    move v0, v2

    :goto_10
    const-string v3, "Primitive types are not allowed in %s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p0, v4, v2

    invoke-static {v0, v3, v4}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 509
    return-void

    :cond_1d
    move v0, v1

    .line 507
    goto :goto_10
.end method

.method private static b(Ljava/lang/reflect/Type;)Z
    .registers 2
    .parameter

    .prologue
    .line 105
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 106
    const/4 v0, 0x1

    .line 115
    :goto_5
    return v0

    .line 108
    :cond_6
    instance-of v0, p0, Lapl;

    if-eqz v0, :cond_11

    .line 109
    check-cast p0, Lapl;

    invoke-interface {p0}, Lapl;->a()Z

    move-result v0

    goto :goto_5

    .line 111
    :cond_11
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_17

    .line 112
    const/4 v0, 0x0

    goto :goto_5

    .line 115
    :cond_17
    invoke-static {p0}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Lapl;

    invoke-interface {v0}, Lapl;->a()Z

    move-result v0

    goto :goto_5
.end method
