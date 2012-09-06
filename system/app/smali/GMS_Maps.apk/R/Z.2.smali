.class public Lr/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lr/Z;->a:Ljava/util/Map;

    .line 60
    sget-object v0, Lr/Z;->a:Ljava/util/Map;

    sget-object v1, Lr/e;->c:Lr/e;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public static a(II)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-static {p0}, Lr/Z;->a(I)V

    .line 96
    invoke-static {p1}, Lr/Z;->a(I)V

    .line 98
    and-int/lit8 v0, p0, 0x1f

    .line 99
    shr-int/lit8 v1, p0, 0x5

    .line 100
    and-int/lit8 v2, p1, 0x1f

    .line 101
    shr-int/lit8 v3, p1, 0x5

    .line 103
    xor-int/lit8 v4, v3, 0x1f

    and-int/2addr v0, v4

    or-int/2addr v0, v2

    .line 104
    xor-int/lit8 v2, v2, 0x1f

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    .line 105
    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    .line 107
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 108
    invoke-static {v0}, Lr/Z;->a(I)V

    .line 110
    :cond_22
    return v0
.end method

.method public static a(Lr/e;Z)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 122
    sget-object v0, Lr/Z;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 123
    if-nez v0, :cond_c

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_b
    return v0

    :cond_c
    if-eqz p1, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x5

    goto :goto_b
.end method

.method public static a(I)V
    .registers 4
    .parameter

    .prologue
    .line 73
    shr-int/lit8 v0, p0, 0xa

    if-eqz v0, :cond_23

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the modifier ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is out of bound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_23
    and-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v1, p0, 0x5

    and-int/2addr v0, v1

    if-eqz v0, :cond_49

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the modifier ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] has conflict bits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_49
    return-void
.end method

.method public static a(Lr/e;)Z
    .registers 2
    .parameter

    .prologue
    .line 117
    sget-object v0, Lr/Z;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
