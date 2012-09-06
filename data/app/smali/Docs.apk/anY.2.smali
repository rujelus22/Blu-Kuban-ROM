.class public LanY;
.super Ljava/lang/Object;
.source "Annotations.java"


# static fields
.field private static final a:LanZ;

.field private static final b:LanZ;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    new-instance v0, LanZ;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, LanH;

    aput-object v2, v1, v3

    const-class v2, LasV;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, LanZ;-><init>(Ljava/util/Collection;)V

    sput-object v0, LanY;->a:LanZ;

    .line 175
    new-instance v0, LanZ;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lanh;

    aput-object v2, v1, v3

    const-class v2, LasU;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, LanZ;-><init>(Ljava/util/Collection;)V

    sput-object v0, LanY;->b:LanZ;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static a(LanP;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Laoy;)Lant;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<*>;",
            "Ljava/lang/reflect/Member;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Laoy;",
            ")",
            "Lant",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p3}, Laoy;->a()I

    move-result v0

    .line 149
    invoke-static {p3, p1, p2}, LanY;->a(Laoy;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 150
    invoke-virtual {p3, v0}, Laoy;->a(I)V

    .line 151
    if-nez v1, :cond_12

    invoke-static {p0}, Lant;->a(LanP;)Lant;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-static {p0, v1}, Lant;->a(LanP;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    goto :goto_11
.end method

.method public static a(Laoy;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {p0, v0}, LanY;->a(Laoy;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static a(Laoy;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 71
    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_5
    if-ge v2, v3, :cond_1e

    aget-object v1, p1, v2

    .line 72
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 73
    invoke-static {v1}, LanY;->c(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 74
    if-eqz v0, :cond_1c

    .line 75
    invoke-virtual {p0, v0, v1}, Laoy;->c(Ljava/lang/Class;Ljava/lang/Class;)Laoy;

    .line 71
    :cond_18
    :goto_18
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_1c
    move-object v0, v1

    .line 77
    goto :goto_18

    .line 82
    :cond_1e
    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    const-class v0, LasS;

    if-ne p0, v0, :cond_6

    .line 204
    const-class p0, Laqa;

    .line 206
    :cond_6
    return-object p0
.end method

.method public static a(Laoy;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 161
    array-length v3, p2

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_5
    if-ge v2, v3, :cond_22

    aget-object v1, p2, v2

    .line 162
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 163
    invoke-static {v4}, LanY;->d(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 164
    if-eqz v0, :cond_20

    .line 165
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v4}, Laoy;->a(Ljava/lang/reflect/Member;Ljava/lang/Class;Ljava/lang/Class;)Laoy;

    .line 161
    :cond_1c
    :goto_1c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_20
    move-object v0, v1

    .line 167
    goto :goto_1c

    .line 172
    :cond_22
    return-object v0
.end method

.method public static a(Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .registers 2
    .parameter

    .prologue
    .line 190
    instance-of v0, p0, LasS;

    if-eqz v0, :cond_e

    .line 191
    check-cast p0, LasS;

    invoke-interface {p0}, LasS;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object p0

    .line 193
    :cond_e
    return-object p0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Object;Laoy;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Laoy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, LapV;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    :cond_6
    :goto_6
    return-void

    .line 139
    :cond_7
    invoke-static {p2, p0}, LanY;->a(Laoy;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_6

    .line 141
    invoke-virtual {p2, p0}, Laoy;->a(Ljava/lang/Object;)Laoy;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Laoy;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Laoy;

    goto :goto_6
.end method

.method public static a(Ljava/lang/Class;)Z
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static b(Ljava/lang/Class;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 57
    const-class v0, Ljava/lang/annotation/Retention;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Retention;

    .line 58
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/lang/annotation/Retention;->value()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v0

    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static c(Ljava/lang/Class;)Z
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, LanY;->a:LanZ;

    invoke-virtual {v0, p0}, LanZ;->a(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/Class;)Z
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 182
    sget-object v0, LanY;->b:LanZ;

    invoke-virtual {v0, p0}, LanZ;->a(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
