.class public final Lakz;
.super Ljava/lang/Object;
.source "Maps.java"


# static fields
.field static final a:LafK;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1982
    sget-object v0, LahZ;->a:LafI;

    const-string v1, "="

    invoke-virtual {v0, v1}, LafI;->a(Ljava/lang/String;)LafK;

    move-result-object v0

    sput-object v0, Lakz;->a:LafK;

    return-void
.end method

.method static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x3

    if-ge p0, v0, :cond_e

    .line 113
    if-ltz p0, :cond_c

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, LafQ;->a(Z)V

    .line 114
    add-int/lit8 v0, p0, 0x1

    .line 119
    :goto_b
    return v0

    .line 113
    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    .line 116
    :cond_e
    const/high16 v0, 0x4000

    if-ge p0, v0, :cond_16

    .line 117
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_b

    .line 119
    :cond_16
    const v0, 0x7fffffff

    goto :goto_b
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1991
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 1993
    :goto_4
    return-object v0

    .line 1992
    :catch_5
    move-exception v0

    .line 1993
    const/4 v0, 0x0

    goto :goto_4
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2074
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, LahZ;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2076
    sget-object v1, Lakz;->a:LafK;

    invoke-virtual {v1, v0, p0}, LafK;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 2077
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static a()Ljava/util/IdentityHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method public static a()Ljava/util/LinkedHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 722
    new-instance v0, Laiz;

    invoke-direct {v0, p0, p1}, Laiz;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2003
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 2005
    :goto_4
    return v0

    .line 2004
    :catch_5
    move-exception v0

    .line 2005
    const/4 v0, 0x0

    goto :goto_4
.end method
