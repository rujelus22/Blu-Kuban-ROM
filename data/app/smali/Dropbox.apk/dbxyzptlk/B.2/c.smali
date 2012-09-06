.class public final Ldbxyzptlk/B/c;
.super Ljava/util/HashMap;

# interfaces
.implements Ldbxyzptlk/B/b;
.implements Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .registers 5

    const/16 v1, 0x22

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-nez p0, :cond_21

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_c
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ldbxyzptlk/B/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    invoke-static {p0, p2}, Ldbxyzptlk/B/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    goto :goto_c
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_5

    const-string v0, "null"

    :goto_4
    return-object v0

    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v1, 0x7b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    if-eqz v0, :cond_38

    const/4 v1, 0x0

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0, v2}, Ldbxyzptlk/B/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move v0, v1

    goto :goto_18

    :cond_38
    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v0

    goto :goto_21

    :cond_3f
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ldbxyzptlk/B/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ldbxyzptlk/B/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
