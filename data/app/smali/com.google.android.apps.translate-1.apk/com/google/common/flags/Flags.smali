.class public Lcom/google/common/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flags/Flags$FlagInfoImpl;,
        Lcom/google/common/flags/Flags$FlagMapHolder;,
        Lcom/google/common/flags/Flags$ParseState;
    }
.end annotation


# static fields
.field private static final BLANK_LINE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final CLASS_LOADER:Ljava/lang/String; = "com.google.common.flags.classLoader"

.field private static final COMMENT_LINE_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final DISABLE_CHECKING:Ljava/lang/String; = "com.google.common.flags.disableStateChecking"

.field private static final DISABLE_EXIT:Ljava/lang/String; = "com.google.common.flags.noExit"

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final FLAG_FILE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final FLAG_NAME_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final FLAG_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final FLAG_RESOURCE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HELPSHORT_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HELP_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final UNDEF_OK_FLAG_NAME:Ljava/lang/String; = "undefok"

.field private static final XML_HELP_PATTERN:Ljava/util/regex/Pattern;

.field private static final cachedMainClassName:Ljava/lang/String;

.field private static final completionHooks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static flagClassLoader:Ljava/lang/ClassLoader;

.field private static final logger:Ljava/util/logging/Logger;

.field private static outputStream:Ljava/io/PrintStream;

.field private static parseStackTrace:Ljava/lang/Throwable;

.field private static parseState:Lcom/google/common/flags/Flags$ParseState;

.field private static final preferredClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static undefOkSupported:Z

.field private static usagePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 75
    const-class v4, Lcom/google/common/flags/Flags;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    sput-object v4, Lcom/google/common/flags/Flags;->logger:Ljava/util/logging/Logger;

    .line 86
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v4, Lcom/google/common/flags/Flags;->outputStream:Ljava/io/PrintStream;

    .line 113
    new-array v4, v5, [Ljava/lang/String;

    sput-object v4, Lcom/google/common/flags/Flags;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 123
    sget-object v4, Lcom/google/common/flags/Flags$ParseState;->NOT_STARTED:Lcom/google/common/flags/Flags$ParseState;

    sput-object v4, Lcom/google/common/flags/Flags;->parseState:Lcom/google/common/flags/Flags$ParseState;

    .line 135
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/google/common/flags/Flags;->completionHooks:Ljava/util/Collection;

    .line 143
    sput-object v6, Lcom/google/common/flags/Flags;->usagePrefix:Ljava/lang/String;

    .line 148
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lcom/google/common/flags/Flags;->preferredClasses:Ljava/util/Set;

    .line 154
    sput-object v6, Lcom/google/common/flags/Flags;->flagClassLoader:Ljava/lang/ClassLoader;

    .line 166
    sput-boolean v5, Lcom/google/common/flags/Flags;->undefOkSupported:Z

    .line 182
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/flags/Flags;->getMainClassNameFromStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, mainClassName:Ljava/lang/String;
    if-nez v2, :cond_5a

    .line 188
    :try_start_3c
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    .line 189
    .local v3, stack:[Ljava/lang/StackTraceElement;
    invoke-static {v3}, Lcom/google/common/flags/Flags;->getMainClassNameFromStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    :try_end_57
    .catch Ljava/security/AccessControlException; {:try_start_3c .. :try_end_57} :catch_a7

    move-result-object v2

    .line 190
    if-eqz v2, :cond_48

    .line 199
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #stack:[Ljava/lang/StackTraceElement;
    :cond_5a
    :goto_5a
    sput-object v2, Lcom/google/common/flags/Flags;->cachedMainClassName:Ljava/lang/String;

    .line 671
    const-string v4, "-+help"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lcom/google/common/flags/Flags;->HELP_PATTERN:Ljava/util/regex/Pattern;

    .line 674
    const-string v4, "-+helpshort"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lcom/google/common/flags/Flags;->HELPSHORT_PATTERN:Ljava/util/regex/Pattern;

    .line 677
    const-string v4, "-+helpxml"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lcom/google/common/flags/Flags;->XML_HELP_PATTERN:Ljava/util/regex/Pattern;

    .line 707
    const-string v4, "-+([^=]*)(?:=(.*))?"

    const/16 v5, 0x28

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lcom/google/common/flags/Flags;->FLAG_PATTERN:Ljava/util/regex/Pattern;

    .line 845
    const-string v4, "-+flagfile=(.+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lcom/google/common/flags/Flags;->FLAG_FILE_PATTERN:Ljava/util/regex/Pattern;

    .line 849
    const-string v4, "-+flagresource=(.+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lcom/google/common/flags/Flags;->FLAG_RESOURCE_PATTERN:Ljava/util/regex/Pattern;

    .line 937
    const-string v4, "\\s*"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lcom/google/common/flags/Flags;->BLANK_LINE_PATTERN:Ljava/util/regex/Pattern;

    .line 939
    const-string v4, "\\s*#.*"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lcom/google/common/flags/Flags;->COMMENT_LINE_PATTERN:Ljava/util/regex/Pattern;

    .line 1371
    const-string v4, "\\w[_\\w]*"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lcom/google/common/flags/Flags;->FLAG_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void

    .line 194
    :catch_a7
    move-exception v0

    .line 196
    .local v0, e:Ljava/security/AccessControlException;
    sget-object v4, Lcom/google/common/flags/Flags;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Unable to calculate main class name"

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    .prologue
    .line 71
    invoke-static {}, Lcom/google/common/flags/Flags;->loadFlagManifests()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static addPreferredClass(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1501
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/flags/Flags;->addPreferredClass(Ljava/lang/String;)V

    .line 1502
    return-void
.end method

.method public static addPreferredClass(Ljava/lang/String;)V
    .registers 2
    .parameter "className"

    .prologue
    .line 1491
    sget-object v0, Lcom/google/common/flags/Flags;->preferredClasses:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1492
    return-void
.end method

.method public static allFlags()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/flags/FlagInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1790
    invoke-static {}, Lcom/google/common/flags/Flags;->allFlagsInternal()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static allFlagsInternal()Ljava/util/Collection;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/flags/Flags$FlagInfoImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1753
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1758
    .local v0, allNames:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/common/flags/FlagDescription;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/google/common/flags/Flags;->expandedFlagMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1759
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1760
    .local v8, key:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 1761
    .local v5, flags:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    .line 1762
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/flags/FlagDescription;

    .line 1763
    .local v1, desc:Lcom/google/common/flags/FlagDescription;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 1764
    .local v4, flagNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v4, :cond_4a

    .line 1765
    new-instance v4, Ljava/util/TreeSet;

    .end local v4           #flagNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 1766
    .restart local v4       #flagNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    :cond_4a
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1772
    .end local v1           #desc:Lcom/google/common/flags/FlagDescription;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;>;"
    .end local v4           #flagNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #flags:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    .end local v8           #key:Ljava/lang/String;
    :cond_4e
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    .line 1774
    .local v10, result:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/Flags$FlagInfoImpl;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_81

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1775
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/common/flags/FlagDescription;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/flags/FlagDescription;

    .line 1776
    .restart local v1       #desc:Lcom/google/common/flags/FlagDescription;
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1777
    .local v9, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Lcom/google/common/flags/Flags$FlagInfoImpl;

    invoke-direct {v7, v9, v1}, Lcom/google/common/flags/Flags$FlagInfoImpl;-><init>(Ljava/util/List;Lcom/google/common/flags/FlagDescription;)V

    .line 1778
    .local v7, info:Lcom/google/common/flags/Flags$FlagInfoImpl;
    invoke-interface {v10, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 1780
    .end local v1           #desc:Lcom/google/common/flags/FlagDescription;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/common/flags/FlagDescription;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v7           #info:Lcom/google/common/flags/Flags$FlagInfoImpl;
    .end local v9           #names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_81
    return-object v10
.end method

.method private static appendExternalFlags(Ljava/io/BufferedReader;Ljava/util/List;)V
    .registers 5
    .parameter "reader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagSyntaxException;,
            Lcom/google/common/flags/ExternalFlagsLoadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 956
    .local p1, collatedArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 957
    .local v1, line:Ljava/lang/String;
    :goto_4
    if-eqz v1, :cond_62

    .line 958
    sget-object v2, Lcom/google/common/flags/Flags;->FLAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 959
    sget-object v2, Lcom/google/common/flags/Flags;->FLAG_FILE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2a

    sget-object v2, Lcom/google/common/flags/Flags;->FLAG_RESOURCE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 961
    :cond_2a
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 962
    .local v0, fileFlag:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/flags/Flags;->loadExternalFlags([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 970
    .end local v0           #fileFlag:[Ljava/lang/String;
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 964
    :cond_40
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 966
    :cond_44
    sget-object v2, Lcom/google/common/flags/Flags;->BLANK_LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_3b

    sget-object v2, Lcom/google/common/flags/Flags;->COMMENT_LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 968
    new-instance v2, Lcom/google/common/flags/InvalidFlagSyntaxException;

    invoke-direct {v2, v1}, Lcom/google/common/flags/InvalidFlagSyntaxException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 972
    :cond_62
    return-void
.end method

.method private static appendExternalFlagsFromFile(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter "file"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagSyntaxException;,
            Ljava/io/IOException;,
            Lcom/google/common/flags/ExternalFlagsLoadException;
        }
    .end annotation

    .prologue
    .line 924
    .local p0, collatedArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 926
    .local v1, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_14

    .line 927
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_b
    invoke-static {v2, p0}, Lcom/google/common/flags/Flags;->appendExternalFlags(Ljava/io/BufferedReader;Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_22
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_e} :catch_25

    .line 931
    if-eqz v2, :cond_13

    .line 932
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 935
    :cond_13
    return-void

    .line 928
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catch_14
    move-exception v0

    .line 929
    .local v0, exc:Ljava/io/FileNotFoundException;
    :goto_15
    :try_start_15
    new-instance v3, Lcom/google/common/flags/ExternalFlagsLoadException;

    invoke-direct {v3, p2}, Lcom/google/common/flags/ExternalFlagsLoadException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1b

    .line 931
    .end local v0           #exc:Ljava/io/FileNotFoundException;
    :catchall_1b
    move-exception v3

    :goto_1c
    if-eqz v1, :cond_21

    .line 932
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_21
    throw v3

    .line 931
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_22
    move-exception v3

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_1c

    .line 928
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_25
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_15
.end method

.method private static appendExternalFlagsFromResource(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter "resource"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/ExternalFlagsLoadException;,
            Lcom/google/common/flags/InvalidFlagSyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 900
    .local p0, collatedArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-class v3, Lcom/google/common/flags/Flags;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 902
    .local v2, resourceStream:Ljava/io/InputStream;
    if-nez v2, :cond_16

    .line 905
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 907
    .local v0, contextClassLoader:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_16

    .line 908
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 911
    .end local v0           #contextClassLoader:Ljava/lang/ClassLoader;
    :cond_16
    if-nez v2, :cond_1e

    .line 912
    new-instance v3, Lcom/google/common/flags/ExternalFlagsLoadException;

    invoke-direct {v3, p2}, Lcom/google/common/flags/ExternalFlagsLoadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 915
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 916
    .local v1, reader:Ljava/io/BufferedReader;
    invoke-static {v1, p0}, Lcom/google/common/flags/Flags;->appendExternalFlags(Ljava/io/BufferedReader;Ljava/util/List;)V
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_2f

    .line 918
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 920
    return-void

    .line 918
    .end local v1           #reader:Ljava/io/BufferedReader;
    :catchall_2f
    move-exception v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v3
.end method

.method static canonicalFlagMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/FlagDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    sget-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->canonicalFlagMap:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 236
    invoke-static {}, Lcom/google/common/flags/Flags;->initMaps()V

    .line 238
    :cond_7
    sget-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->canonicalFlagMap:Ljava/util/Map;

    return-object v0
.end method

.method public static clearFlagData()V
    .registers 2

    .prologue
    .line 331
    sget-object v0, Lcom/google/common/flags/Flags;->parseState:Lcom/google/common/flags/Flags$ParseState;

    sget-object v1, Lcom/google/common/flags/Flags$ParseState;->DONE:Lcom/google/common/flags/Flags$ParseState;

    if-eq v0, v1, :cond_e

    .line 332
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flag parsing must be completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_e
    sget-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->manuallyRegisteredFlags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 335
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->canonicalFlagMap:Ljava/util/Map;

    .line 336
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->expandedFlagMap:Ljava/util/Map;

    .line 337
    const/4 v0, 0x0

    sput-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->whitelistedPrefixes:Ljava/util/Collection;

    .line 338
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->longNameMap:Ljava/util/Map;

    .line 339
    return-void
.end method

.method static clearFlagMapsForTesting()V
    .registers 1

    .prologue
    .line 308
    invoke-static {}, Lcom/google/common/flags/Flags;->reallyClearFlagMapsForTesting()V

    .line 309
    invoke-static {}, Lcom/google/common/flags/Flags;->loadFlagManifests()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->longNameMap:Ljava/util/Map;

    .line 310
    return-void
.end method

.method static createCanonicalFlagMap(Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/flags/FlagDescription;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/flags/FlagDescription;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/FlagDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, flags:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/common/flags/FlagDescription;>;"
    .local p1, expandedFlagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 535
    .local v0, canonicalMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/flags/FlagDescription;

    .line 536
    .local v1, flag:Lcom/google/common/flags/FlagDescription;
    invoke-static {v1, p1}, Lcom/google/common/flags/Flags;->getBestFlagName(Lcom/google/common/flags/FlagDescription;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 539
    .end local v1           #flag:Lcom/google/common/flags/FlagDescription;
    :cond_1d
    return-object v0
.end method

.method public static disableStateCheckingForTest()V
    .registers 3

    .prologue
    .line 1567
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 1568
    .local v0, props:Ljava/util/Properties;
    const-string v1, "com.google.common.flags.disableStateChecking"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1569
    return-void
.end method

.method public static disableUndefOkSupport()V
    .registers 1

    .prologue
    .line 1840
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/common/flags/Flags;->undefOkSupported:Z

    .line 1841
    return-void
.end method

.method public static enableStateCheckingForTest()V
    .registers 3

    .prologue
    .line 1577
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 1578
    .local v0, props:Ljava/util/Properties;
    const-string v1, "com.google.common.flags.disableStateChecking"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1579
    return-void
.end method

.method public static enableUndefOkSupport()V
    .registers 1

    .prologue
    .line 1833
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/common/flags/Flags;->undefOkSupported:Z

    .line 1834
    return-void
.end method

.method private static exitUnlessDisabled(I)V
    .registers 2
    .parameter "status"

    .prologue
    .line 701
    const-string v0, "com.google.common.flags.noExit"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 702
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    .line 704
    :cond_b
    return-void
.end method

.method static expandFlagMap(Ljava/util/Collection;)Ljava/util/Map;
    .registers 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/flags/FlagDescription;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/flags/FlagDescription;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p0, flags:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/common/flags/FlagDescription;>;"
    const/4 v14, 0x1

    .line 494
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 497
    .local v1, allNames:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/flags/FlagDescription;

    .line 498
    .local v5, flag:Lcom/google/common/flags/FlagDescription;
    invoke-static {v5}, Lcom/google/common/flags/Flags;->getAllNamesForFlag(Lcom/google/common/flags/FlagDescription;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 499
    .local v0, alias:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 500
    .local v4, dups:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    if-nez v4, :cond_3a

    .line 501
    new-instance v4, Ljava/util/HashSet;

    .end local v4           #dups:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .restart local v4       #dups:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_3a
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 508
    .end local v0           #alias:Ljava/lang/String;
    .end local v4           #dups:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    .end local v5           #flag:Lcom/google/common/flags/FlagDescription;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_3e
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_46
    :goto_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 509
    .local v8, key:Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 510
    .restart local v4       #dups:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v9

    if-le v9, v14, :cond_46

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .local v2, b:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_67
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_80

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/flags/FlagDescription;

    .line 513
    .local v3, d:Lcom/google/common/flags/FlagDescription;
    invoke-virtual {v3}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const/16 v9, 0x2c

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 516
    .end local v3           #d:Lcom/google/common/flags/FlagDescription;
    :cond_80
    sget-object v9, Lcom/google/common/flags/Flags;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v11, "Flag {0} is not a unique short form because {1} flags use it: {2}"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v14

    const/4 v13, 0x2

    aput-object v2, v12, v13

    invoke-virtual {v9, v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46

    .line 522
    .end local v2           #b:Ljava/lang/StringBuilder;
    .end local v4           #dups:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #key:Ljava/lang/String;
    :cond_9d
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    return-object v9
.end method

.method private static expandedFlagMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/flags/FlagDescription;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 246
    sget-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->expandedFlagMap:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 247
    invoke-static {}, Lcom/google/common/flags/Flags;->initMaps()V

    .line 249
    :cond_7
    sget-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->expandedFlagMap:Ljava/util/Map;

    return-object v0
.end method

.method public static exposedFlags()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/flags/FlagInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1803
    invoke-static {}, Lcom/google/common/flags/Flags;->allFlagsInternal()Ljava/util/Collection;

    move-result-object v0

    .line 1804
    .local v0, allFlags:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/common/flags/Flags$FlagInfoImpl;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/common/flags/Flags$FlagInfoImpl;>;"
    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1805
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/flags/Flags$FlagInfoImpl;

    .line 1806
    .local v1, flag:Lcom/google/common/flags/Flags$FlagInfoImpl;
    iget-object v3, v1, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    invoke-virtual {v3}, Lcom/google/common/flags/FlagDescription;->getDocLevel()Lcom/google/common/flags/DocLevel;

    move-result-object v3

    sget-object v4, Lcom/google/common/flags/DocLevel;->PUBLIC:Lcom/google/common/flags/DocLevel;

    if-ne v3, v4, :cond_26

    iget-object v3, v1, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    invoke-static {v3}, Lcom/google/common/flags/Flags;->whitelistAllowsAliasing(Lcom/google/common/flags/FlagDescription;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1808
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 1810
    .end local v1           #flag:Lcom/google/common/flags/Flags$FlagInfoImpl;
    :cond_2a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    return-object v3
.end method

.method static flag(Lcom/google/common/flags/FlagDescription;)Lcom/google/common/flags/Flag;
    .registers 8
    .parameter "desc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flags/FlagDescription;",
            ")",
            "Lcom/google/common/flags/Flag",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1033
    invoke-static {}, Lcom/google/common/flags/Flags;->manuallyRegisteredFlags()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/flags/Flag;

    .line 1034
    .local v3, flag:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<*>;"
    if-eqz v3, :cond_11

    .line 1043
    .end local v3           #flag:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<*>;"
    :goto_10
    return-object v3

    .line 1040
    .restart local v3       #flag:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<*>;"
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getContainerClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/flags/Flags;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1041
    .local v0, containerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getSimpleFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1042
    .local v2, field:Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1043
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/flags/Flag;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_2c} :catch_2e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_11 .. :try_end_2c} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_2c} :catch_86
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_2c} :catch_b2
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_2c} :catch_de

    move-object v3, v4

    goto :goto_10

    .line 1044
    .end local v0           #containerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #field:Ljava/lang/reflect/Field;
    :catch_2e
    move-exception v1

    .line 1045
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/LinkageError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class for flag field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getFullyQualifiedFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " present in manifest, absent at runtime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1049
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    :catch_5a
    move-exception v1

    .line 1050
    .local v1, ex:Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/LinkageError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Flag field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getFullyQualifiedFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " present in manifest, absent at runtime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1053
    .end local v1           #ex:Ljava/lang/NoSuchFieldException;
    :catch_86
    move-exception v1

    .line 1054
    .local v1, ex:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/LinkageError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get flag field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getFullyQualifiedFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1057
    .end local v1           #ex:Ljava/lang/IllegalAccessException;
    :catch_b2
    move-exception v1

    .line 1059
    .local v1, ex:Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/LinkageError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Forgot to make the flag static? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getFullyQualifiedFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1061
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :catch_de
    move-exception v1

    .line 1062
    .local v1, ex:Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/LinkageError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot convert field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getSimpleFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to a Flag in order to resolve "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getFullyQualifiedFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static formatFlag(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "printStream"
    .parameter "flagName"
    .parameter "flagDescription"
    .parameter "defaultString"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x46

    .line 1103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1104
    .local v1, b:Ljava/lang/StringBuilder;
    const-string v3, "   --"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    if-eqz p3, :cond_26

    .line 1106
    const-string v3, "; default: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    :cond_26
    const/16 v0, 0x46

    .line 1110
    .local v0, LINE_LIMIT:I
    :goto_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v5, :cond_41

    .line 1111
    const-string v3, " "

    invoke-virtual {v1, v3, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1112
    .local v2, space:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3d

    const-string v3, " "

    invoke-virtual {v1, v3, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1113
    :cond_3d
    const/16 v3, 0xa

    if-ge v2, v3, :cond_4b

    .line 1117
    .end local v2           #space:I
    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1118
    :cond_4a
    return-void

    .line 1114
    .restart local v2       #space:I
    :cond_4b
    invoke-virtual {v1, v6, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1115
    add-int/lit8 v3, v2, 0x1

    const-string v4, "      "

    invoke-virtual {v1, v6, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28
.end method

.method public static getAllFlags()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1661
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 1662
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/google/common/flags/Flags;->canonicalFlagMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1663
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1664
    .local v3, key:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flags/FlagDescription;

    .line 1665
    .local v0, desc:Lcom/google/common/flags/FlagDescription;
    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_11

    .line 1666
    invoke-static {v0}, Lcom/google/common/flags/Flags;->flag(Lcom/google/common/flags/FlagDescription;)Lcom/google/common/flags/Flag;

    move-result-object v5

    iget-object v5, v5, Lcom/google/common/flags/Flag;->value:Ljava/lang/Object;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 1668
    .end local v0           #desc:Lcom/google/common/flags/FlagDescription;
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    .end local v3           #key:Ljava/lang/String;
    :cond_3b
    return-object v4
.end method

.method static getAllNamesForFlag(Lcom/google/common/flags/FlagDescription;)Ljava/util/List;
    .registers 4
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flags/FlagDescription;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 428
    .local v0, aliases:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/common/flags/Flags;->whitelistAllowsAliasing(Lcom/google/common/flags/FlagDescription;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 430
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getAltName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 431
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getAltName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_18
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getShortFlagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_1f
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->isShortFlagNameSpecified()Z

    move-result v1

    if-nez v1, :cond_33

    .line 443
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getFullyQualifiedFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_33
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Boolean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 448
    invoke-static {v0}, Lcom/google/common/flags/Flags;->getNoPrefixedAliases(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 451
    :cond_46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static getAllowedFlags()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1478
    sget-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->whitelistedPrefixes:Ljava/util/Collection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1479
    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/google/common/flags/Flags$FlagMapHolder;->whitelistedPrefixes:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_5
.end method

.method private static getAsString(Lcom/google/common/flags/Flag;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flags/Flag",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1300
    .local p0, flag:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<*>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/flags/Flag;->parsableStringValue()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 1302
    :goto_4
    return-object v1

    .line 1301
    :catch_5
    move-exception v0

    .line 1302
    .local v0, uoe:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {p0}, Lcom/google/common/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/flags/Flags;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method private static getBestFlag(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription;
    .registers 8
    .parameter "flag"

    .prologue
    const/4 v4, 0x0

    .line 253
    invoke-static {}, Lcom/google/common/flags/Flags;->expandedFlagMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 254
    .local v0, allDesc:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    if-nez v0, :cond_e

    .line 269
    :cond_d
    :goto_d
    return-object v4

    .line 257
    :cond_e
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 258
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/flags/FlagDescription;

    goto :goto_d

    .line 260
    :cond_20
    const/4 v3, 0x0

    .line 261
    .local v3, result:Lcom/google/common/flags/FlagDescription;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/flags/FlagDescription;

    .line 262
    .local v1, desc:Lcom/google/common/flags/FlagDescription;
    sget-object v5, Lcom/google/common/flags/Flags;->preferredClasses:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/google/common/flags/FlagDescription;->getContainerClassName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 263
    if-nez v3, :cond_d

    .line 266
    move-object v3, v1

    goto :goto_25

    .end local v1           #desc:Lcom/google/common/flags/FlagDescription;
    :cond_41
    move-object v4, v3

    .line 269
    goto :goto_d
.end method

.method private static getBestFlagName(Lcom/google/common/flags/FlagDescription;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .parameter "flag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flags/FlagDescription;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/flags/FlagDescription;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, expandedFlagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;>;"
    invoke-static {p0}, Lcom/google/common/flags/Flags;->getAllNamesForFlag(Lcom/google/common/flags/FlagDescription;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    .local v0, alias:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 556
    .local v1, descs:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 557
    return-object v0

    .line 561
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #descs:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    :cond_24
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Must be one unique name for flag?!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private static getDefaultAsString(Lcom/google/common/flags/Flag;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flags/Flag",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1283
    .local p0, flag:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/flags/Flag;->getDefault()Ljava/lang/Object;

    move-result-object v0

    .line 1284
    .local v0, defaultValue:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_8

    .line 1285
    const/4 v2, 0x0

    .line 1290
    :goto_7
    return-object v2

    .line 1288
    :cond_8
    :try_start_8
    invoke-virtual {p0, v0}, Lcom/google/common/flags/Flag;->parsableStringValue(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v2

    goto :goto_7

    .line 1289
    :catch_d
    move-exception v1

    .line 1290
    .local v1, uoe:Ljava/lang/UnsupportedOperationException;
    invoke-static {v0}, Lcom/google/common/flags/Flags;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method private static getFlagManifestClassLoader()Ljava/lang/ClassLoader;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 391
    const-string v3, "com.google.common.flags.classLoader"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_45

    .line 395
    :try_start_10
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 397
    .local v2, loader:Ljava/lang/ClassLoader;
    sget-object v3, Lcom/google/common/flags/Flags;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User specified classloader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/InstantiationException; {:try_start_10 .. :try_end_32} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_32} :catch_4c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_32} :catch_5f

    .line 411
    .end local v2           #loader:Ljava/lang/ClassLoader;
    :goto_32
    return-object v2

    .line 399
    :catch_33
    move-exception v1

    .line 400
    .local v1, e:Ljava/lang/InstantiationException;
    sget-object v3, Lcom/google/common/flags/Flags;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Couldn\'t instantiate ClassLoader \'%s\'"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    .end local v1           #e:Ljava/lang/InstantiationException;
    :cond_45
    :goto_45
    const-class v3, Lcom/google/common/flags/Flags;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_32

    .line 402
    :catch_4c
    move-exception v1

    .line 403
    .local v1, e:Ljava/lang/IllegalAccessException;
    sget-object v3, Lcom/google/common/flags/Flags;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Couldn\'t instantiate ClassLoader \'%s\'"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45

    .line 405
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_5f
    move-exception v1

    .line 406
    .local v1, e:Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/google/common/flags/Flags;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Couldn\'t instantiate ClassLoader \'%s\'"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45
.end method

.method public static getMainClassName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1253
    sget-object v0, Lcom/google/common/flags/Flags;->cachedMainClassName:Ljava/lang/String;

    return-object v0
.end method

.method private static getMainClassNameFromStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 4
    .parameter "stack"

    .prologue
    .line 208
    array-length v2, p0

    if-lez v2, :cond_21

    .line 209
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, p0, v2

    .line 210
    .local v1, stackRoot:Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, methodName:Ljava/lang/String;
    const-string v2, "main"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "<clinit>"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 212
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 215
    .end local v0           #methodName:Ljava/lang/String;
    .end local v1           #stackRoot:Ljava/lang/StackTraceElement;
    :goto_20
    return-object v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method private static getNoPrefixedAliases(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, names:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v2, noPrefixedAliases:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    .local v1, name:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 459
    .end local v1           #name:Ljava/lang/String;
    :cond_2c
    return-object v2
.end method

.method private static getProgramName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1353
    const-string v1, "unknown"

    .line 1354
    .local v1, progname:Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1355
    .local v0, frames:[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_19

    array-length v2, v0

    if-lez v2, :cond_19

    .line 1356
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1358
    :cond_19
    return-object v1
.end method

.method private static getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3
    .parameter "t"

    .prologue
    .line 1817
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1818
    .local v0, stringWriter:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1819
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getUnknownFlags(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    .local p0, unrecognizedFlags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p1, acceptableUnrecognizedFlags:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v2, unknownFlags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 835
    .local v0, flagName:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "no"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 838
    :cond_2e
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 841
    .end local v0           #flagName:Ljava/lang/String;
    :cond_32
    return-object v2
.end method

.method public static getUsagePrefix()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1176
    sget-object v0, Lcom/google/common/flags/Flags;->usagePrefix:Ljava/lang/String;

    return-object v0
.end method

.method private static initMaps()V
    .registers 2

    .prologue
    .line 347
    invoke-static {}, Lcom/google/common/flags/Flags;->longNameMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 348
    .local v0, allflags:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/common/flags/FlagDescription;>;"
    invoke-static {v0}, Lcom/google/common/flags/Flags;->expandFlagMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/common/flags/Flags$FlagMapHolder;->expandedFlagMap:Ljava/util/Map;

    .line 349
    sget-object v1, Lcom/google/common/flags/Flags$FlagMapHolder;->expandedFlagMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/common/flags/Flags;->createCanonicalFlagMap(Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/common/flags/Flags$FlagMapHolder;->canonicalFlagMap:Ljava/util/Map;

    .line 351
    return-void
.end method

.method private static isAllowedUndefOkFlag(Ljava/lang/String;)Z
    .registers 2
    .parameter "flagName"

    .prologue
    .line 825
    invoke-static {}, Lcom/google/common/flags/Flags;->isUndefOkSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "undefok"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isBooleanFlag(Lcom/google/common/flags/FlagDescription;)Z
    .registers 3
    .parameter "desc"

    .prologue
    .line 1016
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isLegitimateFlag(Lcom/google/common/flags/FlagDescription;)Z
    .registers 2
    .parameter "description"

    .prologue
    .line 1021
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static isUndefOkSupported()Z
    .registers 1

    .prologue
    .line 1826
    sget-boolean v0, Lcom/google/common/flags/Flags;->undefOkSupported:Z

    return v0
.end method

.method private static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1078
    :goto_0
    :try_start_0
    sget-object v2, Lcom/google/common/flags/Flags;->flagClassLoader:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_c

    .line 1079
    const/4 v2, 0x1

    sget-object v3, Lcom/google/common/flags/Flags;->flagClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 1081
    :goto_b
    return-object v2

    :cond_c
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v2

    goto :goto_b

    .line 1083
    :catch_11
    move-exception v0

    .line 1084
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1085
    .local v1, idx:I
    if-gez v1, :cond_1b

    .line 1086
    throw v0

    .line 1090
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1092
    goto :goto_0
.end method

.method private static loadExternalFlags([Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagSyntaxException;,
            Lcom/google/common/flags/ExternalFlagsLoadException;
        }
    .end annotation

    .prologue
    .line 872
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v2, collatedArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_8
    if-ge v6, v7, :cond_43

    aget-object v0, v1, v6

    .line 876
    .local v0, arg:Ljava/lang/String;
    :try_start_c
    sget-object v10, Lcom/google/common/flags/Flags;->FLAG_FILE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 877
    .local v5, fileMatcher:Ljava/util/regex/Matcher;
    sget-object v10, Lcom/google/common/flags/Flags;->FLAG_RESOURCE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 879
    .local v9, resourceMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_29

    .line 881
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 882
    .local v4, file:Ljava/lang/String;
    invoke-static {v2, v4, v0}, Lcom/google/common/flags/Flags;->appendExternalFlagsFromFile(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    .end local v4           #file:Ljava/lang/String;
    :goto_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 883
    :cond_29
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 885
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 886
    .local v8, resource:Ljava/lang/String;
    invoke-static {v2, v8, v0}, Lcom/google/common/flags/Flags;->appendExternalFlagsFromResource(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_37} :catch_38

    goto :goto_26

    .line 891
    .end local v5           #fileMatcher:Ljava/util/regex/Matcher;
    .end local v8           #resource:Ljava/lang/String;
    .end local v9           #resourceMatcher:Ljava/util/regex/Matcher;
    :catch_38
    move-exception v3

    .line 892
    .local v3, exc:Ljava/io/IOException;
    new-instance v10, Lcom/google/common/flags/ExternalFlagsLoadException;

    invoke-direct {v10, v0}, Lcom/google/common/flags/ExternalFlagsLoadException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 889
    .end local v3           #exc:Ljava/io/IOException;
    .restart local v5       #fileMatcher:Ljava/util/regex/Matcher;
    .restart local v9       #resourceMatcher:Ljava/util/regex/Matcher;
    :cond_3f
    :try_start_3f
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_38

    goto :goto_26

    .line 895
    .end local v0           #arg:Ljava/lang/String;
    .end local v5           #fileMatcher:Ljava/util/regex/Matcher;
    .end local v9           #resourceMatcher:Ljava/util/regex/Matcher;
    :cond_43
    sget-object v10, Lcom/google/common/flags/Flags;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    return-object v10
.end method

.method private static loadFlagManifests()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/FlagDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    invoke-static {}, Lcom/google/common/flags/Flags;->getFlagManifestClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 364
    .local v4, myLoader:Ljava/lang/ClassLoader;
    :try_start_9
    const-string v6, "flags.xml"

    invoke-virtual {v4, v6}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 365
    .local v1, flagURLs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 366
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URL;

    .line 367
    .local v5, url:Ljava/net/URL;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_24} :catch_2b

    .line 369
    .local v2, is:Ljava/io/InputStream;
    :try_start_24
    invoke-static {v2, v3}, Lcom/google/common/flags/XmlSupport;->fromXml(Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_4c
    .catch Lcom/google/common/flags/MalformedFlagDescriptionException; {:try_start_24 .. :try_end_27} :catch_32

    .line 374
    :try_start_27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_f

    .line 377
    .end local v1           #flagURLs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #url:Ljava/net/URL;
    :catch_2b
    move-exception v0

    .line 378
    .local v0, ex:Ljava/io/IOException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 370
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #flagURLs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v5       #url:Ljava/net/URL;
    :catch_32
    move-exception v0

    .line 371
    .local v0, ex:Lcom/google/common/flags/MalformedFlagDescriptionException;
    :try_start_33
    new-instance v6, Lcom/google/common/flags/MalformedFlagDescriptionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/google/common/flags/MalformedFlagDescriptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_4c

    .line 374
    .end local v0           #ex:Lcom/google/common/flags/MalformedFlagDescriptionException;
    :catchall_4c
    move-exception v6

    :try_start_4d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_51} :catch_2b

    .line 380
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #url:Ljava/net/URL;
    :cond_51
    return-object v3
.end method

.method private static longNameMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/FlagDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    sget-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->longNameMap:Ljava/util/Map;

    return-object v0
.end method

.method private static manuallyRegisteredFlags()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/Flag",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 278
    sget-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->manuallyRegisteredFlags:Ljava/util/Map;

    return-object v0
.end method

.method private static maybeSyslogOnStart([Ljava/lang/String;)V
    .registers 25
    .parameter "args"

    .prologue
    .line 572
    :try_start_0
    invoke-static {}, Lcom/google/common/flags/Flags;->getMainClassName()Ljava/lang/String;

    move-result-object v13

    .line 573
    .local v13, mainClassName:Ljava/lang/String;
    if-nez v13, :cond_7

    .line 631
    .end local v13           #mainClassName:Ljava/lang/String;
    :cond_6
    :goto_6
    return-void

    .line 577
    .restart local v13       #mainClassName:Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    .line 578
    .local v2, addr:Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    .line 579
    .local v9, hostname:Ljava/lang/String;
    const-string v19, ".corp.google.com"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 584
    const-string v19, "com.sun.security.auth.module.UnixSystem"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 585
    .local v6, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 586
    .local v8, clsObj:Ljava/lang/Object;
    const-string v19, "getUid"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 587
    .local v7, clsMeth:Ljava/lang/reflect/Method;
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 588
    .local v16, result:Ljava/lang/Object;
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v18, v0

    .line 591
    .local v18, uid:Ljava/lang/Long;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " log_path:\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " language:\"java\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " tool_type:\"cmdline\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " uid:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " host_name:\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " log_timestamp:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " logger:\"logger_java\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 604
    .local v17, toolLogProtoStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .local v4, argvStr:Ljava/lang/StringBuilder;
    move-object/from16 v5, p0

    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_b1
    if-ge v10, v11, :cond_d8

    aget-object v3, v5, v10

    .line 606
    .local v3, argv:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " argv:\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    add-int/lit8 v10, v10, 0x1

    goto :goto_b1

    .line 611
    .end local v3           #argv:Ljava/lang/String;
    :cond_d8
    const-string v12, "/usr/lib/crudd/log_usage"

    .line 613
    .local v12, loggerPath:Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    const-string v20, "/usr/lib/crudd/log_usage"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_13b

    .line 614
    new-instance v15, Ljava/lang/ProcessBuilder;

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "/usr/lib/crudd/log_usage"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "--tool_log_proto"

    aput-object v21, v19, v20

    const/16 v20, 0x2

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 624
    .local v15, pb:Ljava/lang/ProcessBuilder;
    :goto_11d
    invoke-virtual {v15}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v14

    .line 625
    .local v14, p:Ljava/lang/Process;
    invoke-virtual {v14}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 626
    invoke-virtual {v14}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    .line 627
    invoke-virtual {v14}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    goto/16 :goto_6

    .line 628
    .end local v2           #addr:Ljava/net/InetAddress;
    .end local v4           #argvStr:Ljava/lang/StringBuilder;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #clsMeth:Ljava/lang/reflect/Method;
    .end local v8           #clsObj:Ljava/lang/Object;
    .end local v9           #hostname:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #loggerPath:Ljava/lang/String;
    .end local v13           #mainClassName:Ljava/lang/String;
    .end local v14           #p:Ljava/lang/Process;
    .end local v15           #pb:Ljava/lang/ProcessBuilder;
    .end local v16           #result:Ljava/lang/Object;
    .end local v17           #toolLogProtoStr:Ljava/lang/String;
    .end local v18           #uid:Ljava/lang/Long;
    :catch_138
    move-exception v19

    goto/16 :goto_6

    .line 620
    .restart local v2       #addr:Ljava/net/InetAddress;
    .restart local v4       #argvStr:Ljava/lang/StringBuilder;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v6       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v7       #clsMeth:Ljava/lang/reflect/Method;
    .restart local v8       #clsObj:Ljava/lang/Object;
    .restart local v9       #hostname:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #loggerPath:Ljava/lang/String;
    .restart local v13       #mainClassName:Ljava/lang/String;
    .restart local v16       #result:Ljava/lang/Object;
    .restart local v17       #toolLogProtoStr:Ljava/lang/String;
    .restart local v18       #uid:Ljava/lang/Long;
    :cond_13b
    new-instance v15, Ljava/lang/ProcessBuilder;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "/usr/bin/logger"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ToolLogProto: logjam_tag=tattler_initgoogle "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
    :try_end_16b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16b} :catch_138

    .restart local v15       #pb:Ljava/lang/ProcessBuilder;
    goto :goto_11d
.end method

.method public static parse([Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .parameter "args"

    .prologue
    .line 648
    const/4 v6, 0x0

    .line 650
    .local v6, result:[Ljava/lang/String;
    invoke-static {p0}, Lcom/google/common/flags/Flags;->maybeSyslogOnStart([Ljava/lang/String;)V

    .line 652
    :try_start_4
    sget-object v7, Lcom/google/common/flags/Flags$ParseState;->IN_PROGRESS:Lcom/google/common/flags/Flags$ParseState;

    invoke-static {v7}, Lcom/google/common/flags/Flags;->setParseState(Lcom/google/common/flags/Flags$ParseState;)V

    .line 653
    invoke-static {p0}, Lcom/google/common/flags/Flags;->parseInternal([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 654
    const-class v8, Lcom/google/common/flags/Flags;

    monitor-enter v8
    :try_end_10
    .catch Lcom/google/common/flags/FlagException; {:try_start_4 .. :try_end_10} :catch_31

    .line 655
    :try_start_10
    sget-object v7, Lcom/google/common/flags/Flags$ParseState;->DONE:Lcom/google/common/flags/Flags$ParseState;

    invoke-static {v7}, Lcom/google/common/flags/Flags;->setParseState(Lcom/google/common/flags/Flags$ParseState;)V

    .line 656
    sget-object v7, Lcom/google/common/flags/Flags;->completionHooks:Ljava/util/Collection;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Runnable;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Runnable;

    .line 657
    .local v1, completionHooks:[Ljava/lang/Runnable;
    monitor-exit v8
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_2e

    .line 663
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/Runnable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_24
    if-ge v3, v4, :cond_3c

    aget-object v5, v0, v3

    .line 664
    .local v5, r:Ljava/lang/Runnable;
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 663
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 657
    .end local v0           #arr$:[Ljava/lang/Runnable;
    .end local v1           #completionHooks:[Ljava/lang/Runnable;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #r:Ljava/lang/Runnable;
    :catchall_2e
    move-exception v7

    :try_start_2f
    monitor-exit v8
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v7
    :try_end_31
    .catch Lcom/google/common/flags/FlagException; {:try_start_30 .. :try_end_31} :catch_31

    .line 658
    :catch_31
    move-exception v2

    .line 659
    .local v2, ex:Lcom/google/common/flags/FlagException;
    new-instance v7, Lcom/google/common/flags/InvalidFlagsException;

    invoke-virtual {v2}, Lcom/google/common/flags/FlagException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/google/common/flags/InvalidFlagsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 667
    .end local v2           #ex:Lcom/google/common/flags/FlagException;
    .restart local v0       #arr$:[Ljava/lang/Runnable;
    .restart local v1       #completionHooks:[Ljava/lang/Runnable;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_3c
    return-object v6
.end method

.method private static parseInternal([Ljava/lang/String;)[Ljava/lang/String;
    .registers 22
    .parameter "commandLineArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/AmbiguousFlagException;,
            Lcom/google/common/flags/ExternalFlagsLoadException;,
            Lcom/google/common/flags/InvalidFlagSyntaxException;,
            Lcom/google/common/flags/InvalidFlagValueException;,
            Lcom/google/common/flags/UnrecognizedFlagException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-static {}, Lcom/google/common/flags/Flags;->initMaps()V

    .line 728
    invoke-static/range {p0 .. p0}, Lcom/google/common/flags/Flags;->loadExternalFlags([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 730
    .local v3, args:[Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v14, nonFlagArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v16, unrecognizedFlags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 733
    .local v1, acceptableUnrecognizedFlags:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_17
    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_157

    .line 734
    aget-object v2, v3, v10

    .line 736
    .local v2, arg:Ljava/lang/String;
    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_30

    .line 737
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_2d
    :goto_2d
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 741
    :cond_30
    const-string v18, "--"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 742
    :goto_3a
    add-int/lit8 v10, v10, 0x1

    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_157

    .line 743
    aget-object v18, v3, v10

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 748
    :cond_4b
    invoke-static {v2}, Lcom/google/common/flags/Flags;->printRequestedHelp(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_88

    .line 749
    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/google/common/flags/Flags;->getUnknownFlags(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v15

    .line 751
    .local v15, unknownFlags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_77

    .line 752
    sget-object v18, Lcom/google/common/flags/Flags;->outputStream:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unrecognized flags: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 754
    :cond_77
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_85

    const/16 v18, 0x0

    :goto_7f
    invoke-static/range {v18 .. v18}, Lcom/google/common/flags/Flags;->exitUnlessDisabled(I)V

    .line 755
    sget-object v18, Lcom/google/common/flags/Flags;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 819
    .end local v2           #arg:Ljava/lang/String;
    :goto_84
    return-object v18

    .line 754
    .restart local v2       #arg:Ljava/lang/String;
    :cond_85
    const/16 v18, 0x1

    goto :goto_7f

    .line 758
    .end local v15           #unknownFlags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_88
    sget-object v18, Lcom/google/common/flags/Flags;->FLAG_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 759
    .local v13, m:Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-nez v18, :cond_9e

    .line 760
    new-instance v18, Lcom/google/common/flags/InvalidFlagSyntaxException;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/google/common/flags/InvalidFlagSyntaxException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 762
    :cond_9e
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 763
    .local v7, flagName:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_ba

    .line 764
    new-instance v18, Lcom/google/common/flags/InvalidFlagSyntaxException;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/google/common/flags/InvalidFlagSyntaxException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 766
    :cond_ba
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 767
    .local v17, valueString:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/common/flags/Flags;->getBestFlag(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription;

    move-result-object v5

    .line 768
    .local v5, description:Lcom/google/common/flags/FlagDescription;
    const/4 v9, 0x0

    .line 770
    .local v9, guessingNextArgIsValue:Z
    if-nez v17, :cond_130

    .line 771
    invoke-static {v5}, Lcom/google/common/flags/Flags;->isBooleanFlag(Lcom/google/common/flags/FlagDescription;)Z

    move-result v18

    if-eqz v18, :cond_f3

    .line 772
    invoke-virtual {v5, v7}, Lcom/google/common/flags/FlagDescription;->isPositiveFormOfName(Ljava/lang/String;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v17

    .line 774
    invoke-virtual {v5}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v7

    .line 793
    :cond_db
    :goto_db
    invoke-static {v7}, Lcom/google/common/flags/Flags;->isAllowedUndefOkFlag(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_144

    .line 795
    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_e9
    if-ge v11, v12, :cond_2d

    aget-object v8, v4, v11

    .line 796
    .local v8, fn:Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 795
    add-int/lit8 v11, v11, 0x1

    goto :goto_e9

    .line 775
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #fn:Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :cond_f3
    invoke-static {v5}, Lcom/google/common/flags/Flags;->isLegitimateFlag(Lcom/google/common/flags/FlagDescription;)Z

    move-result v18

    if-nez v18, :cond_ff

    invoke-static {v7}, Lcom/google/common/flags/Flags;->isAllowedUndefOkFlag(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_129

    .line 777
    :cond_ff
    array-length v0, v3

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_123

    .line 778
    new-instance v18, Lcom/google/common/flags/InvalidFlagSyntaxException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is missing a value"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/google/common/flags/InvalidFlagSyntaxException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 780
    :cond_123
    add-int/lit8 v10, v10, 0x1

    aget-object v17, v3, v10

    .line 781
    const/4 v9, 0x1

    goto :goto_db

    .line 783
    :cond_129
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2d

    .line 786
    :cond_130
    invoke-static {v5}, Lcom/google/common/flags/Flags;->isBooleanFlag(Lcom/google/common/flags/FlagDescription;)Z

    move-result v18

    if-eqz v18, :cond_db

    invoke-virtual {v5, v7}, Lcom/google/common/flags/FlagDescription;->isPositiveFormOfName(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_db

    .line 788
    new-instance v18, Lcom/google/common/flags/InvalidFlagSyntaxException;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/google/common/flags/InvalidFlagSyntaxException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 803
    :cond_144
    :try_start_144
    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/google/common/flags/Flags;->processFlag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catch Lcom/google/common/flags/UnrecognizedFlagException; {:try_start_144 .. :try_end_149} :catch_14b

    goto/16 :goto_2d

    .line 804
    :catch_14b
    move-exception v6

    .line 805
    .local v6, e:Lcom/google/common/flags/UnrecognizedFlagException;
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    if-eqz v9, :cond_2d

    .line 807
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2d

    .line 812
    .end local v2           #arg:Ljava/lang/String;
    .end local v5           #description:Lcom/google/common/flags/FlagDescription;
    .end local v6           #e:Lcom/google/common/flags/UnrecognizedFlagException;
    .end local v7           #flagName:Ljava/lang/String;
    .end local v9           #guessingNextArgIsValue:Z
    .end local v13           #m:Ljava/util/regex/Matcher;
    .end local v17           #valueString:Ljava/lang/String;
    :cond_157
    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/google/common/flags/Flags;->getUnknownFlags(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v15

    .line 814
    .restart local v15       #unknownFlags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_16b

    .line 815
    new-instance v18, Lcom/google/common/flags/UnrecognizedFlagException;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Lcom/google/common/flags/UnrecognizedFlagException;-><init>(Ljava/util/List;)V

    throw v18

    .line 819
    :cond_16b
    sget-object v18, Lcom/google/common/flags/Flags;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    goto/16 :goto_84
.end method

.method private static printRequestedHelp(Ljava/lang/String;)Z
    .registers 5
    .parameter "arg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 681
    sget-object v2, Lcom/google/common/flags/Flags;->HELP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 682
    sget-object v2, Lcom/google/common/flags/Flags;->outputStream:Ljava/io/PrintStream;

    sget-object v3, Lcom/google/common/flags/Flags;->usagePrefix:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/google/common/flags/Flags;->usage(Ljava/io/PrintStream;ZLjava/lang/String;)V

    .line 691
    :goto_15
    return v0

    .line 684
    :cond_16
    sget-object v2, Lcom/google/common/flags/Flags;->HELPSHORT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 685
    sget-object v1, Lcom/google/common/flags/Flags;->outputStream:Ljava/io/PrintStream;

    sget-object v2, Lcom/google/common/flags/Flags;->usagePrefix:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/google/common/flags/Flags;->usage(Ljava/io/PrintStream;ZLjava/lang/String;)V

    goto :goto_15

    .line 687
    :cond_2a
    sget-object v2, Lcom/google/common/flags/Flags;->XML_HELP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 688
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Lcom/google/common/flags/Flags;->outputStream:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1}, Lcom/google/common/flags/Flags;->xmlUsage(Ljava/io/PrintWriter;)V

    goto :goto_15

    :cond_41
    move v0, v1

    .line 691
    goto :goto_15
.end method

.method public static processFlag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "flagName"
    .parameter "flagValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/UnrecognizedFlagException;,
            Lcom/google/common/flags/InvalidFlagValueException;,
            Lcom/google/common/flags/AmbiguousFlagException;
        }
    .end annotation

    .prologue
    .line 983
    invoke-static {p0}, Lcom/google/common/flags/Flags;->getBestFlag(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription;

    move-result-object v1

    .line 984
    .local v1, desc:Lcom/google/common/flags/FlagDescription;
    if-nez v1, :cond_24

    .line 985
    invoke-static {}, Lcom/google/common/flags/Flags;->expandedFlagMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 986
    .local v0, allDesc:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_1e

    .line 987
    :cond_18
    new-instance v4, Lcom/google/common/flags/UnrecognizedFlagException;

    invoke-direct {v4, p0}, Lcom/google/common/flags/UnrecognizedFlagException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 990
    :cond_1e
    new-instance v4, Lcom/google/common/flags/AmbiguousFlagException;

    invoke-direct {v4, p0, v0}, Lcom/google/common/flags/AmbiguousFlagException;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    throw v4

    .line 994
    .end local v0           #allDesc:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    :cond_24
    :try_start_24
    invoke-static {v1}, Lcom/google/common/flags/Flags;->flag(Lcom/google/common/flags/FlagDescription;)Lcom/google/common/flags/Flag;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/common/flags/Flag;->setFromString(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_2b} :catch_2c
    .catch Lcom/google/common/flags/InvalidFlagValueException; {:try_start_24 .. :try_end_2b} :catch_3f
    .catch Lcom/google/common/flags/IllegalFlagStateException; {:try_start_24 .. :try_end_2b} :catch_49

    .line 1012
    return-void

    .line 995
    :catch_2c
    move-exception v2

    .line 996
    .local v2, e:Ljava/lang/NullPointerException;
    new-instance v3, Lcom/google/common/flags/InvalidFlagValueException;

    const-string v4, "NullPointerException"

    invoke-direct {v3, v4}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    .line 999
    .local v3, newException:Lcom/google/common/flags/InvalidFlagValueException;
    invoke-virtual {v1}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/common/flags/InvalidFlagValueException;->flagName:Ljava/lang/String;

    .line 1000
    const-string v4, "null"

    iput-object v4, v3, Lcom/google/common/flags/InvalidFlagValueException;->flagValue:Ljava/lang/String;

    .line 1001
    throw v3

    .line 1002
    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v3           #newException:Lcom/google/common/flags/InvalidFlagValueException;
    :catch_3f
    move-exception v2

    .line 1004
    .local v2, e:Lcom/google/common/flags/InvalidFlagValueException;
    invoke-virtual {v1}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/google/common/flags/InvalidFlagValueException;->flagName:Ljava/lang/String;

    .line 1005
    iput-object p1, v2, Lcom/google/common/flags/InvalidFlagValueException;->flagValue:Ljava/lang/String;

    .line 1006
    throw v2

    .line 1007
    .end local v2           #e:Lcom/google/common/flags/InvalidFlagValueException;
    :catch_49
    move-exception v2

    .line 1009
    .local v2, e:Lcom/google/common/flags/IllegalFlagStateException;
    invoke-virtual {v1}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/google/common/flags/IllegalFlagStateException;->flagName:Ljava/lang/String;

    .line 1010
    throw v2
.end method

.method static reallyClearFlagMapsForTesting()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 314
    sget-object v0, Lcom/google/common/flags/Flags$ParseState;->NOT_STARTED:Lcom/google/common/flags/Flags$ParseState;

    sput-object v0, Lcom/google/common/flags/Flags;->parseState:Lcom/google/common/flags/Flags$ParseState;

    .line 315
    sget-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->longNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 316
    sput-object v1, Lcom/google/common/flags/Flags$FlagMapHolder;->canonicalFlagMap:Ljava/util/Map;

    .line 317
    sput-object v1, Lcom/google/common/flags/Flags$FlagMapHolder;->expandedFlagMap:Ljava/util/Map;

    .line 318
    sget-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->manuallyRegisteredFlags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 319
    sput-object v1, Lcom/google/common/flags/Flags$FlagMapHolder;->whitelistedPrefixes:Ljava/util/Collection;

    .line 320
    invoke-static {}, Lcom/google/common/flags/Flags;->disableUndefOkSupport()V

    .line 321
    return-void
.end method

.method public static registerCompletionHook(Ljava/lang/Runnable;)V
    .registers 5
    .parameter "callback"

    .prologue
    .line 1521
    if-nez p0, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1523
    :cond_8
    const-class v2, Lcom/google/common/flags/Flags;

    monitor-enter v2

    .line 1524
    :try_start_b
    sget-object v1, Lcom/google/common/flags/Flags;->parseState:Lcom/google/common/flags/Flags$ParseState;

    sget-object v3, Lcom/google/common/flags/Flags$ParseState;->DONE:Lcom/google/common/flags/Flags$ParseState;

    if-ne v1, v3, :cond_1e

    const/4 v0, 0x1

    .line 1525
    .local v0, parseDone:Z
    :goto_12
    sget-object v1, Lcom/google/common/flags/Flags;->completionHooks:Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1526
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_20

    .line 1527
    if-eqz v0, :cond_1d

    .line 1528
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1530
    :cond_1d
    return-void

    .line 1524
    .end local v0           #parseDone:Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_12

    .line 1526
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static declared-synchronized registerFlag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/flags/DocLevel;Ljava/lang/String;Lcom/google/common/flags/Flag;)V
    .registers 13
    .parameter "containerClassName"
    .parameter "simpleName"
    .parameter "doc"
    .parameter "altName"
    .parameter "doclevel"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/DocLevel;",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/Flag",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1405
    .local p6, flag:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<*>;"
    const-class v3, Lcom/google/common/flags/Flags;

    monitor-enter v3

    :try_start_3
    invoke-static {p1, p0}, Lcom/google/common/flags/FlagDescription;->createManuallyRegisteredFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/common/flags/FlagDescription$Builder;->doc(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/common/flags/FlagDescription$Builder;->altName(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/google/common/flags/FlagDescription$Builder;->docLevel(Lcom/google/common/flags/DocLevel;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/google/common/flags/FlagDescription$Builder;->type(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/flags/FlagDescription$Builder;->build()Lcom/google/common/flags/FlagDescription;

    move-result-object v0

    .line 1412
    .local v0, description:Lcom/google/common/flags/FlagDescription;
    if-nez p6, :cond_26

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_23

    .line 1405
    .end local v0           #description:Lcom/google/common/flags/FlagDescription;
    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1416
    .restart local v0       #description:Lcom/google/common/flags/FlagDescription;
    :cond_26
    if-eqz p3, :cond_3c

    :try_start_28
    sget-object v2, Lcom/google/common/flags/Flags;->FLAG_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1417
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Alternate flag name must contain only alphanumeric characters, hyphens, and underscores."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1422
    :cond_3c
    invoke-static {}, Lcom/google/common/flags/Flags;->longNameMap()Ljava/util/Map;

    move-result-object v1

    .line 1424
    .local v1, longNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-static {}, Lcom/google/common/flags/Flags;->stateCheckingDisabled()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 1426
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate flag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1430
    :cond_6d
    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    invoke-static {}, Lcom/google/common/flags/Flags;->manuallyRegisteredFlags()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    const/4 v2, 0x0

    sput-object v2, Lcom/google/common/flags/Flags$FlagMapHolder;->canonicalFlagMap:Ljava/util/Map;

    .line 1434
    const/4 v2, 0x0

    sput-object v2, Lcom/google/common/flags/Flags$FlagMapHolder;->expandedFlagMap:Ljava/util/Map;
    :try_end_85
    .catchall {:try_start_28 .. :try_end_85} :catchall_23

    .line 1435
    monitor-exit v3

    return-void
.end method

.method public static resetAllFlagsForTest()V
    .registers 3

    .prologue
    .line 1589
    invoke-static {}, Lcom/google/common/flags/Flags;->longNameMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flags/FlagDescription;

    .line 1591
    .local v0, desc:Lcom/google/common/flags/FlagDescription;
    :try_start_18
    invoke-static {v0}, Lcom/google/common/flags/Flags;->flag(Lcom/google/common/flags/FlagDescription;)Lcom/google/common/flags/Flag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/flags/Flag;->resetForTest()V
    :try_end_1f
    .catch Ljava/lang/LinkageError; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_c

    .line 1592
    :catch_20
    move-exception v2

    goto :goto_c

    .line 1597
    .end local v0           #desc:Lcom/google/common/flags/FlagDescription;
    :cond_22
    sget-object v2, Lcom/google/common/flags/Flags$ParseState;->NOT_STARTED:Lcom/google/common/flags/Flags$ParseState;

    invoke-static {v2}, Lcom/google/common/flags/Flags;->setParseState(Lcom/google/common/flags/Flags$ParseState;)V

    .line 1598
    return-void
.end method

.method public static resetFlagForTest(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "member"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1628
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "^FLAG_"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/flags/Flags;->verifyAndResetFlag(Ljava/lang/String;)V

    .line 1631
    sget-object v0, Lcom/google/common/flags/Flags$ParseState;->NOT_STARTED:Lcom/google/common/flags/Flags$ParseState;

    invoke-static {v0}, Lcom/google/common/flags/Flags;->setParseState(Lcom/google/common/flags/Flags$ParseState;)V

    .line 1632
    return-void
.end method

.method static resetOutputStreamForTesting()V
    .registers 1

    .prologue
    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lcom/google/common/flags/Flags;->outputStream:Ljava/io/PrintStream;

    .line 95
    return-void
.end method

.method public static resetPreferredClasses()V
    .registers 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1509
    sget-object v0, Lcom/google/common/flags/Flags;->preferredClasses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1510
    return-void
.end method

.method public static varargs resetSomeFlagsForTest([Ljava/lang/String;)V
    .registers 6
    .parameter "flagNames"

    .prologue
    .line 1610
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 1611
    .local v1, flagName:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/common/flags/Flags;->verifyAndResetFlag(Ljava/lang/String;)V

    .line 1610
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1614
    .end local v1           #flagName:Ljava/lang/String;
    :cond_d
    sget-object v4, Lcom/google/common/flags/Flags$ParseState;->NOT_STARTED:Lcom/google/common/flags/Flags$ParseState;

    invoke-static {v4}, Lcom/google/common/flags/Flags;->setParseState(Lcom/google/common/flags/Flags$ParseState;)V

    .line 1615
    return-void
.end method

.method public static setAllowedFlags(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, allowedPrefixes:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1463
    if-nez p0, :cond_a

    .line 1464
    sput-object v1, Lcom/google/common/flags/Flags$FlagMapHolder;->whitelistedPrefixes:Ljava/util/Collection;

    .line 1469
    :goto_5
    sput-object v1, Lcom/google/common/flags/Flags$FlagMapHolder;->expandedFlagMap:Ljava/util/Map;

    .line 1470
    sput-object v1, Lcom/google/common/flags/Flags$FlagMapHolder;->canonicalFlagMap:Ljava/util/Map;

    .line 1471
    return-void

    .line 1466
    :cond_a
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/common/flags/Flags$FlagMapHolder;->whitelistedPrefixes:Ljava/util/Collection;

    goto :goto_5
.end method

.method public static setFlagClassLoader(Ljava/lang/ClassLoader;)V
    .registers 1
    .parameter "loader"

    .prologue
    .line 227
    sput-object p0, Lcom/google/common/flags/Flags;->flagClassLoader:Ljava/lang/ClassLoader;

    .line 228
    return-void
.end method

.method static setOutputStreamForTesting(Ljava/io/PrintStream;)V
    .registers 1
    .parameter "stream"

    .prologue
    .line 90
    sput-object p0, Lcom/google/common/flags/Flags;->outputStream:Ljava/io/PrintStream;

    .line 91
    return-void
.end method

.method private static declared-synchronized setParseState(Lcom/google/common/flags/Flags$ParseState;)V
    .registers 5
    .parameter "newState"

    .prologue
    .line 1538
    const-class v1, Lcom/google/common/flags/Flags;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/common/flags/Flags$ParseState;->IN_PROGRESS:Lcom/google/common/flags/Flags$ParseState;

    if-ne p0, v0, :cond_35

    sget-object v0, Lcom/google/common/flags/Flags;->parseState:Lcom/google/common/flags/Flags$ParseState;

    sget-object v2, Lcom/google/common/flags/Flags$ParseState;->NOT_STARTED:Lcom/google/common/flags/Flags$ParseState;

    if-eq v0, v2, :cond_35

    invoke-static {}, Lcom/google/common/flags/Flags;->stateCheckingDisabled()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1541
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call parse more than once.  Here is the stacktrace of the previous call:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/common/flags/Flags;->parseStackTrace:Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/google/common/flags/Flags;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_32

    .line 1538
    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1545
    :cond_35
    :try_start_35
    sput-object p0, Lcom/google/common/flags/Flags;->parseState:Lcom/google/common/flags/Flags$ParseState;

    .line 1546
    sget-object v0, Lcom/google/common/flags/Flags$ParseState;->DONE:Lcom/google/common/flags/Flags$ParseState;

    if-ne p0, v0, :cond_46

    .line 1547
    new-instance v0, Ljava/lang/Throwable;

    const-string v2, "The stack trace associated with the PREVIOUS call to parse"

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/flags/Flags;->parseStackTrace:Ljava/lang/Throwable;
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_32

    .line 1552
    :goto_44
    monitor-exit v1

    return-void

    .line 1550
    :cond_46
    const/4 v0, 0x0

    :try_start_47
    sput-object v0, Lcom/google/common/flags/Flags;->parseStackTrace:Ljava/lang/Throwable;
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_32

    goto :goto_44
.end method

.method public static setUsagePrefix(Ljava/lang/String;)V
    .registers 1
    .parameter "usgPrefix"

    .prologue
    .line 1165
    sput-object p0, Lcom/google/common/flags/Flags;->usagePrefix:Ljava/lang/String;

    .line 1166
    return-void
.end method

.method private static simpleType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "typeClassName"

    .prologue
    .line 1362
    const-string v0, "java.lang.Integer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "int"

    .line 1368
    .end local p0
    :cond_a
    :goto_a
    return-object p0

    .line 1363
    .restart local p0
    :cond_b
    const-string v0, "java.lang.Long"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "long"

    goto :goto_a

    .line 1364
    :cond_16
    const-string v0, "java.lang.Float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "float"

    goto :goto_a

    .line 1365
    :cond_21
    const-string v0, "java.lang.Double"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "double"

    goto :goto_a

    .line 1366
    :cond_2c
    const-string v0, "java.lang.String"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, "string"

    goto :goto_a

    .line 1367
    :cond_37
    const-string v0, "java.lang.Boolean"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "boolean"

    goto :goto_a
.end method

.method static sortFlags(Z)Ljava/util/Set;
    .registers 7
    .parameter "shortForm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/FlagDescription;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1127
    invoke-static {}, Lcom/google/common/flags/Flags;->getMainClassName()Ljava/lang/String;

    move-result-object v4

    .line 1128
    .local v4, mainClassName:Ljava/lang/String;
    new-instance v2, Ljava/util/TreeSet;

    new-instance v5, Lcom/google/common/flags/Flags$1;

    invoke-direct {v5}, Lcom/google/common/flags/Flags$1;-><init>()V

    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1143
    .local v2, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;>;"
    invoke-static {}, Lcom/google/common/flags/Flags;->canonicalFlagMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1144
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flags/FlagDescription;

    .line 1146
    .local v0, descr:Lcom/google/common/flags/FlagDescription;
    invoke-static {v0}, Lcom/google/common/flags/Flags;->whitelistAllowsAliasing(Lcom/google/common/flags/FlagDescription;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1147
    if-eqz p0, :cond_40

    if-eqz v4, :cond_40

    .line 1148
    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getContainerClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1150
    :cond_40
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1152
    .end local v0           #descr:Lcom/google/common/flags/FlagDescription;
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    :cond_44
    return-object v2
.end method

.method public static stateCheckingDisabled()Z
    .registers 1

    .prologue
    .line 1558
    const-string v0, "com.google.common.flags.disableStateChecking"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static usage(Ljava/io/PrintStream;)V
    .registers 3
    .parameter "printStream"

    .prologue
    .line 1186
    const/4 v0, 0x0

    sget-object v1, Lcom/google/common/flags/Flags;->usagePrefix:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/common/flags/Flags;->usage(Ljava/io/PrintStream;ZLjava/lang/String;)V

    .line 1187
    return-void
.end method

.method public static usage(Ljava/io/PrintStream;Ljava/lang/String;)V
    .registers 3
    .parameter "printStream"
    .parameter "usgPrefix"

    .prologue
    .line 1197
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/common/flags/Flags;->usage(Ljava/io/PrintStream;ZLjava/lang/String;)V

    .line 1198
    return-void
.end method

.method public static usage(Ljava/io/PrintStream;ZLjava/lang/String;)V
    .registers 13
    .parameter "printStream"
    .parameter "shortForm"
    .parameter "usgPrefix"

    .prologue
    const/4 v9, 0x0

    .line 1209
    if-nez p2, :cond_13

    .line 1210
    const-string v5, "Usage: java [jvm-flags...] %s [flags...] [args...]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/common/flags/Flags;->getProgramName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1215
    :cond_13
    invoke-static {}, Lcom/google/common/flags/Flags;->initMaps()V

    .line 1217
    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1218
    const-string v5, "where flags are"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1219
    const-string v5, " Standard flags:"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1220
    const-string v5, "help"

    const-string v6, "describes all flags"

    invoke-static {p0, v5, v6, v9}, Lcom/google/common/flags/Flags;->formatFlag(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const-string v5, "helpshort"

    const-string v6, "describes the main class\' flags"

    invoke-static {p0, v5, v6, v9}, Lcom/google/common/flags/Flags;->formatFlag(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string v5, "helpxml"

    const-string v6, "emits XML description of all flags"

    invoke-static {p0, v5, v6, v9}, Lcom/google/common/flags/Flags;->formatFlag(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const-string v4, ""

    .line 1228
    .local v4, previousClass:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/common/flags/Flags;->sortFlags(Z)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_42
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1229
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1230
    .local v2, flagName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flags/FlagDescription;

    .line 1231
    .local v0, descr:Lcom/google/common/flags/FlagDescription;
    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getDocLevel()Lcom/google/common/flags/DocLevel;

    move-result-object v5

    sget-object v6, Lcom/google/common/flags/DocLevel;->PUBLIC:Lcom/google/common/flags/DocLevel;

    if-ne v5, v6, :cond_42

    .line 1232
    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getContainerClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_93

    .line 1233
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 1234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Flags for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getContainerClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getContainerClassName()Ljava/lang/String;

    move-result-object v4

    .line 1238
    :cond_93
    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getDoc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/google/common/flags/Flags;->flag(Lcom/google/common/flags/FlagDescription;)Lcom/google/common/flags/Flag;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/flags/Flags;->getDefaultAsString(Lcom/google/common/flags/Flag;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v2, v5, v6}, Lcom/google/common/flags/Flags;->formatFlag(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 1242
    .end local v0           #descr:Lcom/google/common/flags/FlagDescription;
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    .end local v2           #flagName:Ljava/lang/String;
    :cond_a3
    return-void
.end method

.method private static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .parameter "defaultValue"

    .prologue
    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1262
    .local v0, b:Ljava/lang/StringBuilder;
    instance-of v5, p0, Ljava/util/List;

    if-eqz v5, :cond_27

    move-object v4, p0

    .line 1263
    check-cast v4, Ljava/util/List;

    .line 1264
    .local v4, v:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v1, 0x1

    .line 1265
    .local v1, first:Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1266
    .local v3, o:Ljava/lang/Object;
    if-nez v1, :cond_22

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    :cond_22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1268
    const/4 v1, 0x0

    goto :goto_11

    .line 1270
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #o:Ljava/lang/Object;
    .end local v4           #v:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_27
    instance-of v5, p0, Ljava/lang/Class;

    if-eqz v5, :cond_39

    .line 1271
    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    :cond_34
    :goto_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1273
    .restart local p0
    :cond_39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_34
.end method

.method private static verifyAndResetFlag(Ljava/lang/String;)V
    .registers 5
    .parameter "flagName"

    .prologue
    .line 1642
    invoke-static {}, Lcom/google/common/flags/Flags;->longNameMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flags/FlagDescription;

    .line 1644
    .local v0, desc:Lcom/google/common/flags/FlagDescription;
    if-nez v0, :cond_25

    .line 1645
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid flag name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1649
    :cond_25
    :try_start_25
    invoke-static {v0}, Lcom/google/common/flags/Flags;->flag(Lcom/google/common/flags/FlagDescription;)Lcom/google/common/flags/Flag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/flags/Flag;->resetForTest()V
    :try_end_2c
    .catch Ljava/lang/LinkageError; {:try_start_25 .. :try_end_2c} :catch_2d

    .line 1653
    :goto_2c
    return-void

    .line 1650
    :catch_2d
    move-exception v1

    goto :goto_2c
.end method

.method private static whitelistAllowsAliasing(Lcom/google/common/flags/FlagDescription;)Z
    .registers 5
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    .line 470
    if-nez p0, :cond_9

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 472
    :cond_9
    sget-object v3, Lcom/google/common/flags/Flags$FlagMapHolder;->whitelistedPrefixes:Ljava/util/Collection;

    if-nez v3, :cond_e

    .line 482
    :cond_d
    :goto_d
    return v2

    .line 473
    :cond_e
    sget-object v3, Lcom/google/common/flags/Flags$FlagMapHolder;->whitelistedPrefixes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 474
    .local v1, prefix:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->isField()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getFullyQualifiedFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_3a
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_d

    .line 482
    .end local v1           #prefix:Ljava/lang/String;
    :cond_4d
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static xmlUsage(Ljava/io/PrintWriter;)V
    .registers 10
    .parameter "out"

    .prologue
    .line 1312
    const-string v6, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><AllFlags>"

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1313
    const-string v6, "program"

    invoke-static {}, Lcom/google/common/flags/Flags;->getProgramName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1314
    const-string v6, "usage"

    invoke-static {}, Lcom/google/common/flags/Flags;->getProgramName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1315
    new-instance v5, Ljava/util/TreeMap;

    invoke-static {}, Lcom/google/common/flags/Flags;->canonicalFlagMap()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 1317
    .local v5, sortedMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_30
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ff

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1318
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1319
    .local v4, name:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flags/FlagDescription;

    .line 1321
    .local v0, description:Lcom/google/common/flags/FlagDescription;
    invoke-static {v0}, Lcom/google/common/flags/Flags;->whitelistAllowsAliasing(Lcom/google/common/flags/FlagDescription;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 1323
    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getDocLevel()Lcom/google/common/flags/DocLevel;

    move-result-object v6

    sget-object v7, Lcom/google/common/flags/DocLevel;->PUBLIC:Lcom/google/common/flags/DocLevel;

    if-ne v6, v7, :cond_30

    .line 1324
    invoke-static {v0}, Lcom/google/common/flags/Flags;->flag(Lcom/google/common/flags/FlagDescription;)Lcom/google/common/flags/Flag;

    move-result-object v2

    .line 1325
    .local v2, flag:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<*>;"
    const-string v6, "<flag>"

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1326
    const-string v6, "file"

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getContainerClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1328
    const-string v6, "name"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getAltName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_ae

    .line 1330
    const-string v6, "shortname"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getShortFlagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1333
    :cond_ae
    const-string v6, "meaning"

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getDoc()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1334
    const-string v7, "default"

    invoke-virtual {v2}, Lcom/google/common/flags/Flag;->getDefault()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_f5

    const-string v6, "null"

    :goto_c5
    invoke-static {v7, v6}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    const-string v7, "current"

    invoke-virtual {v2}, Lcom/google/common/flags/Flag;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_fa

    const-string v6, "null"

    :goto_d6
    invoke-static {v7, v6}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1338
    const-string v6, "type"

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/flags/Flags;->simpleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1340
    const-string v6, "</flag>"

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 1334
    :cond_f5
    invoke-static {v2}, Lcom/google/common/flags/Flags;->getDefaultAsString(Lcom/google/common/flags/Flag;)Ljava/lang/String;

    move-result-object v6

    goto :goto_c5

    .line 1336
    :cond_fa
    invoke-static {v2}, Lcom/google/common/flags/Flags;->getAsString(Lcom/google/common/flags/Flag;)Ljava/lang/String;

    move-result-object v6

    goto :goto_d6

    .line 1343
    .end local v0           #description:Lcom/google/common/flags/FlagDescription;
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    .end local v2           #flag:Lcom/google/common/flags/Flag;,"Lcom/google/common/flags/Flag<*>;"
    .end local v4           #name:Ljava/lang/String;
    :cond_ff
    const-string v6, "</AllFlags>"

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 1345
    return-void
.end method
