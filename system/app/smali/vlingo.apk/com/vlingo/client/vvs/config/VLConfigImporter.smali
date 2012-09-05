.class Lcom/vlingo/client/vvs/config/VLConfigImporter;
.super Ljava/lang/Object;
.source "VLConfigImporter.java"


# static fields
.field static configNameMappingTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/vlingo/client/core/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/vlingo/client/vvs/config/VLConfigImporter;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/vvs/config/VLConfigImporter;->log:Lcom/vlingo/client/core/logging/Logger;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/vlingo/client/vvs/config/VLConfigImporter;->configNameMappingTable:Ljava/util/Hashtable;

    .line 31
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static importSettings(Ljava/lang/String;Lcom/vlingo/client/core/vlservice/config/VLConfigParser;)V
    .registers 15
    .parameter "vlConfigXML"
    .parameter "configParser"

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->parseXML(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->getMinimumAppVersion()Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, minVersion:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->getSettings()Ljava/util/Hashtable;

    move-result-object v6

    .line 44
    .local v6, settings:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1d

    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/vlingo/client/core/util/StringUtils;->isVersionAtLeast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_85

    .line 45
    :cond_1d
    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 46
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->startBatchEdit()Landroid/content/SharedPreferences$Editor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_58

    move-result-object v1

    .line 48
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    :goto_25
    :try_start_25
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_78

    .line 49
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    .local v3, key:Ljava/lang/String;
    sget-object v9, Lcom/vlingo/client/vvs/config/VLConfigImporter;->configNameMappingTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 51
    sget-object v9, Lcom/vlingo/client/vvs/config/VLConfigImporter;->configNameMappingTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #key:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 52
    .restart local v3       #key:Ljava/lang/String;
    :cond_41
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 53
    .local v5, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 54
    .local v8, value:Ljava/lang/String;
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 57
    .local v7, type:Ljava/lang/String;
    invoke-static {v3, v8, v7, v1}, Lcom/vlingo/client/vvs/config/VLConfigImporter;->updateSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    :try_end_52
    .catchall {:try_start_25 .. :try_end_52} :catchall_53

    goto :goto_25

    .line 63
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #type:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :catchall_53
    move-exception v9

    :try_start_54
    invoke-static {v1}, Lcom/vlingo/client/settings/Settings;->commitBatchEdit(Landroid/content/SharedPreferences$Editor;)V

    throw v9
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_58} :catch_58

    .line 72
    .end local v0           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #minVersion:Ljava/lang/String;
    .end local v6           #settings:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_58
    move-exception v2

    .line 73
    .local v2, ex:Ljava/lang/Exception;
    sget-object v9, Lcom/vlingo/client/vvs/config/VLConfigImporter;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v10, "SET1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error importing settings: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v2           #ex:Ljava/lang/Exception;
    :goto_77
    return-void

    .line 63
    .restart local v0       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v4       #minVersion:Ljava/lang/String;
    .restart local v6       #settings:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_78
    :try_start_78
    invoke-static {v1}, Lcom/vlingo/client/settings/Settings;->commitBatchEdit(Landroid/content/SharedPreferences$Editor;)V

    .line 65
    const-string v9, "appstate.config_last_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/vlingo/client/settings/Settings;->setLong(Ljava/lang/String;J)V

    goto :goto_77

    .line 69
    .end local v0           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_85
    sget-object v9, Lcom/vlingo/client/vvs/config/VLConfigImporter;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v10, "SET5"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "not importing settings - app is not up to min version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_9f} :catch_58

    goto :goto_77
.end method

.method protected static updateSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .registers 11
    .parameter "key"
    .parameter "value"
    .parameter "type"
    .parameter "editor"

    .prologue
    .line 92
    const-string v3, "string"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 93
    invoke-static {p3, p0, p1}, Lcom/vlingo/client/settings/Settings;->setString(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_b
    :goto_b
    return-void

    .line 95
    :cond_c
    const-string v3, "boolean"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 96
    const-string v3, "true"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 97
    .local v0, boolVal:Z
    invoke-static {p3, p0, v0}, Lcom/vlingo/client/settings/Settings;->setBoolean(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    goto :goto_b

    .line 99
    .end local v0           #boolVal:Z
    :cond_1e
    const-string v3, "float"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 101
    :try_start_26
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 102
    .local v2, floatVal:F
    invoke-static {p3, p0, v2}, Lcom/vlingo/client/settings/Settings;->setFloat(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;F)V
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_b

    .line 104
    .end local v2           #floatVal:F
    :catch_2e
    move-exception v1

    .line 105
    .local v1, ex:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/vlingo/client/vvs/config/VLConfigImporter;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v4, "SET3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to parse long value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method
