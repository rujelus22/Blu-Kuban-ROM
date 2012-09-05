.class public Lcom/vlingo/client/core/vlservice/response/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c_VPathPrefix:Ljava/lang/String; = "${"


# instance fields
.field public elseStatement:Ljava/lang/String;

.field public ifCondition:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field protected parameters:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/Action;->parameters:Ljava/util/Hashtable;

    .line 59
    return-void
.end method

.method protected constructor <init>(Lcom/vlingo/client/core/vlservice/response/Action;)V
    .registers 3
    .parameter "a"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p1, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/vlingo/client/core/vlservice/response/Action;->parameters:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/Action;->parameters:Ljava/util/Hashtable;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/vlingo/client/core/vlservice/response/Action;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private expandVariableSection(Ljava/lang/String;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)Ljava/lang/String;
    .registers 17
    .parameter "input"
    .parameter "results"

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "${alternates"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 98
    .local v5, startVSection:I
    if-ltz v5, :cond_ec

    .line 99
    const-string v12, "}"

    invoke-virtual {p1, v12, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 100
    .local v1, endVSection:I
    if-ltz v1, :cond_ec

    .line 101
    const-string v10, ""

    .line 102
    .local v10, vOutput:Ljava/lang/String;
    add-int/lit8 v12, v5, 0x2

    invoke-virtual {p1, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 105
    .local v11, vSection:Ljava/lang/String;
    const-string v12, "alternates.wl"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2c

    const-string v12, "alternates.ul"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_38

    .line 106
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v10

    .line 138
    :cond_34
    :goto_34
    if-nez v10, :cond_b0

    .line 141
    const/4 v2, 0x0

    .line 157
    .end local v1           #endVSection:I
    .end local v10           #vOutput:Ljava/lang/String;
    .end local v11           #vSection:Ljava/lang/String;
    :cond_37
    :goto_37
    return-object v2

    .line 109
    .restart local v1       #endVSection:I
    .restart local v10       #vOutput:Ljava/lang/String;
    .restart local v11       #vSection:Ljava/lang/String;
    :cond_38
    const-string v12, "tag("

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 110
    .local v9, tagnameStart:I
    if-ltz v9, :cond_34

    .line 111
    add-int/lit8 v9, v9, 0x4

    .line 112
    const-string v12, ")"

    invoke-virtual {v11, v12, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 113
    .local v8, tagnameEnd:I
    if-ltz v8, :cond_34

    .line 114
    invoke-virtual {v11, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, tagName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getParseGroup()Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    move-result-object v3

    .line 118
    .local v3, pg:Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;
    const/4 v4, 0x0

    .line 119
    .local v4, res:Lcom/vlingo/client/core/recognizer/results/RecResults;
    if-eqz v3, :cond_5f

    .line 120
    invoke-virtual {v3, v7}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->lookupTagByName(Ljava/lang/String;)Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;

    move-result-object v6

    .line 121
    .local v6, tag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    if-eqz v6, :cond_5f

    .line 122
    invoke-virtual {v6}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->getRecResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v4

    .line 125
    .end local v6           #tag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    :cond_5f
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, canonicalString:Ljava/lang/String;
    if-eqz v4, :cond_8b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_8b

    iget-object v12, v4, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCSF:[Ljava/lang/String;

    if-eqz v12, :cond_8b

    iget-object v12, v4, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCSF:[Ljava/lang/String;

    array-length v12, v12

    if-lez v12, :cond_8b

    iget-object v12, v4, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCSF:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    if-eqz v12, :cond_8b

    const-string v12, ":csf"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8b

    .line 127
    iget-object v12, v4, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCSF:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v10, v12, v13

    goto :goto_34

    .line 129
    :cond_8b
    if-eqz v4, :cond_a9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_a9

    iget-object v12, v4, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCannonical:[Ljava/lang/String;

    if-eqz v12, :cond_a9

    iget-object v12, v4, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCannonical:[Ljava/lang/String;

    array-length v12, v12

    if-lez v12, :cond_a9

    iget-object v12, v4, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCannonical:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    if-eqz v12, :cond_a9

    .line 130
    iget-object v12, v4, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCannonical:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v10, v12, v13

    goto :goto_34

    .line 133
    :cond_a9
    if-eqz v4, :cond_34

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v10

    goto :goto_34

    .line 144
    .end local v0           #canonicalString:Ljava/lang/String;
    .end local v3           #pg:Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;
    .end local v4           #res:Lcom/vlingo/client/core/recognizer/results/RecResults;
    .end local v7           #tagName:Ljava/lang/String;
    .end local v8           #tagnameEnd:I
    .end local v9           #tagnameStart:I
    :cond_b0
    const/4 v2, 0x0

    .line 145
    .local v2, newString:Ljava/lang/String;
    if-lez v5, :cond_ea

    .line 146
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {p1, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    :goto_c9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v1, v12, :cond_37

    .line 152
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v1, 0x1

    invoke-virtual {p1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_37

    .line 149
    :cond_ea
    move-object v2, v10

    goto :goto_c9

    .line 157
    .end local v1           #endVSection:I
    .end local v2           #newString:Ljava/lang/String;
    .end local v10           #vOutput:Ljava/lang/String;
    .end local v11           #vSection:Ljava/lang/String;
    :cond_ec
    const/4 v2, 0x0

    goto/16 :goto_37
.end method

.method private parseVPath(Ljava/lang/String;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)Ljava/lang/Object;
    .registers 5
    .parameter "vpath"
    .parameter "results"

    .prologue
    .line 84
    move-object v1, p1

    .line 86
    .local v1, resultString:Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/vlingo/client/core/vlservice/response/Action;->expandVariableSection(Ljava/lang/String;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, newString:Ljava/lang/String;
    :goto_5
    if-eqz v0, :cond_d

    .line 88
    move-object v1, v0

    .line 89
    invoke-direct {p0, v1, p2}, Lcom/vlingo/client/core/vlservice/response/Action;->expandVariableSection(Ljava/lang/String;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 91
    :cond_d
    return-object v1
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)V
    .registers 6
    .parameter "name"
    .parameter "value"
    .parameter "results"

    .prologue
    .line 67
    move-object v0, p2

    .line 68
    .local v0, val:Ljava/lang/String;
    if-eqz p3, :cond_d

    invoke-virtual {p0, p2}, Lcom/vlingo/client/core/vlservice/response/Action;->isVPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 69
    invoke-direct {p0, p2, p3}, Lcom/vlingo/client/core/vlservice/response/Action;->parseVPath(Ljava/lang/String;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    .end local v0           #val:Ljava/lang/String;
    :cond_d
    if-nez v0, :cond_11

    .line 72
    const-string v0, ""

    .line 74
    :cond_11
    invoke-virtual {p0, p1, v0}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/vlservice/response/Action;

    .line 50
    .local v0, clone:Lcom/vlingo/client/core/vlservice/response/Action;
    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/Action;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 51
    .local v1, thetable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object v1, v0, Lcom/vlingo/client/core/vlservice/response/Action;->parameters:Ljava/util/Hashtable;

    .line 52
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParamValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 200
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 201
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/Action;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public getStringParamValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/vlservice/response/Action;->getParamValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 169
    .local v1, v:Ljava/lang/Object;
    if-nez v1, :cond_9

    .line 170
    const-string v1, ""

    .line 176
    .end local v1           #v:Ljava/lang/Object;
    :goto_8
    return-object v1

    .line 171
    .restart local v1       #v:Ljava/lang/Object;
    :cond_9
    instance-of v2, v1, Lcom/vlingo/client/core/recognizer/results/RecResults;

    if-eqz v2, :cond_15

    move-object v0, v1

    .line 172
    check-cast v0, Lcom/vlingo/client/core/recognizer/results/RecResults;

    .line 173
    .local v0, r:Lcom/vlingo/client/core/recognizer/results/RecResults;
    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 176
    .end local v0           #r:Lcom/vlingo/client/core/recognizer/results/RecResults;
    :cond_15
    check-cast v1, Ljava/lang/String;

    goto :goto_8
.end method

.method public isConditional()Z
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/Action;->ifCondition:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/Action;->ifCondition:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isVPath(Ljava/lang/String;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 162
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_13

    const-string v0, "${"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/Action;->parameters:Ljava/util/Hashtable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/Action;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 239
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/Action;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 213
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v4, "Action: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    iget-object v4, p0, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v4, "    If: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    iget-object v4, p0, Lcom/vlingo/client/core/vlservice/response/Action;->ifCondition:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v4, "  Else: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    iget-object v4, p0, Lcom/vlingo/client/core/vlservice/response/Action;->elseStatement:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    iget-object v4, p0, Lcom/vlingo/client/core/vlservice/response/Action;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 225
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_38
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 226
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/core/vlservice/response/Action;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 228
    .local v3, value:Ljava/lang/Object;
    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38

    .line 235
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Object;
    :cond_64
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
