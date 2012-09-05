.class Ljava/util/prefs/FilePreferencesImpl;
.super Ljava/util/prefs/AbstractPreferences;
.source "FilePreferencesImpl.java"


# static fields
.field private static final PREFS_FILE_NAME:Ljava/lang/String; = "prefs.xml"

.field private static SYSTEM_HOME:Ljava/lang/String;

.field private static USER_HOME:Ljava/lang/String;


# instance fields
.field private dir:Ljava/io/File;

.field private path:Ljava/lang/String;

.field private prefs:Ljava/util/Properties;

.field private prefsFile:Ljava/io/File;

.field private removed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private updated:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.java/.userPrefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/util/prefs/FilePreferencesImpl;->USER_HOME:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.systemPrefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/util/prefs/FilePreferencesImpl;->SYSTEM_HOME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Ljava/util/prefs/FilePreferencesImpl;

    .end local p1
    iget-object v1, p1, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/util/prefs/FilePreferencesImpl;->initPrefs()V

    .line 87
    return-void
.end method

.method constructor <init>(Z)V
    .registers 4
    .parameter "userNode"

    .prologue
    .line 74
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    .line 75
    iput-boolean p1, p0, Ljava/util/prefs/AbstractPreferences;->userNode:Z

    .line 76
    if-eqz p1, :cond_20

    sget-object v0, Ljava/util/prefs/FilePreferencesImpl;->USER_HOME:Ljava/lang/String;

    :goto_1a
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/util/prefs/FilePreferencesImpl;->initPrefs()V

    .line 78
    return-void

    .line 76
    :cond_20
    sget-object v0, Ljava/util/prefs/FilePreferencesImpl;->SYSTEM_HOME:Ljava/lang/String;

    goto :goto_1a
.end method

.method static synthetic access$000(Ljava/util/prefs/FilePreferencesImpl;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    return-object v0
.end method

.method private initPrefs()V
    .registers 4

    .prologue
    .line 90
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    .line 91
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Ljava/util/prefs/AbstractPreferences;->newNode:Z

    .line 92
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "prefs.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    .line 93
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    invoke-static {v0}, Ljava/util/prefs/XMLParser;->readXmlPreferences(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    .line 94
    return-void

    .line 91
    :cond_3f
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method protected childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .registers 3
    .parameter "name"

    .prologue
    .line 112
    new-instance v0, Ljava/util/prefs/FilePreferencesImpl;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/FilePreferencesImpl;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 113
    .local v0, child:Ljava/util/prefs/FilePreferencesImpl;
    return-object v0
.end method

.method protected childrenNamesSpi()[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    new-instance v2, Ljava/util/prefs/FilePreferencesImpl$1;

    invoke-direct {v2, p0}, Ljava/util/prefs/FilePreferencesImpl$1;-><init>(Ljava/util/prefs/FilePreferencesImpl;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, names:[Ljava/lang/String;
    if-nez v0, :cond_3c

    .line 104
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get child names for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_3c
    return-object v0
.end method

.method protected flushSpi()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 143
    :goto_6
    return-void

    .line 124
    :cond_7
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    invoke-static {v4}, Ljava/util/prefs/XMLParser;->readXmlPreferences(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    .line 126
    .local v0, currentPrefs:Ljava/util/Properties;
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 127
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_13

    .line 140
    .end local v0           #currentPrefs:Ljava/util/Properties;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_21
    move-exception v1

    .line 141
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v4, v1}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 130
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #currentPrefs:Ljava/util/Properties;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_28
    :try_start_28
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 131
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 132
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 134
    .local v3, key:Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 136
    .end local v3           #key:Ljava/lang/Object;
    :cond_47
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 138
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    .line 139
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    iget-object v5, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-static {v4, v5}, Ljava/util/prefs/XMLParser;->writeXmlPreferences(Ljava/io/File;Ljava/util/Properties;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_55} :catch_21

    goto :goto_6
.end method

.method protected getSpi(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    if-nez v1, :cond_c

    .line 149
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    invoke-static {v1}, Ljava/util/prefs/XMLParser;->readXmlPreferences(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    .line 151
    :cond_c
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v1

    .line 154
    :goto_12
    return-object v1

    .line 152
    :catch_13
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_12
.end method

.method protected keysSpi()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 161
    .local v0, ks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method protected putSpi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 166
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method protected removeNodeSpi()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 173
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 174
    .local v0, removeSucceed:Z
    if-nez v0, :cond_2a

    .line 175
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_2a
    return-void
.end method

.method protected removeSpi(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 181
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method protected syncSpi()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->flushSpi()V

    .line 189
    return-void
.end method
