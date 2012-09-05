.class public Lcom/sprint/w/installer/ContentValuesFactory;
.super Ljava/lang/Object;
.source "ContentValuesFactory.java"


# static fields
.field static keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static log:Lcom/sprint/id/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    const-class v0, Lcom/sprint/w/installer/ContentValuesFactory;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->log:Lcom/sprint/id/logger/Logger;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    .line 26
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "packId"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "intent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "itemType"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "iconType"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "iconPackage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "iconResource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "container"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "screen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "cellX"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "cellY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "spanX"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "spanY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "appWidgetId"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "uri"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "displayMode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    const-string v1, "isShortcut"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "cv"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 109
    if-nez p2, :cond_6

    .line 110
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 129
    .end local p2
    :cond_5
    :goto_5
    return-void

    .line 111
    .restart local p2
    :cond_6
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    .line 112
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_5

    .line 113
    .restart local p2
    :cond_10
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_1a

    .line 114
    check-cast p2, Ljava/lang/Byte;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_5

    .line 115
    .restart local p2
    :cond_1a
    instance-of v0, p2, [B

    if-eqz v0, :cond_26

    .line 116
    check-cast p2, [B

    .end local p2
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_5

    .line 117
    .restart local p2
    :cond_26
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_30

    .line 118
    check-cast p2, Ljava/lang/Double;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_5

    .line 119
    .restart local p2
    :cond_30
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_3a

    .line 120
    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_5

    .line 121
    .restart local p2
    :cond_3a
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_44

    .line 122
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 123
    .restart local p2
    :cond_44
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4e

    .line 124
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_5

    .line 125
    .restart local p2
    :cond_4e
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_58

    .line 126
    check-cast p2, Ljava/lang/Short;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_5

    .line 127
    .restart local p2
    :cond_58
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 128
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static forDB(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 10
    .parameter "cv"

    .prologue
    .line 78
    if-eqz p0, :cond_ac

    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v3, ext:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v5, results:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v7, Lcom/sprint/w/installer/ContentValuesFactory;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "forDB: key: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " value: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 83
    sget-object v6, Lcom/sprint/w/installer/ContentValuesFactory;->keys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 84
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sprint/w/installer/ContentValuesFactory;->addValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_14

    .line 85
    :cond_66
    const-string v6, "_id"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 86
    sget-object v6, Lcom/sprint/w/installer/ContentValuesFactory;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Converting _id to l_id"

    invoke-virtual {v6, v7}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 87
    const-string v6, "l_id"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sprint/w/installer/ContentValuesFactory;->addValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_14

    .line 89
    :cond_83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 92
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8f
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a6

    .line 94
    :try_start_95
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-static {v3, v0}, Lcom/sprint/w/installer/ContentValuesFactory;->serializeToOutputStream(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 96
    const-string v6, "extras"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a6} :catch_a7

    .line 104
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #ext:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #results:Landroid/content/ContentValues;
    :cond_a6
    :goto_a6
    return-object v5

    .line 97
    .restart local v3       #ext:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #results:Landroid/content/ContentValues;
    :catch_a7
    move-exception v2

    .line 98
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a6

    .line 104
    .end local v2           #e1:Ljava/io/IOException;
    .end local v3           #ext:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #results:Landroid/content/ContentValues;
    :cond_ac
    const/4 v5, 0x0

    goto :goto_a6
.end method

.method public static forLauncher(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 13
    .parameter "cv"

    .prologue
    .line 48
    if-eqz p0, :cond_b0

    .line 49
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .local v8, results:Landroid/content/ContentValues;
    invoke-virtual {v8, p0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 52
    invoke-virtual {p0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v10, Lcom/sprint/w/installer/ContentValuesFactory;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "forLauncher: key: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " value: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 54
    const-string v9, "extras"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    .line 56
    :try_start_56
    const-string v9, "extras"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 57
    .local v6, obj:[B
    const-string v9, "extras"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 58
    new-instance v7, Ljava/io/ObjectInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    .local v7, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 60
    .local v5, m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 61
    .local v4, k:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v4, v9}, Lcom/sprint/w/installer/ContentValuesFactory;->addValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_8c} :catch_8d

    goto :goto_79

    .line 63
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #k:Ljava/lang/String;
    .end local v5           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #obj:[B
    .end local v7           #ois:Ljava/io/ObjectInputStream;
    :catch_8d
    move-exception v1

    .line 64
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    .line 66
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_92
    const-string v9, "l_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 67
    const-string v9, "l_id"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 68
    const-string v10, "_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_12

    .line 74
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8           #results:Landroid/content/ContentValues;
    :cond_b0
    const/4 v8, 0x0

    :cond_b1
    return-object v8
.end method

.method private static serializeToOutputStream(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 5
    .parameter "ser"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, oos:Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    .line 135
    .end local v0           #oos:Ljava/io/ObjectOutputStream;
    .local v1, oos:Ljava/io/ObjectOutputStream;
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_15

    .line 138
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 140
    return-void

    .line 138
    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    .restart local v0       #oos:Ljava/io/ObjectOutputStream;
    :catchall_10
    move-exception v2

    :goto_11
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    throw v2

    .end local v0           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #oos:Ljava/io/ObjectOutputStream;
    :catchall_15
    move-exception v2

    move-object v0, v1

    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    .restart local v0       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_11
.end method
