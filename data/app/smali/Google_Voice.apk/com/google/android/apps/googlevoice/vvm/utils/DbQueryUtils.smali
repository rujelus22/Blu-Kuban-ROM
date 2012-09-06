.class public Lcom/google/android/apps/googlevoice/vvm/utils/DbQueryUtils;
.super Ljava/lang/Object;
.source "DbQueryUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static varargs concatenateClausesWithAnd([Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "clauses"

    .prologue
    .line 36
    const-string v0, "AND"

    invoke-static {v0, p0}, Lcom/google/android/apps/googlevoice/vvm/utils/DbQueryUtils;->concatenateClausesWithOperation(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concatenateClausesWithOperation(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "operation"
    .parameter "clauses"

    .prologue
    .line 47
    array-length v5, p1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 48
    const/4 v5, 0x0

    aget-object v5, p1, v5

    .line 63
    :goto_7
    return-object v5

    .line 51
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v1, builder:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_10
    if-ge v3, v4, :cond_3f

    aget-object v2, v0, v3

    .line 54
    .local v2, clause:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2f

    .line 56
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_2f
    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 63
    .end local v2           #clause:Ljava/lang/String;
    :cond_3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7
.end method

.method public static varargs concatenateClausesWithOr([Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "clauses"

    .prologue
    .line 41
    const-string v0, "OR"

    invoke-static {v0, p0}, Lcom/google/android/apps/googlevoice/vvm/utils/DbQueryUtils;->concatenateClausesWithOperation(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "field"
    .parameter "value"

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .local v0, clause:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {v0, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEqualityClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "table"
    .parameter "field"
    .parameter "value"

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/apps/googlevoice/vvm/utils/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
