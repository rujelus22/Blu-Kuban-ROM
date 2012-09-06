.class public final Ldbxyzptlk/B/a;
.super Ljava/util/ArrayList;

# interfaces
.implements Ldbxyzptlk/B/b;
.implements Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string v0, "null"

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2f

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    :cond_29
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1d

    :cond_2f
    invoke-static {v3}, Ldbxyzptlk/B/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    :cond_37
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ldbxyzptlk/B/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ldbxyzptlk/B/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
