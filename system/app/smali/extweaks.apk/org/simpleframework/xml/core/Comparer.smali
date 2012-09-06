.class Lorg/simpleframework/xml/core/Comparer;
.super Ljava/lang/Object;
.source "Comparer.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "name"


# instance fields
.field private final ignore:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Comparer;-><init>([Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method private isIgnore(Ljava/lang/reflect/Method;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 108
    iget-object v1, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 109
    iget-object v3, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_d
    if-ge v1, v4, :cond_18

    aget-object v5, v3, v1

    .line 110
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 111
    const/4 v0, 0x1

    .line 115
    :cond_18
    return v0

    .line 109
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method


# virtual methods
.method public equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 77
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 81
    array-length v2, v3

    move v1, v0

    :goto_15
    if-ge v1, v2, :cond_35

    aget-object v4, v3, v1

    .line 82
    invoke-direct {p0, v4}, Lorg/simpleframework/xml/core/Comparer;->isIgnore(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 83
    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 84
    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v4, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 86
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 93
    :cond_31
    :goto_31
    return v0

    .line 81
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 91
    :cond_35
    const/4 v0, 0x1

    goto :goto_31
.end method
