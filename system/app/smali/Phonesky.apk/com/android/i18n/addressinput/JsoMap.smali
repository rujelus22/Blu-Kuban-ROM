.class Lcom/android/i18n/addressinput/JsoMap;
.super Lorg/json/JSONObject;
.source "JsoMap.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .registers 3
    .parameter "copyFrom"
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Lorg/json/JSONTokener;)V
    .registers 2
    .parameter "readFrom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 61
    return-void
.end method

.method static buildJsoMap(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;
    .registers 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/android/i18n/addressinput/JsoMap;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/JsoMap;-><init>(Lorg/json/JSONTokener;)V

    return-object v0
.end method

.method static createEmptyJsoMap()Lcom/android/i18n/addressinput/JsoMap;
    .registers 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/i18n/addressinput/JsoMap;

    invoke-direct {v0}, Lcom/android/i18n/addressinput/JsoMap;-><init>()V

    return-object v0
.end method

.method private getObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method containsKey(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 176
    invoke-super {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/i18n/addressinput/JsoMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"

    .prologue
    .line 86
    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    .local v1, o:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 88
    check-cast v1, Ljava/lang/String;

    .line 95
    .end local v1           #o:Ljava/lang/Object;
    :goto_a
    return-object v1

    .line 89
    .restart local v1       #o:Ljava/lang/Object;
    :cond_b
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_18

    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 94
    .end local v1           #o:Ljava/lang/Object;
    :catch_15
    move-exception v0

    .line 95
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_a

    .line 92
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #o:Ljava/lang/Object;
    :cond_18
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    throw v2
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1e} :catch_15
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 6
    .parameter "key"

    .prologue
    .line 118
    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 119
    .local v1, o:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_f

    .line 120
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 125
    :goto_e
    return v2

    .line 122
    .restart local v1       #o:Ljava/lang/Object;
    :cond_f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Something other than an int was returned"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_17

    .line 124
    .end local v1           #o:Ljava/lang/Object;
    :catch_17
    move-exception v0

    .line 125
    .local v0, e:Lorg/json/JSONException;
    const/4 v2, -0x1

    goto :goto_e
.end method

.method getKeys()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 135
    invoke-super {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method getObj(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;
    .registers 11
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 151
    .local v5, o:Ljava/lang/Object;
    instance-of v7, v5, Lorg/json/JSONObject;

    if-eqz v7, :cond_3d

    .line 152
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    .line 153
    .local v6, value:Lorg/json/JSONObject;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v3, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 164
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #o:Ljava/lang/Object;
    .end local v6           #value:Lorg/json/JSONObject;
    :catch_27
    move-exception v1

    .line 165
    .local v1, e:Lorg/json/JSONException;
    const/4 v7, 0x0

    .end local v1           #e:Lorg/json/JSONException;
    :goto_29
    return-object v7

    .line 157
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #o:Ljava/lang/Object;
    .restart local v6       #value:Lorg/json/JSONObject;
    :cond_2a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 158
    .local v4, names:[Ljava/lang/String;
    new-instance v8, Lcom/android/i18n/addressinput/JsoMap;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-direct {v8, v6, v7}, Lcom/android/i18n/addressinput/JsoMap;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_29

    .line 159
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #names:[Ljava/lang/String;
    .end local v6           #value:Lorg/json/JSONObject;
    :cond_3d
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_47

    .line 160
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 162
    :cond_47
    new-instance v7, Ljava/lang/ClassCastException;

    invoke-direct {v7}, Ljava/lang/ClassCastException;-><init>()V

    throw v7
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4d} :catch_27
.end method

.method mergeData(Lcom/android/i18n/addressinput/JsoMap;)V
    .registers 7
    .parameter "obj"

    .prologue
    .line 185
    if-nez p1, :cond_3

    .line 208
    :cond_2
    return-void

    .line 189
    :cond_3
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/JsoMap;->names()Lorg/json/JSONArray;

    move-result-object v3

    .line 190
    .local v3, names:Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    .line 194
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 196
    :try_start_10
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_13} :catch_2b

    move-result-object v2

    .line 198
    .local v2, name:Ljava/lang/String;
    :try_start_14
    invoke-super {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 199
    invoke-direct {p1, v2}, Lcom/android/i18n/addressinput/JsoMap;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-super {p0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_21} :catch_24

    .line 194
    .end local v2           #name:Ljava/lang/String;
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 201
    .restart local v2       #name:Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 202
    .local v0, e:Lorg/json/JSONException;
    :try_start_25
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2b} :catch_2b

    .line 204
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #name:Ljava/lang/String;
    :catch_2b
    move-exception v4

    goto :goto_21
.end method

.method putObj(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 246
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_4

    .line 250
    return-void

    .line 247
    :catch_4
    move-exception v0

    .line 248
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
