.class public Lorg/apache/commons/httpclient/util/LangUtils;
.super Ljava/lang/Object;
.source "LangUtils.java"


# static fields
.field public static final HASH_OFFSET:I = 0x25

.field public static final HASH_SEED:I = 0x11


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 63
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static hashCode(II)I
    .registers 3
    .parameter "seed"
    .parameter "hashcode"

    .prologue
    .line 51
    mul-int/lit8 v0, p0, 0x25

    add-int/2addr v0, p1

    return v0
.end method

.method public static hashCode(ILjava/lang/Object;)I
    .registers 3
    .parameter "seed"
    .parameter "obj"

    .prologue
    .line 55
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static hashCode(IZ)I
    .registers 3
    .parameter "seed"
    .parameter "b"

    .prologue
    .line 59
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method
