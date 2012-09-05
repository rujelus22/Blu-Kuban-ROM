.class public Lcom/vlingo/client/typedrequests/provider/Suggestion;
.super Ljava/lang/Object;
.source "Suggestion.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
        ">;"
    }
.end annotation


# instance fields
.field private actionString:Ljava/lang/String;

.field private actions:Lcom/vlingo/client/core/vlservice/response/ActionList;

.field private displayText:Ljava/lang/String;

.field private editText:Ljava/lang/String;

.field private isFromCache:Z

.field private noCache:Z

.field private parseType:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private score:F

.field private secondaryIcon:Ljava/lang/String;

.field private secondaryText:Ljava/lang/String;

.field public sourceContentProvider:Ljava/lang/String;

.field private variableDisplayNames:Ljava/util/HashMap;
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

.field private variables:Ljava/util/HashMap;
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
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->score:F

    .line 28
    iput-object v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->secondaryIcon:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->displayText:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->isFromCache:Z

    .line 40
    iput-boolean v2, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->noCache:Z

    .line 205
    iput-object v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->editText:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variableDisplayNames:Ljava/util/HashMap;

    .line 45
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    const-string v1, "text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    const-string v1, "contact"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-direct {v0}, Lcom/vlingo/client/core/vlservice/response/ActionList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->actions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/typedrequests/provider/Suggestion;)V
    .registers 6
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->score:F

    .line 28
    iput-object v2, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->secondaryIcon:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->displayText:Ljava/lang/String;

    .line 39
    iput-boolean v3, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->isFromCache:Z

    .line 40
    iput-boolean v3, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->noCache:Z

    .line 205
    iput-object v2, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->editText:Ljava/lang/String;

    .line 60
    iget-boolean v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->isFromCache:Z

    iput-boolean v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->isFromCache:Z

    .line 61
    iget-boolean v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->noCache:Z

    iput-boolean v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->noCache:Z

    .line 62
    iget-object v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->pattern:Ljava/lang/String;

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->pattern:Ljava/lang/String;

    .line 63
    iget-object v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->secondaryText:Ljava/lang/String;

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->secondaryText:Ljava/lang/String;

    .line 64
    iget v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->score:F

    iput v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->score:F

    .line 65
    iget-object v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->parseType:Ljava/lang/String;

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->parseType:Ljava/lang/String;

    .line 66
    iget-object v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->secondaryIcon:Ljava/lang/String;

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->secondaryIcon:Ljava/lang/String;

    .line 67
    iget-object v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    if-eqz v1, :cond_3c

    .line 69
    iget-object v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 70
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    .line 72
    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3c
    iget-object v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variableDisplayNames:Ljava/util/HashMap;

    if-eqz v1, :cond_4a

    .line 74
    iget-object v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variableDisplayNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 75
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variableDisplayNames:Ljava/util/HashMap;

    .line 77
    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4a
    iget-object v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->actions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->actions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    .line 78
    iget-object v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->actionString:Ljava/lang/String;

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->actionString:Ljava/lang/String;

    .line 79
    iget-object v1, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->sourceContentProvider:Ljava/lang/String;

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->sourceContentProvider:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .registers 6
    .parameter "pattern"
    .parameter "secondaryText"
    .parameter "icon"
    .parameter "actionString"
    .parameter "score"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/vlingo/client/typedrequests/provider/Suggestion;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->pattern:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->parseType:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->actionString:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->secondaryText:Ljava/lang/String;

    .line 56
    iput p5, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->score:F

    .line 57
    return-void
.end method

.method public static parseJSON(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 20
    .parameter "jsonResponse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v13, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    :try_start_5
    invoke-static/range {p0 .. p0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_fb

    .line 99
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .local v9, json:Lorg/json/JSONObject;
    const-string v17, "Suggestions"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 101
    .local v15, suggArray:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1b
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_fb

    .line 102
    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 104
    .local v8, jsSuggesion:Lorg/json/JSONObject;
    new-instance v14, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    invoke-direct {v14}, Lcom/vlingo/client/typedrequests/provider/Suggestion;-><init>()V

    .line 106
    .local v14, sugg:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    const-string v17, "Pattern"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/vlingo/client/typedrequests/provider/Suggestion;->pattern:Ljava/lang/String;

    .line 108
    const-string v17, "NoCache"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_54

    .line 109
    const-string v17, "NoCache"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/vlingo/client/typedrequests/provider/Suggestion;->noCache:Z

    .line 112
    :cond_54
    const-string v17, "Score"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/vlingo/client/typedrequests/provider/Suggestion;->score:F

    .line 113
    const-string v17, "Icon"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/vlingo/client/typedrequests/provider/Suggestion;->parseType:Ljava/lang/String;

    .line 115
    const-string v17, "Bindings"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c9

    .line 116
    const-string v17, "Bindings"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 117
    .local v3, bindings:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_84
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_c9

    .line 118
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 119
    .local v12, param:Lorg/json/JSONObject;
    const-string v17, "Variable"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 120
    .local v11, name:Ljava/lang/String;
    const-string v17, "Value"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 121
    .local v16, value:Ljava/lang/String;
    iget-object v0, v14, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v17, "Display"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c6

    .line 124
    const-string v17, "Display"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, displayName:Ljava/lang/String;
    iget-object v0, v14, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variableDisplayNames:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v4           #displayName:Ljava/lang/String;
    :cond_c6
    add-int/lit8 v7, v7, 0x1

    goto :goto_84

    .line 131
    .end local v3           #bindings:Lorg/json/JSONArray;
    .end local v7           #j:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #param:Lorg/json/JSONObject;
    .end local v16           #value:Ljava/lang/String;
    :cond_c9
    const-string v17, "Actions"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e3

    .line 132
    const-string v17, "Actions"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 133
    .local v2, arr:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/vlingo/client/typedrequests/provider/Suggestion;->actionString:Ljava/lang/String;

    .line 138
    .end local v2           #arr:Lorg/json/JSONArray;
    :cond_e3
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e6
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e6} :catch_ea

    .line 101
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1b

    .line 141
    .end local v6           #i:I
    .end local v8           #jsSuggesion:Lorg/json/JSONObject;
    .end local v9           #json:Lorg/json/JSONObject;
    .end local v14           #sugg:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    .end local v15           #suggArray:Lorg/json/JSONArray;
    :catch_ea
    move-exception v5

    .line 142
    .local v5, ex:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 143
    .local v10, msg:Ljava/lang/String;
    if-eqz v10, :cond_fc

    .line 144
    const-string v17, "JSON"

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_f8
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    .end local v5           #ex:Lorg/json/JSONException;
    .end local v10           #msg:Ljava/lang/String;
    :cond_fb
    return-object v13

    .line 146
    .restart local v5       #ex:Lorg/json/JSONException;
    .restart local v10       #msg:Ljava/lang/String;
    :cond_fc
    const-string v17, "JSON"

    const-string v18, "exception with now message"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f8
.end method

.method private replaceVariables(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11
    .parameter "inputString"
    .parameter "useDisplayName"

    .prologue
    .line 251
    const-string v6, "${"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 252
    .local v2, hasVar:Z
    const-string v6, "%24%7B"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 253
    .local v1, hasEscapedVar:Z
    if-nez v2, :cond_10

    if-eqz v1, :cond_a1

    .line 254
    :cond_10
    iget-object v6, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 255
    .local v4, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 256
    .local v5, value:Ljava/lang/String;
    if-eqz p2, :cond_5d

    invoke-static {v5}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 257
    iget-object v6, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variableDisplayNames:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    .local v0, displayValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 262
    .end local v0           #displayValue:Ljava/lang/String;
    :cond_5d
    if-eqz v2, :cond_7c

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "${"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 265
    :cond_7c
    if-eqz v1, :cond_1a

    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%24%7B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%7D"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/vlingo/client/core/util/UrlUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1a

    .line 270
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_a1
    return-object p1
.end method


# virtual methods
.method public compareTo(Lcom/vlingo/client/typedrequests/provider/Suggestion;)I
    .registers 6
    .parameter "another"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 274
    iget v2, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->score:F

    iget v3, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->score:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1e

    .line 275
    invoke-virtual {p1}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->isFromCache()Z

    move-result v2

    iget-boolean v3, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->isFromCache:Z

    if-ne v2, v3, :cond_14

    .line 276
    const/4 v0, 0x0

    .line 288
    :cond_13
    :goto_13
    return v0

    .line 278
    :cond_14
    iget-boolean v2, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->isFromCache:Z

    if-eqz v2, :cond_1c

    iget-boolean v2, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->isFromCache:Z

    if-eqz v2, :cond_13

    :cond_1c
    move v0, v1

    .line 282
    goto :goto_13

    .line 286
    :cond_1e
    iget v2, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->score:F

    iget v3, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->score:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_13

    move v0, v1

    .line 287
    goto :goto_13
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->compareTo(Lcom/vlingo/client/typedrequests/provider/Suggestion;)I

    move-result v0

    return v0
.end method

.method public getActionString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->actionString:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->replaceVariables(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActions()Lcom/vlingo/client/core/vlservice/response/ActionList;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->actions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    return-object v0
.end method

.method public getAllVariables()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->displayText:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 216
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->pattern:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->replaceVariables(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->displayText:Ljava/lang/String;

    .line 218
    :cond_d
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getEditText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->editText:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 209
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->pattern:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->replaceVariables(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->editText:Ljava/lang/String;

    .line 211
    :cond_d
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->editText:Ljava/lang/String;

    return-object v0
.end method

.method public getParseType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->parseType:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()F
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->score:F

    return v0
.end method

.method public getSecondaryIcon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->secondaryIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->secondaryText:Ljava/lang/String;

    return-object v0
.end method

.method public getVariableValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "variableName"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasContactVariable()Z
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->pattern:Ljava/lang/String;

    const-string v1, "${contact}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hasSameVariableBindings(Lcom/vlingo/client/typedrequests/provider/Suggestion;)Z
    .registers 6
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    iget-object v2, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    if-nez v2, :cond_c

    move v1, v0

    .line 158
    :cond_b
    :goto_b
    return v1

    .line 155
    :cond_c
    iget-object v2, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    if-nez v2, :cond_b

    .line 156
    :cond_14
    iget-object v2, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    if-eqz v2, :cond_b

    .line 157
    :cond_1c
    iget-object v2, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 158
    iget-object v2, p1, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_3a

    :goto_38
    move v1, v0

    goto :goto_b

    :cond_3a
    move v0, v1

    goto :goto_38
.end method

.method public hasVariable()Z
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->pattern:Ljava/lang/String;

    const-string v1, "${"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isCachable()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->noCache:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isFromCache()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->isFromCache:Z

    return v0
.end method

.method public isSame(Lcom/vlingo/client/typedrequests/provider/Suggestion;)Z
    .registers 4
    .parameter "s"

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->getPattern()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 163
    invoke-virtual {p0, p1}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->hasSameVariableBindings(Lcom/vlingo/client/typedrequests/provider/Suggestion;)Z

    move-result v0

    .line 165
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setFromCache(Z)V
    .registers 2
    .parameter "isFromCache"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->isFromCache:Z

    .line 84
    return-void
.end method

.method public setParseType(Ljava/lang/String;)V
    .registers 2
    .parameter "parseType"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->parseType:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->pattern:Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->displayText:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setSecondaryIcon(Ljava/lang/String;)V
    .registers 2
    .parameter "secondaryIcon"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->secondaryIcon:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .registers 2
    .parameter "secondaryText"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->secondaryText:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setVariableValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "variableName"
    .parameter "variableValue"

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->displayText:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/Suggestion;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
