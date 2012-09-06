.class public final enum Lcom/google/android/apps/googlevoice/AppProperties;
.super Ljava/lang/Enum;
.source "AppProperties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/googlevoice/AppProperties;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/googlevoice/AppProperties;

.field public static final enum ANDROID_TICKLER_V2:Lcom/google/android/apps/googlevoice/AppProperties;

.field public static final enum API_CHECKIN_ENABLED:Lcom/google/android/apps/googlevoice/AppProperties;

.field public static final enum GAIA_URL:Lcom/google/android/apps/googlevoice/AppProperties;

.field public static final enum LOCAL_CHECKIN_ENABLED:Lcom/google/android/apps/googlevoice/AppProperties;

.field public static final enum LOGIN_CHANNEL:Lcom/google/android/apps/googlevoice/AppProperties;

.field public static final enum MASF_API2_URI:Lcom/google/android/apps/googlevoice/AppProperties;

.field public static final enum MASF_GVP_URI:Lcom/google/android/apps/googlevoice/AppProperties;

.field public static final enum MASF_URL:Lcom/google/android/apps/googlevoice/AppProperties;

.field public static final enum WAKE_LOCK_LOGGING:Lcom/google/android/apps/googlevoice/AppProperties;


# instance fields
.field private final defaultValue:Ljava/lang/String;

.field private propertyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    new-instance v0, Lcom/google/android/apps/googlevoice/AppProperties;

    const-string v1, "GAIA_URL"

    const-string v2, "https://www.google.com/accounts/"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/googlevoice/AppProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->GAIA_URL:Lcom/google/android/apps/googlevoice/AppProperties;

    .line 25
    new-instance v0, Lcom/google/android/apps/googlevoice/AppProperties;

    const-string v1, "LOGIN_CHANNEL"

    sget-object v2, Lcom/google/android/apps/googlevoice/LoginChannel;->DEFAULT:Lcom/google/android/apps/googlevoice/LoginChannel;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/LoginChannel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/googlevoice/AppProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->LOGIN_CHANNEL:Lcom/google/android/apps/googlevoice/AppProperties;

    .line 26
    new-instance v0, Lcom/google/android/apps/googlevoice/AppProperties;

    const-string v1, "MASF_URL"

    const-string v2, "https://www.google.com/m/appreq/gv"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/apps/googlevoice/AppProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->MASF_URL:Lcom/google/android/apps/googlevoice/AppProperties;

    .line 27
    new-instance v0, Lcom/google/android/apps/googlevoice/AppProperties;

    const-string v1, "MASF_API2_URI"

    const-string v2, "g:gv2"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/apps/googlevoice/AppProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->MASF_API2_URI:Lcom/google/android/apps/googlevoice/AppProperties;

    .line 28
    new-instance v0, Lcom/google/android/apps/googlevoice/AppProperties;

    const-string v1, "MASF_GVP_URI"

    const-string v2, "g:gvp"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/apps/googlevoice/AppProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->MASF_GVP_URI:Lcom/google/android/apps/googlevoice/AppProperties;

    .line 29
    new-instance v0, Lcom/google/android/apps/googlevoice/AppProperties;

    const-string v1, "API_CHECKIN_ENABLED"

    const/4 v2, 0x5

    const-string v3, "true"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/AppProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->API_CHECKIN_ENABLED:Lcom/google/android/apps/googlevoice/AppProperties;

    .line 30
    new-instance v0, Lcom/google/android/apps/googlevoice/AppProperties;

    const-string v1, "LOCAL_CHECKIN_ENABLED"

    const/4 v2, 0x6

    const-string v3, "true"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/AppProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->LOCAL_CHECKIN_ENABLED:Lcom/google/android/apps/googlevoice/AppProperties;

    .line 31
    new-instance v0, Lcom/google/android/apps/googlevoice/AppProperties;

    const-string v1, "WAKE_LOCK_LOGGING"

    const/4 v2, 0x7

    const-string v3, "false"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/AppProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->WAKE_LOCK_LOGGING:Lcom/google/android/apps/googlevoice/AppProperties;

    .line 32
    new-instance v0, Lcom/google/android/apps/googlevoice/AppProperties;

    const-string v1, "ANDROID_TICKLER_V2"

    const/16 v2, 0x8

    const-string v3, "true"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/AppProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->ANDROID_TICKLER_V2:Lcom/google/android/apps/googlevoice/AppProperties;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/AppProperties;

    sget-object v1, Lcom/google/android/apps/googlevoice/AppProperties;->GAIA_URL:Lcom/google/android/apps/googlevoice/AppProperties;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/googlevoice/AppProperties;->LOGIN_CHANNEL:Lcom/google/android/apps/googlevoice/AppProperties;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/googlevoice/AppProperties;->MASF_URL:Lcom/google/android/apps/googlevoice/AppProperties;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/googlevoice/AppProperties;->MASF_API2_URI:Lcom/google/android/apps/googlevoice/AppProperties;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/apps/googlevoice/AppProperties;->MASF_GVP_URI:Lcom/google/android/apps/googlevoice/AppProperties;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/googlevoice/AppProperties;->API_CHECKIN_ENABLED:Lcom/google/android/apps/googlevoice/AppProperties;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/googlevoice/AppProperties;->LOCAL_CHECKIN_ENABLED:Lcom/google/android/apps/googlevoice/AppProperties;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/googlevoice/AppProperties;->WAKE_LOCK_LOGGING:Lcom/google/android/apps/googlevoice/AppProperties;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/googlevoice/AppProperties;->ANDROID_TICKLER_V2:Lcom/google/android/apps/googlevoice/AppProperties;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->$VALUES:[Lcom/google/android/apps/googlevoice/AppProperties;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/googlevoice/AppProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter "defaultValue"
    .parameter "propertyName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/AppProperties;->defaultValue:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/AppProperties;->propertyName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private static debugPrintProperties()V
    .registers 6

    .prologue
    .line 125
    invoke-static {}, Lcom/google/android/apps/googlevoice/AppProperties;->values()[Lcom/google/android/apps/googlevoice/AppProperties;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/AppProperties;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_33

    aget-object v3, v0, v1

    .line 126
    .local v3, value:Lcom/google/android/apps/googlevoice/AppProperties;
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_30

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/AppProperties;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/AppProperties;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 125
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 130
    .end local v3           #value:Lcom/google/android/apps/googlevoice/AppProperties;
    :cond_33
    return-void
.end method

.method private static getPropertiesFromFile(Lcom/google/android/apps/googlevoice/FileFactory;Lcom/google/android/apps/googlevoice/FileFactory$Storage;Ljava/lang/String;)Ljava/util/Properties;
    .registers 7
    .parameter "fileFactory"
    .parameter "storage"
    .parameter "fileName"

    .prologue
    .line 108
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 109
    .local v0, appProp:Ljava/util/Properties;
    invoke-interface {p0, p2, p1}, Lcom/google/android/apps/googlevoice/FileFactory;->createFile(Ljava/lang/String;Lcom/google/android/apps/googlevoice/FileFactory$Storage;)Lcom/google/android/apps/googlevoice/proxy/FileProxy;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/proxy/FileProxy;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 110
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_36

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/FileFactory$Storage;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  app properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_36} :catch_37
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_36} :catch_5c

    .line 121
    .end local v0           #appProp:Ljava/util/Properties;
    :cond_36
    :goto_36
    return-object v0

    .line 114
    :catch_37
    move-exception v1

    .line 115
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_5a

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/FileFactory$Storage;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " properties file not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 121
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_5a
    :goto_5a
    const/4 v0, 0x0

    goto :goto_36

    .line 118
    :catch_5c
    move-exception v1

    .line 119
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/FileFactory$Storage;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " properties file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a
.end method

.method public static loadAppSystemProperties(Lcom/google/android/apps/googlevoice/FileFactory;Ljava/lang/String;)V
    .registers 5
    .parameter "fileFactory"
    .parameter "fileName"

    .prologue
    .line 73
    sget-object v2, Lcom/google/android/apps/googlevoice/FileFactory$Storage;->EXTERNAL:Lcom/google/android/apps/googlevoice/FileFactory$Storage;

    invoke-static {p0, v2, p1}, Lcom/google/android/apps/googlevoice/AppProperties;->getPropertiesFromFile(Lcom/google/android/apps/googlevoice/FileFactory;Lcom/google/android/apps/googlevoice/FileFactory$Storage;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 75
    .local v0, externalProperties:Ljava/util/Properties;
    sget-object v2, Lcom/google/android/apps/googlevoice/FileFactory$Storage;->INTERNAL:Lcom/google/android/apps/googlevoice/FileFactory$Storage;

    invoke-static {p0, v2, p1}, Lcom/google/android/apps/googlevoice/AppProperties;->getPropertiesFromFile(Lcom/google/android/apps/googlevoice/FileFactory;Lcom/google/android/apps/googlevoice/FileFactory$Storage;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    .line 79
    .local v1, internalProperties:Ljava/util/Properties;
    if-eqz v0, :cond_11

    .line 80
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/AppProperties;->setProperties(Ljava/util/Properties;)V

    .line 82
    :cond_11
    if-eqz v1, :cond_16

    .line 83
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/AppProperties;->setProperties(Ljava/util/Properties;)V

    .line 85
    :cond_16
    invoke-static {}, Lcom/google/android/apps/googlevoice/AppProperties;->debugPrintProperties()V

    .line 86
    return-void
.end method

.method public static setForTest(Lcom/google/android/apps/googlevoice/AppProperties;Ljava/lang/String;)V
    .registers 3
    .parameter "prop"
    .parameter "value"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AppProperties;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    return-void
.end method

.method private static setProperties(Ljava/util/Properties;)V
    .registers 5
    .parameter "prop"

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, key:Ljava/lang/Object;
    move-object v2, v1

    .line 100
    check-cast v2, Ljava/lang/String;

    .line 101
    .local v2, keyStr:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_8

    .line 103
    .end local v1           #key:Ljava/lang/Object;
    .end local v2           #keyStr:Ljava/lang/String;
    :cond_1d
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/AppProperties;
    .registers 2
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/google/android/apps/googlevoice/AppProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/AppProperties;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/googlevoice/AppProperties;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->$VALUES:[Lcom/google/android/apps/googlevoice/AppProperties;

    invoke-virtual {v0}, [Lcom/google/android/apps/googlevoice/AppProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/AppProperties;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AppProperties;->propertyName:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AppProperties;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AppProperties;->propertyName:Ljava/lang/String;

    .line 61
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AppProperties;->propertyName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AppProperties;->defaultValue:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefault()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AppProperties;->defaultValue:Ljava/lang/String;

    return-object v0
.end method
