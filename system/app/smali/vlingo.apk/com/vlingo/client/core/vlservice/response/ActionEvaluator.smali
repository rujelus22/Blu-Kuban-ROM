.class public abstract Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;
.super Ljava/lang/Object;
.source "ActionEvaluator.java"


# static fields
.field protected static final OPERATOR_AND:I = 0x2

.field protected static final OPERATOR_OR:I = 0x1


# instance fields
.field protected variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;->variables:Ljava/util/HashMap;

    .line 25
    return-void
.end method


# virtual methods
.method public evaluateAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 11
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 28
    invoke-virtual {p1}, Lcom/vlingo/client/core/vlservice/response/Action;->isConditional()Z

    move-result v7

    if-nez v7, :cond_9

    .line 72
    :goto_8
    return v6

    .line 36
    :cond_9
    const/4 v3, 0x1

    .line 39
    .local v3, operator:I
    iget-object v7, p1, Lcom/vlingo/client/core/vlservice/response/Action;->ifCondition:Ljava/lang/String;

    const-string v8, "&&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 40
    iget-object v7, p1, Lcom/vlingo/client/core/vlservice/response/Action;->ifCondition:Ljava/lang/String;

    const-string v8, "&&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, exprList:[Ljava/lang/String;
    const/4 v3, 0x2

    .line 48
    :goto_1d
    const/4 v4, 0x1

    .line 49
    .local v4, result:Z
    if-ne v3, v6, :cond_21

    .line 50
    const/4 v4, 0x0

    .line 54
    :cond_21
    const/4 v2, 0x0

    .local v2, i:I
    :goto_22
    array-length v7, v0

    if-ge v2, v7, :cond_35

    .line 56
    aget-object v7, v0, v2

    invoke-virtual {p0, v7}, Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;->evaluateExpression(Ljava/lang/String;)Z

    move-result v1

    .line 58
    .local v1, exprResult:Z
    const/4 v7, 0x2

    if-ne v3, v7, :cond_66

    .line 59
    if-eqz v4, :cond_64

    if-eqz v1, :cond_64

    move v4, v6

    .line 60
    :goto_33
    if-nez v4, :cond_6d

    .line 68
    .end local v1           #exprResult:Z
    :cond_35
    if-nez v4, :cond_48

    iget-object v5, p1, Lcom/vlingo/client/core/vlservice/response/Action;->elseStatement:Ljava/lang/String;

    if-eqz v5, :cond_48

    iget-object v5, p1, Lcom/vlingo/client/core/vlservice/response/Action;->elseStatement:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_48

    .line 69
    iget-object v5, p1, Lcom/vlingo/client/core/vlservice/response/Action;->elseStatement:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;->evaluateExpression(Ljava/lang/String;)Z

    :cond_48
    move v6, v4

    .line 72
    goto :goto_8

    .line 42
    .end local v0           #exprList:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #result:Z
    :cond_4a
    iget-object v7, p1, Lcom/vlingo/client/core/vlservice/response/Action;->ifCondition:Ljava/lang/String;

    const-string v8, "||"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 43
    iget-object v7, p1, Lcom/vlingo/client/core/vlservice/response/Action;->ifCondition:Ljava/lang/String;

    const-string v8, "||"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #exprList:[Ljava/lang/String;
    goto :goto_1d

    .line 45
    .end local v0           #exprList:[Ljava/lang/String;
    :cond_5d
    new-array v0, v6, [Ljava/lang/String;

    iget-object v7, p1, Lcom/vlingo/client/core/vlservice/response/Action;->ifCondition:Ljava/lang/String;

    aput-object v7, v0, v5

    .restart local v0       #exprList:[Ljava/lang/String;
    goto :goto_1d

    .restart local v1       #exprResult:Z
    .restart local v2       #i:I
    .restart local v4       #result:Z
    :cond_64
    move v4, v5

    .line 59
    goto :goto_33

    .line 61
    :cond_66
    if-ne v3, v6, :cond_6d

    .line 62
    if-nez v4, :cond_6c

    if-eqz v1, :cond_70

    :cond_6c
    move v4, v6

    .line 54
    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_70
    move v4, v5

    .line 62
    goto :goto_6d
.end method

.method protected evaluateExpression(Ljava/lang/String;)Z
    .registers 11
    .parameter "expression"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 81
    const/16 v8, 0x28

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 82
    .local v5, parmStart:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 84
    .local v4, parmEnd:I
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, parameters:Ljava/lang/String;
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 88
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 89
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, params:[Ljava/lang/String;
    :goto_26
    const/4 v1, 0x0

    .line 96
    .local v1, invert:Z
    const-string v8, "!"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 97
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 98
    const/4 v1, 0x1

    .line 111
    :cond_34
    invoke-virtual {p0, p1, v3}, Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;->evaluateExpression(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 113
    .local v0, exprResult:Z
    if-eqz v1, :cond_3d

    .line 114
    if-nez v0, :cond_43

    move v0, v6

    .line 120
    :cond_3d
    :goto_3d
    return v0

    .line 91
    .end local v0           #exprResult:Z
    .end local v1           #invert:Z
    .end local v3           #params:[Ljava/lang/String;
    :cond_3e
    new-array v3, v6, [Ljava/lang/String;

    aput-object v2, v3, v7

    .restart local v3       #params:[Ljava/lang/String;
    goto :goto_26

    .restart local v0       #exprResult:Z
    .restart local v1       #invert:Z
    :cond_43
    move v0, v7

    .line 114
    goto :goto_3d
.end method

.method protected evaluateExpression(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .parameter "expression"
    .parameter "parameters"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    const-string v4, "is-true"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 125
    aget-object v2, p2, v3

    invoke-virtual {p0, v2}, Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;->getBooleanVariable(Ljava/lang/String;)Z

    move-result v2

    .line 138
    :cond_10
    :goto_10
    return v2

    .line 126
    :cond_11
    const-string v4, "is-false"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 127
    aget-object v4, p2, v3

    invoke-virtual {p0, v4}, Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;->getBooleanVariable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v2, v3

    goto :goto_10

    .line 128
    :cond_23
    const-string v4, "equals"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 129
    aget-object v0, p2, v3

    .line 130
    .local v0, varName:Ljava/lang/String;
    aget-object v1, p2, v2

    .line 131
    .local v1, varVal:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_10

    .line 132
    .end local v0           #varName:Ljava/lang/String;
    .end local v1           #varVal:Ljava/lang/String;
    :cond_38
    const-string v4, "set"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 133
    aget-object v3, p2, v3

    aget-object v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public getBooleanVariable(Ljava/lang/String;)Z
    .registers 4
    .parameter "varName"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, val:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "varName"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;->variables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_c

    .line 149
    const-string v0, ""

    .line 150
    :cond_c
    return-object v0
.end method

.method protected isBoolean(Ljava/lang/String;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 143
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "varName"
    .parameter "varValue"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method
