.class public final Lcom/google/common/base/BuildData;
.super Ljava/lang/Object;
.source "BuildData.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation


# static fields
.field public static final BUILD_CHANGELIST:Ljava/lang/String; = "Build changelist"

.field public static final BUILD_CHANGELIST_AS_INT:Ljava/lang/String; = "Build changelist as int"

.field public static final BUILD_CLIENT:Ljava/lang/String; = "Build client"

.field public static final BUILD_DEPOT_PATH:Ljava/lang/String; = "Build depot path"

.field public static final BUILD_LABEL:Ljava/lang/String; = "Build label"

.field public static final BUILD_TARGET:Ljava/lang/String; = "Build target"

.field public static final BUILD_TIMESTAMP:Ljava/lang/String; = "Build timestamp"

.field public static final BUILD_TIMESTAMP_AS_INT:Ljava/lang/String; = "Build timestamp as int"

.field public static final BUILD_TOOL:Ljava/lang/String; = "Build tool"

.field public static final BUILD_VERSION_MAP:Ljava/lang/String; = "Build version map"

.field public static final BUILT_AT:Ljava/lang/String; = "Built at"

.field public static final BUILT_ON:Ljava/lang/String; = "Built on"

.field public static final DEPENDENCIES:Ljava/lang/String; = "Dependencies"

.field public static final MPM_VERSION:Ljava/lang/String; = "Mpm version"

.field public static final UNKNOWN_BUILD_CHANGELIST:I = -0x1

.field public static final UNKNOWN_BUILD_VERSION_MAP:Ljava/lang/String; = "map 0 { // }"

.field private static properties:Ljava/util/Properties;

.field private static testData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile warned:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/google/common/base/BuildData;->testData:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuildChangelist()I
    .registers 3

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Lcom/google/common/base/BuildData;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Build changelist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    .line 198
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_10
    return v1

    .line 197
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_11
    move-exception v0

    .line 198
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    goto :goto_10
.end method

.method public static getBuildDepotPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 228
    invoke-static {}, Lcom/google/common/base/BuildData;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Build depot path"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    .local v0, depotPath:Ljava/lang/String;
    if-eqz v0, :cond_f

    .end local v0           #depotPath:Ljava/lang/String;
    :goto_e
    return-object v0

    .restart local v0       #depotPath:Ljava/lang/String;
    :cond_f
    const-string v0, "//depot/google3"

    goto :goto_e
.end method

.method public static getBuildVersionMap()Ljava/lang/String;
    .registers 3

    .prologue
    .line 216
    invoke-static {}, Lcom/google/common/base/BuildData;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Build version map"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    .local v0, versionMap:Ljava/lang/String;
    if-eqz v0, :cond_f

    .end local v0           #versionMap:Ljava/lang/String;
    :goto_e
    return-object v0

    .restart local v0       #versionMap:Ljava/lang/String;
    :cond_f
    const-string v0, "map 0 { // }"

    goto :goto_e
.end method

.method public static getData()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/google/common/base/BuildData;->tryGetData()Ljava/util/Map;

    move-result-object v0

    .line 157
    .local v0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_7

    .line 165
    .end local v0           #data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_6
    return-object v0

    .line 160
    .restart local v0       #data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    sget-boolean v2, Lcom/google/common/base/BuildData;->warned:Z

    if-nez v2, :cond_1d

    .line 161
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/common/base/BuildData;->warned:Z

    .line 162
    const-class v2, Lcom/google/common/base/BuildData;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 163
    .local v1, logger:Ljava/util/logging/Logger;
    const-string v2, "No build data available; consider building this application as a deploy jar"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 165
    .end local v1           #logger:Ljava/util/logging/Logger;
    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_6
.end method

.method public static getEntryClass()Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 137
    :try_start_1
    invoke-static {}, Lcom/google/common/base/BuildData;->getProperties()Ljava/util/Properties;

    move-result-object v3

    const-string v4, "main.class"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, mainClass:Ljava/lang/String;
    if-nez v1, :cond_e

    .line 143
    :goto_d
    return-object v2

    .line 141
    :cond_e
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v2

    goto :goto_d

    .line 142
    :catch_13
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/ClassNotFoundException;
    goto :goto_d
.end method

.method private static declared-synchronized getProperties()Ljava/util/Properties;
    .registers 4

    .prologue
    .line 86
    const-class v2, Lcom/google/common/base/BuildData;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/google/common/base/BuildData;->properties:Ljava/util/Properties;

    if-nez v1, :cond_1d

    .line 87
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lcom/google/common/base/BuildData;->properties:Ljava/util/Properties;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_21

    .line 89
    :try_start_e
    const-class v1, Lcom/google/common/base/BuildData;

    const-string v3, "/build-data.properties"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 90
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_1d

    .line 91
    sget-object v1, Lcom/google/common/base/BuildData;->properties:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_21
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1d} :catch_24

    .line 95
    :cond_1d
    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/google/common/base/BuildData;->properties:Ljava/util/Properties;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_21

    monitor-exit v2

    return-object v1

    .line 86
    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1

    .line 93
    :catch_24
    move-exception v1

    goto :goto_1d
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 278
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/google/common/base/BuildData;->write(Ljava/io/OutputStream;)V

    .line 279
    return-void
.end method

.method private static readDataFromProperties()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lcom/google/common/base/BuildData;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 105
    .local v1, props:Ljava/util/Properties;
    invoke-virtual {v1}, Ljava/util/Properties;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 106
    const/4 v0, 0x0

    .line 125
    :goto_b
    return-object v0

    .line 110
    :cond_c
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 111
    .local v0, buildData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Built on"

    const-string v3, "build.time"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v2, "Build timestamp"

    const-string v3, "build.timestamp"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v2, "Build timestamp as int"

    const-string v3, "build.timestamp.as.int"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v2, "Built at"

    const-string v3, "build.location"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v2, "Build target"

    const-string v3, "build.target"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v2, "Build changelist"

    const-string v3, "build.changelist"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v2, "Build changelist as int"

    const-string v3, "build.changelist.as.int"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "Build version map"

    const-string v3, "build.versionmap"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v2, "Build client"

    const-string v3, "build.client"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v2, "Build depot path"

    const-string v3, "build.depot.path"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v2, "Build label"

    const-string v3, "build.label"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v2, "Build tool"

    const-string v3, "build.tool"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v2, "Mpm version"

    const-string v3, "build.mpm.version"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "Dependencies"

    const-string v3, "build.dependencies"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b
.end method

.method public static setTestData(Ljava/util/Map;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, testData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/common/base/BuildData;->testData:Ljava/util/Map;

    .line 262
    return-void
.end method

.method public static tryGetData()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    sget-object v0, Lcom/google/common/base/BuildData;->testData:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 177
    sget-object v0, Lcom/google/common/base/BuildData;->testData:Ljava/util/Map;

    .line 179
    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lcom/google/common/base/BuildData;->readDataFromProperties()Ljava/util/Map;

    move-result-object v0

    goto :goto_6
.end method

.method public static unsetTestData()V
    .registers 1

    .prologue
    .line 268
    const/4 v0, 0x0

    sput-object v0, Lcom/google/common/base/BuildData;->testData:Ljava/util/Map;

    .line 269
    return-void
.end method

.method public static write(Ljava/io/OutputStream;)V
    .registers 9
    .parameter "output"

    .prologue
    .line 243
    invoke-static {}, Lcom/google/common/base/BuildData;->tryGetData()Ljava/util/Map;

    move-result-object v0

    .line 244
    .local v0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_5b

    .line 246
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 247
    .local v4, pw:Ljava/io/PrintWriter;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 248
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x2d

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, name:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_13

    .line 251
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #name:Ljava/lang/String;
    :cond_58
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 253
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #pw:Ljava/io/PrintWriter;
    :cond_5b
    return-void
.end method
