.class public Lmp;
.super Ljava/lang/Object;
.source "OperationUtils.java"


# direct methods
.method public static a(Lmi;Landroid/content/Context;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-static {p1}, LXH;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p0}, Lmi;->b()Z

    move-result v0

    if-nez v0, :cond_e

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_d
    return v0

    :cond_e
    invoke-interface {p0}, Lmi;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_d

    :cond_16
    const/4 v0, 0x2

    goto :goto_d
.end method

.method public static a(Lmi;Lmg;LkT;Landroid/content/Context;LkG;Lmo;)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-static {p0, p3}, Lmp;->a(Lmi;Landroid/content/Context;)I

    move-result v0

    .line 62
    if-eqz v0, :cond_2a

    .line 63
    const-string v1, "OperationUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lmg;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as operation queue is not operational."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_29
    return v0

    .line 68
    :cond_2a
    invoke-interface {p0, p1}, Lmi;->a(Lmg;)V

    .line 70
    invoke-interface {p0}, Lmi;->c()Z

    move-result v0

    if-nez v0, :cond_57

    .line 71
    const-string v0, "OperationUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lmg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as local saving failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x2

    goto :goto_29

    .line 75
    :cond_57
    invoke-static {p3}, LXH;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 76
    invoke-interface {p0, p4, p5}, Lmi;->a(LkG;Lmo;)V

    :goto_60
    move v0, v1

    .line 80
    goto :goto_29

    .line 78
    :cond_62
    const/4 v0, 0x0

    invoke-interface {p5, v1, v0}, Lmo;->a(ILjava/lang/Throwable;)V

    goto :goto_60
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, LcY;->write_access_denied:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, LcY;->operation_sync_error:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, LcY;->operation_sync_network_error:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, LcY;->operation_sync_error:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-object v0
.end method

.method public static a(LkG;Llu;Lorg/json/JSONObject;)Lmg;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    const-string v0, "operationName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v1

    .line 122
    if-nez v1, :cond_1a

    .line 123
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "No corresponding entry for operation resourceId"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1a
    const-string v2, "starred"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 126
    invoke-static {v1, p2}, Lmt;->a(LkT;Lorg/json/JSONObject;)Lmt;

    move-result-object v0

    .line 132
    :goto_26
    return-object v0

    .line 127
    :cond_27
    const-string v2, "rename"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 128
    invoke-static {v1, p2}, Lmf;->a(LkT;Lorg/json/JSONObject;)Lmf;

    move-result-object v0

    goto :goto_26

    .line 129
    :cond_34
    const-string v2, "viewed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 130
    invoke-static {v1, p2}, LlP;->a(LkT;Lorg/json/JSONObject;)LlP;

    move-result-object v0

    goto :goto_26

    .line 132
    :cond_41
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public static a(Landroid/content/Context;LXJ;)Lmo;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-static {p0}, Lmp;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 91
    new-instance v1, Lmq;

    invoke-direct {v1, v0, p1}, Lmq;-><init>(Ljava/util/Map;LXJ;)V

    return-object v1
.end method
