.class public Lcom/google/android/apps/books/util/JSUtils;
.super Ljava/lang/Object;
.source "JSUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs buildMethodInvoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 10
    .parameter "method"
    .parameter "args"

    .prologue
    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .local v5, out:Ljava/lang/StringBuilder;
    const-string v6, "javascript:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/Object;
    :try_start_14
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_16
    if-ge v3, v4, :cond_64

    aget-object v0, v1, v3

    .line 30
    .local v0, arg:Ljava/lang/Object;
    instance-of v6, v0, Lorg/json/JSONArray;

    if-nez v6, :cond_22

    instance-of v6, v0, Lorg/json/JSONObject;

    if-eqz v6, :cond_31

    .line 31
    :cond_22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .end local v0           #arg:Ljava/lang/Object;
    :goto_29
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 32
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_31
    instance-of v6, v0, Ljava/lang/Boolean;

    if-eqz v6, :cond_42

    .line 33
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_38} :catch_39

    goto :goto_29

    .line 44
    .end local v0           #arg:Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_39
    move-exception v2

    .line 45
    .local v2, e:Lorg/json/JSONException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "problem escaping arguments"

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 34
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v0       #arg:Ljava/lang/Object;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_42
    :try_start_42
    instance-of v6, v0, Ljava/lang/Number;

    if-eqz v6, :cond_50

    .line 35
    check-cast v0, Ljava/lang/Number;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 36
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_50
    if-nez v0, :cond_58

    .line 37
    const-string v6, "undefined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 39
    :cond_58
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_63} :catch_39

    goto :goto_29

    .line 49
    .end local v0           #arg:Ljava/lang/Object;
    :cond_64
    if-eqz p1, :cond_72

    array-length v6, p1

    if-lez v6, :cond_72

    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 53
    :cond_72
    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
