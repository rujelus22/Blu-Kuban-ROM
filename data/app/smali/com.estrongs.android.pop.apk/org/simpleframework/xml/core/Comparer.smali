.class Lorg/simpleframework/xml/core/Comparer;
.super Ljava/lang/Object;


# static fields
.field private static final NAME:Ljava/lang/String; = "name"


# instance fields
.field private final ignore:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Comparer;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    return-void
.end method

.method private isIgnore(Ljava/lang/reflect/Method;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v3, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_d
    if-lt v1, v4, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v0, 0x1

    goto :goto_f

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method


# virtual methods
.method public equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .registers 10

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    array-length v2, v3

    move v1, v0

    :goto_15
    if-lt v1, v2, :cond_19

    const/4 v0, 0x1

    :cond_18
    return v0

    :cond_19
    aget-object v4, v3, v1

    invoke-direct {p0, v4}, Lorg/simpleframework/xml/core/Comparer;->isIgnore(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-nez v5, :cond_33

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v4, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method
