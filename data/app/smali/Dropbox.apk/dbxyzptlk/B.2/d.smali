.class public final Ldbxyzptlk/B/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 2

    :try_start_0
    new-instance v0, Ldbxyzptlk/C/b;

    invoke-direct {v0}, Ldbxyzptlk/C/b;-><init>()V

    invoke-virtual {v0, p0}, Ldbxyzptlk/C/b;->b(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ldbxyzptlk/B/d;->a(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string v0, "null"

    :goto_4
    return-object v0

    :cond_5
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ldbxyzptlk/B/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_29
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_47

    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_3f

    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_3f
    const-string v0, "null"

    goto :goto_4

    :cond_42
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_47
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_65

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_5d

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_5d
    const-string v0, "null"

    goto :goto_4

    :cond_60
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_65
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6e
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_77
    instance-of v0, p0, Ldbxyzptlk/B/b;

    if-eqz v0, :cond_82

    check-cast p0, Ldbxyzptlk/B/b;

    invoke-interface {p0}, Ldbxyzptlk/B/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_82
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_8e

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Ldbxyzptlk/B/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_8e
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_9a

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ldbxyzptlk/B/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_9a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method

.method static a(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_7d

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_7e

    if-ltz v2, :cond_15

    const/16 v3, 0x1f

    if-le v2, v3, :cond_25

    :cond_15
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1d

    const/16 v3, 0x9f

    if-le v2, v3, :cond_25

    :cond_1d
    const/16 v3, 0x2000

    if-lt v2, v3, :cond_79

    const/16 v3, 0x20ff

    if-gt v2, v3, :cond_79

    :cond_25
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "\\u"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    :goto_2f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_71

    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :sswitch_3f
    const-string v2, "\\\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_47
    const-string v2, "\\\\"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_44

    :sswitch_4d
    const-string v2, "\\b"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_44

    :sswitch_53
    const-string v2, "\\f"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_44

    :sswitch_59
    const-string v2, "\\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_44

    :sswitch_5f
    const-string v2, "\\r"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_44

    :sswitch_65
    const-string v2, "\\t"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_44

    :sswitch_6b
    const-string v2, "\\/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_44

    :cond_71
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_44

    :cond_79
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_44

    :cond_7d
    return-void

    :sswitch_data_7e
    .sparse-switch
        0x8 -> :sswitch_4d
        0x9 -> :sswitch_65
        0xa -> :sswitch_59
        0xc -> :sswitch_53
        0xd -> :sswitch_5f
        0x22 -> :sswitch_3f
        0x2f -> :sswitch_6b
        0x5c -> :sswitch_47
    .end sparse-switch
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0, v0}, Ldbxyzptlk/B/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
