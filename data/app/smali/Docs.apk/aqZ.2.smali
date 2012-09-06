.class public final LaqZ;
.super Ljava/lang/Object;
.source "Types.java"


# direct methods
.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .registers 2
    .parameter

    .prologue
    .line 71
    new-instance v0, Lapm;

    invoke-direct {v0, p0}, Lapm;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 4
    .parameter

    .prologue
    .line 132
    const-class v0, LanD;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, LaqZ;->a(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Lapn;

    invoke-direct {v0, p0, p1, p2}, Lapn;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static varargs a(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, LaqZ;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 4
    .parameter

    .prologue
    .line 81
    new-instance v0, Lapo;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lapk;->a:[Ljava/lang/reflect/Type;

    invoke-direct {v0, v1, v2}, Lapo;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    new-instance v0, Lapo;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/reflect/Type;

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lapo;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method
