.class public Ljava/util/regex/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# static fields
.field private static final METACHARACTERS:Ljava/lang/String; = "\\?*+[](){}^$.|"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 14
    .parameter "re"
    .parameter "input"
    .parameter "limit"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 41
    .local v3, len:I
    if-nez v3, :cond_b

    .line 75
    :cond_a
    :goto_a
    return-object v6

    .line 44
    :cond_b
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 45
    .local v1, ch:C
    if-ne v3, v9, :cond_26

    const-string v7, "\\?*+[](){}^$.|"

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v8, :cond_26

    .line 62
    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 63
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v6, v10

    goto :goto_a

    .line 47
    :cond_26
    const/4 v7, 0x2

    if-ne v3, v7, :cond_a

    const/16 v7, 0x5c

    if-ne v1, v7, :cond_a

    .line 50
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 51
    const-string v7, "\\?*+[](){}^$.|"

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v8, :cond_19

    goto :goto_a

    .line 67
    :cond_3a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-gtz p2, :cond_5d

    const v5, 0x7fffffff

    .line 69
    .local v5, maxSize:I
    :goto_44
    const/4 v0, 0x0

    .line 71
    .local v0, begin:I
    :goto_45
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, end:I
    if-eq v2, v8, :cond_5f

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v5, :cond_5f

    .line 72
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v0, v2, 0x1

    goto :goto_45

    .end local v0           #begin:I
    .end local v2           #end:I
    .end local v5           #maxSize:I
    :cond_5d
    move v5, p2

    .line 68
    goto :goto_44

    .line 75
    .restart local v0       #begin:I
    .restart local v2       #end:I
    .restart local v5       #maxSize:I
    :cond_5f
    invoke-static {v4, p1, v0, v5, p2}, Ljava/util/regex/Splitter;->finishSplit(Ljava/util/List;Ljava/lang/String;III)[Ljava/lang/String;

    move-result-object v6

    goto :goto_a
.end method

.method private static finishSplit(Ljava/util/List;Ljava/lang/String;III)[Ljava/lang/String;
    .registers 7
    .parameter
    .parameter "input"
    .parameter "begin"
    .parameter "maxSize"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "III)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_29

    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_d
    :goto_d
    if-nez p4, :cond_31

    .line 111
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 112
    .local v0, i:I
    :goto_15
    if-ltz v0, :cond_31

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 113
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 114
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 106
    .end local v0           #i:I
    :cond_29
    if-eqz p4, :cond_d

    .line 107
    const-string v1, ""

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 118
    :cond_31
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static split(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 11
    .parameter "pattern"
    .parameter "re"
    .parameter "input"
    .parameter "limit"

    .prologue
    .line 79
    invoke-static {p1, p2, p3}, Ljava/util/regex/Splitter;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, fastResult:[Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 99
    .end local v1           #fastResult:[Ljava/lang/String;
    :goto_6
    return-object v1

    .line 86
    .restart local v1       #fastResult:[Ljava/lang/String;
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 87
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .end local v1           #fastResult:[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v1, v5

    goto :goto_6

    .line 91
    .restart local v1       #fastResult:[Ljava/lang/String;
    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-gtz p3, :cond_44

    const v4, 0x7fffffff

    .line 93
    .local v4, maxSize:I
    :goto_20
    new-instance v3, Ljava/util/regex/Matcher;

    invoke-direct {v3, p0, p2}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    .line 94
    .local v3, matcher:Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 95
    .local v0, begin:I
    :goto_26
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v4, :cond_46

    .line 96
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_26

    .end local v0           #begin:I
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #maxSize:I
    :cond_44
    move v4, p3

    .line 92
    goto :goto_20

    .line 99
    .restart local v0       #begin:I
    .restart local v3       #matcher:Ljava/util/regex/Matcher;
    .restart local v4       #maxSize:I
    :cond_46
    invoke-static {v2, p2, v0, v4, p3}, Ljava/util/regex/Splitter;->finishSplit(Ljava/util/List;Ljava/lang/String;III)[Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method
