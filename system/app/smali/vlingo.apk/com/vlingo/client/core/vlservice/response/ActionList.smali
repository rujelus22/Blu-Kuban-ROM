.class public Lcom/vlingo/client/core/vlservice/response/ActionList;
.super Ljava/lang/Object;
.source "ActionList.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/vlservice/response/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionList;->list:Ljava/util/Vector;

    .line 40
    return-void
.end method

.method public static createActionListFromJSONArray(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/ActionList;
    .registers 5
    .parameter "jsonArray"

    .prologue
    .line 102
    new-instance v0, Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-direct {v0}, Lcom/vlingo/client/core/vlservice/response/ActionList;-><init>()V

    .line 104
    .local v0, al:Lcom/vlingo/client/core/vlservice/response/ActionList;
    :try_start_5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vlingo/client/core/vlservice/response/ActionList;->createActionListFromJSONArray(Lorg/json/JSONArray;)Lcom/vlingo/client/core/vlservice/response/ActionList;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_f

    move-result-object v0

    .line 109
    :goto_e
    return-object v0

    .line 106
    :catch_f
    move-exception v1

    .line 107
    .local v1, ex:Lorg/json/JSONException;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public static createActionListFromJSONArray(Lorg/json/JSONArray;)Lcom/vlingo/client/core/vlservice/response/ActionList;
    .registers 13
    .parameter "actions"

    .prologue
    .line 113
    new-instance v1, Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-direct {v1}, Lcom/vlingo/client/core/vlservice/response/ActionList;-><init>()V

    .line 115
    .local v1, al:Lcom/vlingo/client/core/vlservice/response/ActionList;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_77

    .line 116
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 117
    .local v4, jAction:Lorg/json/JSONObject;
    new-instance v0, Lcom/vlingo/client/core/vlservice/response/Action;

    const-string v10, "Name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/vlingo/client/core/vlservice/response/Action;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, action:Lcom/vlingo/client/core/vlservice/response/Action;
    const-string v10, "If"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 119
    const-string v10, "If"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/vlingo/client/core/vlservice/response/Action;->ifCondition:Ljava/lang/String;

    .line 121
    :cond_2b
    const-string v10, "Else"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 122
    const-string v10, "Else"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/vlingo/client/core/vlservice/response/Action;->elseStatement:Ljava/lang/String;

    .line 124
    :cond_3b
    const-string v10, "Params"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 125
    const-string v10, "Params"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 126
    .local v8, params:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, k:I
    :goto_4a
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_67

    .line 127
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 128
    .local v7, param:Lorg/json/JSONObject;
    const-string v10, "Name"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, name:Ljava/lang/String;
    const-string v10, "Value"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, value:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v0, v6, v9, v10}, Lcom/vlingo/client/core/vlservice/response/Action;->addParameter(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)V

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 133
    .end local v5           #k:I
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #param:Lorg/json/JSONObject;
    .end local v8           #params:Lorg/json/JSONArray;
    .end local v9           #value:Ljava/lang/String;
    :cond_67
    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/vlservice/response/ActionList;->addElement(Lcom/vlingo/client/core/vlservice/response/Action;)V
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6a} :catch_6d

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 136
    .end local v0           #action:Lcom/vlingo/client/core/vlservice/response/Action;
    .end local v4           #jAction:Lorg/json/JSONObject;
    :catch_6d
    move-exception v2

    .line 137
    .local v2, ex:Lorg/json/JSONException;
    const-string v10, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v2           #ex:Lorg/json/JSONException;
    :cond_77
    return-object v1
.end method

.method public static createActionListFromURL(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/ActionList;
    .registers 19
    .parameter "url"

    .prologue
    .line 143
    new-instance v6, Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-direct {v6}, Lcom/vlingo/client/core/vlservice/response/ActionList;-><init>()V

    .line 144
    .local v6, al:Lcom/vlingo/client/core/vlservice/response/ActionList;
    const-string v17, "action:"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1d

    const-string v17, "vvaction:"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a6

    .line 145
    :cond_1d
    const-string v16, ""

    .line 147
    .local v16, queryString:Ljava/lang/String;
    const/16 v17, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 148
    .local v7, colonIndex:I
    add-int/lit8 v17, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 150
    const/16 v17, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, actions:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3e
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_a6

    .line 152
    aget-object v4, v5, v8

    .line 156
    .local v4, actionString:Ljava/lang/String;
    const-string v17, "?"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 157
    .local v15, qPos:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_9e

    .line 158
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, actionName:Ljava/lang/String;
    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 166
    :goto_65
    new-instance v2, Lcom/vlingo/client/core/vlservice/response/Action;

    invoke-direct {v2, v3}, Lcom/vlingo/client/core/vlservice/response/Action;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, a:Lcom/vlingo/client/core/vlservice/response/Action;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_a0

    .line 168
    const/16 v17, 0x26

    invoke-static/range {v16 .. v17}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v10

    .line 169
    .local v10, params:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_77
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_a0

    .line 170
    aget-object v11, v10, v9

    .line 171
    .local v11, parm:Ljava/lang/String;
    const/16 v17, 0x3d

    move/from16 v0, v17

    invoke-static {v11, v0}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v13

    .line 172
    .local v13, pv:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v12, v13, v17

    .line 173
    .local v12, pname:Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v14, v13, v17

    .line 174
    .local v14, pval:Ljava/lang/String;
    invoke-static {v14}, Lcom/vlingo/client/core/util/UrlUtils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 177
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v12, v14, v0}, Lcom/vlingo/client/core/vlservice/response/Action;->addParameter(Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)V

    .line 169
    add-int/lit8 v9, v9, 0x1

    goto :goto_77

    .line 162
    .end local v2           #a:Lcom/vlingo/client/core/vlservice/response/Action;
    .end local v3           #actionName:Ljava/lang/String;
    .end local v9           #j:I
    .end local v10           #params:[Ljava/lang/String;
    .end local v11           #parm:Ljava/lang/String;
    .end local v12           #pname:Ljava/lang/String;
    .end local v13           #pv:[Ljava/lang/String;
    .end local v14           #pval:Ljava/lang/String;
    :cond_9e
    move-object v3, v4

    .restart local v3       #actionName:Ljava/lang/String;
    goto :goto_65

    .line 180
    .restart local v2       #a:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_a0
    invoke-virtual {v6, v2}, Lcom/vlingo/client/core/vlservice/response/ActionList;->addElement(Lcom/vlingo/client/core/vlservice/response/Action;)V

    .line 151
    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    .line 183
    .end local v2           #a:Lcom/vlingo/client/core/vlservice/response/Action;
    .end local v3           #actionName:Ljava/lang/String;
    .end local v4           #actionString:Ljava/lang/String;
    .end local v5           #actions:[Ljava/lang/String;
    .end local v7           #colonIndex:I
    .end local v8           #i:I
    .end local v15           #qPos:I
    .end local v16           #queryString:Ljava/lang/String;
    :cond_a6
    return-object v6
.end method

.method public static createActionListFromXML(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/ActionList;
    .registers 3
    .parameter "xml"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->createFromXml(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    move-result-object v0

    .line 98
    .local v0, res:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    invoke-virtual {v0}, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->getActionList()Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized addElement(Lcom/vlingo/client/core/vlservice/response/Action;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionList;->list:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 208
    monitor-exit p0

    return-void

    .line 207
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/vlservice/response/ActionList;

    .line 47
    .local v0, clone:Lcom/vlingo/client/core/vlservice/response/ActionList;
    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/ActionList;->list:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 48
    .local v1, thelist:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/vlservice/response/Action;>;"
    iput-object v1, v0, Lcom/vlingo/client/core/vlservice/response/ActionList;->list:Ljava/util/Vector;

    .line 49
    return-object v0
.end method

.method public containsActionWithName(Ljava/lang/String;)Z
    .registers 5
    .parameter "actionName"

    .prologue
    .line 67
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/vlingo/client/core/vlservice/response/ActionList;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 68
    invoke-virtual {p0, v1}, Lcom/vlingo/client/core/vlservice/response/ActionList;->elementAt(I)Lcom/vlingo/client/core/vlservice/response/Action;

    move-result-object v0

    .line 69
    .local v0, a:Lcom/vlingo/client/core/vlservice/response/Action;
    iget-object v2, v0, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 70
    const/4 v2, 0x1

    .line 73
    .end local v0           #a:Lcom/vlingo/client/core/vlservice/response/Action;
    :goto_14
    return v2

    .line 67
    .restart local v0       #a:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    .end local v0           #a:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_18
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public containsErrorMessage()Z
    .registers 6

    .prologue
    .line 54
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/vlingo/client/core/vlservice/response/ActionList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2a

    .line 55
    invoke-virtual {p0, v1}, Lcom/vlingo/client/core/vlservice/response/ActionList;->elementAt(I)Lcom/vlingo/client/core/vlservice/response/Action;

    move-result-object v0

    .line 56
    .local v0, a:Lcom/vlingo/client/core/vlservice/response/Action;
    invoke-virtual {v0}, Lcom/vlingo/client/core/vlservice/response/Action;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShowMessage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 57
    const-string v3, "Type"

    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, typeStr:Ljava/lang/String;
    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 59
    const/4 v3, 0x1

    .line 63
    .end local v0           #a:Lcom/vlingo/client/core/vlservice/response/Action;
    .end local v2           #typeStr:Ljava/lang/String;
    :goto_26
    return v3

    .line 54
    .restart local v0       #a:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    .end local v0           #a:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_26
.end method

.method public elementAt(I)Lcom/vlingo/client/core/vlservice/response/Action;
    .registers 3
    .parameter "index"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionList;->list:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/vlservice/response/Action;

    return-object v0
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/vlingo/client/core/vlservice/response/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getActionByName(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/Action;
    .registers 5
    .parameter "actionName"

    .prologue
    .line 87
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/vlingo/client/core/vlservice/response/ActionList;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 88
    invoke-virtual {p0, v1}, Lcom/vlingo/client/core/vlservice/response/ActionList;->elementAt(I)Lcom/vlingo/client/core/vlservice/response/Action;

    move-result-object v0

    .line 89
    .local v0, a:Lcom/vlingo/client/core/vlservice/response/Action;
    iget-object v2, v0, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 93
    .end local v0           #a:Lcom/vlingo/client/core/vlservice/response/Action;
    :goto_13
    return-object v0

    .line 87
    .restart local v0       #a:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    .end local v0           #a:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeActionByName(Ljava/lang/String;)V
    .registers 5
    .parameter "actionName"

    .prologue
    .line 77
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/vlingo/client/core/vlservice/response/ActionList;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 78
    invoke-virtual {p0, v1}, Lcom/vlingo/client/core/vlservice/response/ActionList;->elementAt(I)Lcom/vlingo/client/core/vlservice/response/Action;

    move-result-object v0

    .line 79
    .local v0, a:Lcom/vlingo/client/core/vlservice/response/Action;
    iget-object v2, v0, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 80
    iget-object v2, p0, Lcom/vlingo/client/core/vlservice/response/ActionList;->list:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 84
    .end local v0           #a:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_18
    return-void

    .line 77
    .restart local v0       #a:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public declared-synchronized removeAllElements()V
    .registers 2

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 196
    monitor-exit p0

    return-void

    .line 195
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/response/ActionList;->list:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
