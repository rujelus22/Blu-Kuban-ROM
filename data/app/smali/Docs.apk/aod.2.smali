.class public final Laod;
.super Ljava/lang/Object;
.source "BytecodeGen.java"


# static fields
.field static final a:Ljava/lang/ClassLoader;

.field static final a:Ljava/lang/String;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field static final a:Ljava/util/logging/Logger;

.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 63
    const-class v0, Laod;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Laod;->a:Ljava/util/logging/Logger;

    .line 65
    const-class v0, Laod;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Laod;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Laod;->a:Ljava/lang/ClassLoader;

    .line 73
    const-class v0, Laod;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\.internal\\..*$"

    const-string v2, ".internal"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laod;->a:Ljava/lang/String;

    .line 121
    const-string v0, "guice.custom.loader"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Laod;->a:Z

    .line 131
    sget-boolean v0, Laod;->a:Z

    if-eqz v0, :cond_53

    .line 132
    new-instance v0, Lajl;

    invoke-direct {v0}, Lajl;-><init>()V

    invoke-virtual {v0}, Lajl;->a()Lajl;

    move-result-object v0

    invoke-virtual {v0}, Lajl;->b()Lajl;

    move-result-object v0

    new-instance v1, Laoe;

    invoke-direct {v1}, Laoe;-><init>()V

    invoke-virtual {v0, v1}, Lajl;->a(LafH;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Laod;->a:Ljava/util/Map;

    .line 146
    :goto_52
    return-void

    .line 144
    :cond_53
    invoke-static {}, LaiC;->a()LaiC;

    move-result-object v0

    sput-object v0, Laod;->a:Ljava/util/Map;

    goto :goto_52
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Laod;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 166
    sget-boolean v0, Laod;->a:Z

    if-nez v0, :cond_5

    .line 192
    :cond_4
    :goto_4
    return-object p1

    .line 171
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 172
    sget-object p1, Laod;->a:Ljava/lang/ClassLoader;

    goto :goto_4

    .line 175
    :cond_14
    invoke-static {p1}, Laod;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    .line 178
    sget-object v0, Laod;->a:Ljava/lang/ClassLoader;

    if-eq p1, v0, :cond_4

    instance-of v0, p1, Laog;

    if-nez v0, :cond_4

    .line 183
    invoke-static {p0}, Laoi;->a(Ljava/lang/Class;)Laoi;

    move-result-object v0

    sget-object v1, Laoi;->a:Laoi;

    if-ne v0, v1, :cond_4

    .line 184
    sget-object v0, Laoh;->a:Laog;

    invoke-virtual {v0}, Laog;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eq p1, v0, :cond_3a

    .line 186
    sget-object v0, Laod;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    move-object p1, v0

    goto :goto_4

    .line 189
    :cond_3a
    sget-object p1, Laoh;->a:Laog;

    goto :goto_4
.end method

.method private static a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 2
    .parameter

    .prologue
    .line 153
    if-eqz p0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    sget-object v0, Laoh;->a:Laog;

    invoke-virtual {v0}, Laog;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_2
.end method
