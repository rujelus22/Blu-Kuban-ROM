.class public Ltwitter4j/internal/util/T4JInternalStringUtil;
.super Ljava/lang/Object;
.source "T4JInternalStringUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static join([I)Ljava/lang/String;
    .registers 7
    .parameter "follows"

    .prologue
    .line 65
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0xb

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 66
    .local v1, buf:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v4, :cond_20

    aget v2, v0, v3

    .line 67
    .local v2, follow:I
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_1a

    .line 68
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 72
    .end local v2           #follow:I
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static join([J)Ljava/lang/String;
    .registers 8
    .parameter "follows"

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v6, p0

    mul-int/lit8 v6, v6, 0xb

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 77
    .local v1, buf:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_b
    if-ge v4, v5, :cond_20

    aget-wide v2, v0, v4

    .line 78
    .local v2, follow:J
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eqz v6, :cond_1a

    .line 79
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_1a
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 83
    .end local v2           #follow:J
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static join([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "track"

    .prologue
    .line 87
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0xb

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 88
    .local v1, buf:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_b
    if-ge v2, v3, :cond_20

    aget-object v4, v0, v2

    .line 89
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_1a

    .line 90
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :cond_1a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 94
    .end local v4           #str:Ljava/lang/String;
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static maskString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 33
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 34
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 36
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .parameter "str"
    .parameter "separator"

    .prologue
    const/4 v6, -0x1

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, index:I
    if-ne v0, v6, :cond_e

    .line 45
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v2, v5

    .line 61
    .local v2, returnValue:[Ljava/lang/String;
    :goto_d
    return-object v2

    .line 47
    .end local v2           #returnValue:[Ljava/lang/String;
    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v3, strList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 49
    .local v1, oldIndex:I
    :goto_14
    if-eq v0, v6, :cond_28

    .line 50
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, subStr:Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v0, v5

    .line 53
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 54
    goto :goto_14

    .line 55
    .end local v4           #subStr:Ljava/lang/String;
    :cond_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v1, v5, :cond_35

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .restart local v2       #returnValue:[Ljava/lang/String;
    goto :goto_d
.end method
