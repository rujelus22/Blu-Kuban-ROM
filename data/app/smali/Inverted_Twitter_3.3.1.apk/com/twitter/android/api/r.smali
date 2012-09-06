.class public final Lcom/twitter/android/api/r;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/HashMap;

.field public static final b:Lorg/codehaus/jackson/a;

.field private static final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/api/r;->a:Ljava/util/HashMap;

    new-instance v0, Lorg/codehaus/jackson/a;

    invoke-direct {v0}, Lorg/codehaus/jackson/a;-><init>()V

    sput-object v0, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/api/r;->c:Ljava/util/HashMap;

    sget-object v0, Lcom/twitter/android/api/r;->a:Ljava/util/HashMap;

    const-string v1, "favorite"

    new-instance v2, Lcom/twitter/android/api/t;

    invoke-direct {v2, v4, v4, v5, v7}, Lcom/twitter/android/api/t;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/r;->a:Ljava/util/HashMap;

    const-string v1, "mention"

    new-instance v2, Lcom/twitter/android/api/t;

    invoke-direct {v2, v5, v4, v4, v5}, Lcom/twitter/android/api/t;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/r;->a:Ljava/util/HashMap;

    const-string v1, "reply"

    new-instance v2, Lcom/twitter/android/api/t;

    invoke-direct {v2, v6, v4, v5, v5}, Lcom/twitter/android/api/t;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/r;->a:Ljava/util/HashMap;

    const-string v1, "retweet"

    new-instance v2, Lcom/twitter/android/api/t;

    invoke-direct {v2, v8, v4, v5, v5}, Lcom/twitter/android/api/t;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/r;->a:Ljava/util/HashMap;

    const-string v1, "follow"

    new-instance v2, Lcom/twitter/android/api/t;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v4, v4, v7}, Lcom/twitter/android/api/t;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/r;->a:Ljava/util/HashMap;

    const-string v1, "list_member_added"

    new-instance v2, Lcom/twitter/android/api/t;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v4, v4, v6}, Lcom/twitter/android/api/t;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/r;->a:Ljava/util/HashMap;

    const-string v1, "list_created"

    new-instance v2, Lcom/twitter/android/api/t;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/twitter/android/api/t;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/r;->c:Ljava/util/HashMap;

    const-string v1, "poi"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/r;->c:Ljava/util/HashMap;

    const-string v1, "neighborhood"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/r;->c:Ljava/util/HashMap;

    const-string v1, "city"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/r;->c:Ljava/util/HashMap;

    const-string v1, "admin"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/api/r;->c:Ljava/util/HashMap;

    const-string v1, "country"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static A(Lorg/codehaus/jackson/JsonParser;)[Lcom/twitter/android/api/TweetMedia;
    .registers 6

    if-eqz p0, :cond_6f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_62

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_62

    sget-object v1, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_72

    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_b

    :sswitch_21
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1c

    :sswitch_25
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "summaries"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "photos"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v1, :cond_41

    if-nez v3, :cond_41

    const-string v4, "players"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_41
    if-eqz v1, :cond_5c

    const/4 v0, 0x3

    :goto_44
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    :goto_48
    if-eqz v1, :cond_1c

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v3, :cond_1c

    invoke-static {p0, v0}, Lcom/twitter/android/api/r;->c(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/TweetMedia;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_48

    :cond_5c
    if-eqz v3, :cond_60

    const/4 v0, 0x1

    goto :goto_44

    :cond_60
    const/4 v0, 0x2

    goto :goto_44

    :cond_62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/twitter/android/api/TweetMedia;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/api/TweetMedia;

    :goto_6e
    return-object v0

    :cond_6f
    const/4 v0, 0x0

    goto :goto_6e

    nop

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_25
        0x7 -> :sswitch_21
    .end sparse-switch
.end method

.method private static B(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/w;
    .registers 10

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v7, v0

    move-object v5, v1

    move-object v2, v0

    move-object v1, v0

    :goto_b
    if-eqz v5, :cond_5a

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_5a

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v5

    aget v5, v8, v5

    sparse-switch v5, :sswitch_data_66

    :cond_20
    :goto_20
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    goto :goto_b

    :sswitch_25
    const-string v5, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_32
    const-string v5, "query"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    const-string v5, "UTF8"

    invoke-static {v2, v5}, Lcom/twitter/android/util/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    :sswitch_45
    const-string v5, "promoted_content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-static {p0}, Lcom/twitter/android/api/PromotedContent;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/PromotedContent;

    move-result-object v7

    goto :goto_20

    :cond_52
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_20

    :sswitch_56
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_20

    :cond_5a
    if-eqz v1, :cond_5e

    if-nez v2, :cond_5f

    :cond_5e
    :goto_5e
    return-object v0

    :cond_5f
    new-instance v0, Lcom/twitter/android/api/w;

    move-wide v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/api/w;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/twitter/android/api/PromotedContent;)V

    goto :goto_5e

    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_56
        0x4 -> :sswitch_25
        0x7 -> :sswitch_45
    .end sparse-switch
.end method

.method private static C(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/u;
    .registers 14

    const/16 v11, 0x5d

    const/16 v10, 0x5b

    const/16 v9, 0x2c

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    :goto_f
    if-eqz v0, :cond_10f

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v6, :cond_10f

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v7, v0

    sparse-switch v0, :sswitch_data_122

    :cond_24
    :goto_24
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    :goto_28
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    move-object v12, v0

    move-object v0, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_f

    :sswitch_33
    const-string v0, "full_name"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    move-object v3, v4

    move-object v12, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_28

    :cond_45
    const-string v0, "place_type"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    move-object v3, v4

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_28

    :cond_57
    const-string v0, "id"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_28

    :sswitch_67
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_28

    :sswitch_6f
    const-string v0, "bounding_box"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v12, v0

    move-object v0, v4

    move-object v4, v12

    :goto_7e
    if-eqz v4, :cond_103

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v6, :cond_103

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v4, v7, v4

    sparse-switch v4, :sswitch_data_130

    :goto_93
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_7e

    :sswitch_98
    const-string v4, "coordinates"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fb

    if-eqz p0, :cond_f9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_af
    if-eqz v4, :cond_f1

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v7, :cond_f1

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v7, :cond_ec

    :goto_b9
    if-eqz v4, :cond_ec

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v7, :cond_ec

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v7, :cond_e5

    invoke-static {p0}, Lcom/twitter/android/api/r;->D(Lorg/codehaus/jackson/JsonParser;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_e5

    if-eqz v0, :cond_ea

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_ce
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e5
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_b9

    :cond_ea
    const/4 v0, 0x1

    goto :goto_ce

    :cond_ec
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_af

    :cond_f1
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_93

    :cond_f9
    move-object v0, v5

    goto :goto_93

    :cond_fb
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_93

    :sswitch_ff
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_93

    :cond_103
    move-object v12, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    goto/16 :goto_28

    :cond_10a
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_24

    :cond_10f
    new-instance v5, Lcom/twitter/android/api/u;

    sget-object v0, Lcom/twitter/android/api/r;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v5, v1, v0, v3, v4}, Lcom/twitter/android/api/u;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v5

    nop

    :sswitch_data_122
    .sparse-switch
        0x1 -> :sswitch_67
        0x4 -> :sswitch_33
        0x7 -> :sswitch_6f
    .end sparse-switch

    :sswitch_data_130
    .sparse-switch
        0x1 -> :sswitch_98
        0x7 -> :sswitch_ff
    .end sparse-switch
.end method

.method private static D(Lorg/codehaus/jackson/JsonParser;)Landroid/util/Pair;
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, v3

    move-object v4, v0

    move-object v0, v3

    :goto_9
    if-eqz v4, :cond_33

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_33

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->j:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_17

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->i:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_1c

    :cond_17
    packed-switch v2, :pswitch_data_40

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    :cond_1c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_9

    :pswitch_21
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->i()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1a

    :pswitch_2a
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->i()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_1a

    :cond_33
    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :goto_3d
    return-object v0

    :cond_3e
    move-object v0, v3

    goto :goto_3d

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_21
        :pswitch_2a
    .end packed-switch
.end method

.method private static E(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/n;
    .registers 25

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    :goto_1e
    if-eqz v3, :cond_157

    sget-object v23, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v23

    if-eq v3, v0, :cond_157

    sget-object v23, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v3, v23, v3

    packed-switch v3, :pswitch_data_17e

    :cond_31
    :goto_31
    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_1e

    :pswitch_36
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v3

    const-string v23, "action"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4e

    const-string v23, "event"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_69

    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v3

    sget-object v23, Lcom/twitter/android/api/r;->a:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/t;

    if-eqz v3, :cond_31

    iget v4, v3, Lcom/twitter/android/api/t;->a:I

    iget v12, v3, Lcom/twitter/android/api/t;->b:I

    iget v15, v3, Lcom/twitter/android/api/t;->c:I

    iget v0, v3, Lcom/twitter/android/api/t;->d:I

    move/from16 v20, v0

    goto :goto_31

    :cond_69
    const-string v23, "created_at"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7e

    sget-object v3, Lcom/twitter/android/util/x;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/twitter/android/util/x;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_31

    :cond_7e
    const-string v23, "max_position"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_91

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_31

    :cond_91
    const-string v23, "min_position"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_31

    :pswitch_a4
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v3

    const-string v23, "sources"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c0

    const/4 v3, 0x1

    if-ne v3, v12, :cond_bb

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v13

    goto/16 :goto_31

    :cond_bb
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_31

    :cond_c0
    const-string v23, "targets"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f2

    packed-switch v15, :pswitch_data_18a

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_31

    :pswitch_d2
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v16

    goto/16 :goto_31

    :pswitch_d8
    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v23

    invoke-static {v0, v3, v1, v2}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/ac;ZZ)Ljava/util/ArrayList;

    move-result-object v17

    goto/16 :goto_31

    :pswitch_e9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/twitter/android/api/r;->d(Lorg/codehaus/jackson/JsonParser;I)Ljava/util/ArrayList;

    move-result-object v18

    goto/16 :goto_31

    :cond_f2
    const-string v23, "target_objects"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11e

    packed-switch v20, :pswitch_data_194

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_31

    :pswitch_104
    const/4 v3, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v3, v1, v2}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/ac;ZZ)Ljava/util/ArrayList;

    move-result-object v21

    goto/16 :goto_31

    :pswitch_115
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/twitter/android/api/r;->d(Lorg/codehaus/jackson/JsonParser;I)Ljava/util/ArrayList;

    move-result-object v22

    goto/16 :goto_31

    :cond_11e
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_31

    :pswitch_123
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v3

    const-string v23, "sources_size"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_137

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v11

    goto/16 :goto_31

    :cond_137
    const-string v23, "targets_size"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_147

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v14

    goto/16 :goto_31

    :cond_147
    const-string v23, "target_objects_size"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v19

    goto/16 :goto_31

    :cond_157
    if-eqz v13, :cond_176

    const/4 v3, 0x1

    if-ne v15, v3, :cond_15e

    if-eqz v16, :cond_176

    :cond_15e
    const/4 v3, 0x2

    if-ne v15, v3, :cond_163

    if-eqz v17, :cond_176

    :cond_163
    const/4 v3, 0x3

    if-ne v15, v3, :cond_168

    if-eqz v18, :cond_176

    :cond_168
    const/4 v3, 0x2

    move/from16 v0, v20

    if-ne v0, v3, :cond_16f

    if-eqz v21, :cond_176

    :cond_16f
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_178

    if-nez v22, :cond_178

    :cond_176
    const/4 v3, 0x0

    :goto_177
    return-object v3

    :cond_178
    new-instance v3, Lcom/twitter/android/api/n;

    invoke-direct/range {v3 .. v22}, Lcom/twitter/android/api/n;-><init>(IJJJIILjava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_177

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_123
        :pswitch_31
        :pswitch_36
    .end packed-switch

    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_d8
        :pswitch_e9
    .end packed-switch

    :pswitch_data_194
    .packed-switch 0x2
        :pswitch_104
        :pswitch_115
    .end packed-switch
.end method

.method private static F(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 10

    const/4 v3, -0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_13
    if-eqz v1, :cond_ac

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_ac

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_a6

    :goto_1d
    if-eqz v1, :cond_9e

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_9e

    sget-object v2, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_b2

    :cond_2e
    :goto_2e
    :pswitch_2e
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_1d

    :pswitch_33
    const-string v1, "query"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :pswitch_44
    const-string v1, "indices"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    :goto_54
    if-eqz v1, :cond_2e

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_2e

    sget-object v2, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_be

    move v1, v3

    move v2, v3

    :cond_67
    if-ltz v2, :cond_7f

    if-ge v2, v1, :cond_7f

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v1, v4, :cond_7f

    :cond_73
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v7, 0x0

    aput v2, v4, v7

    const/4 v2, 0x1

    aput v1, v4, v2

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_54

    :goto_84
    if-eqz v4, :cond_67

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v7, :cond_67

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->i:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v7, :cond_94

    if-ne v2, v3, :cond_99

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v2

    :cond_94
    :goto_94
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_84

    :cond_99
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v1

    goto :goto_94

    :cond_9e
    new-instance v1, Lcom/twitter/android/api/y;

    invoke-direct {v1, v0, v6}, Lcom/twitter/android/api/y;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a6
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto/16 :goto_13

    :cond_ac
    return-object v5

    :pswitch_ad
    move v2, v3

    move-object v4, v1

    move v1, v3

    goto :goto_84

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_44
        :pswitch_2e
        :pswitch_2e
        :pswitch_33
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_ad
    .end packed-switch
.end method

.method private static G(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory;
    .registers 16

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v11, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v9, v1

    move-object v5, v11

    move v1, v2

    move-wide v13, v3

    move-wide v2, v13

    move-object v4, v11

    :goto_12
    if-eqz v9, :cond_11a

    sget-object v10, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v9, v10, :cond_11a

    sget-object v10, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v9}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v9

    aget v9, v10, v9

    packed-switch v9, :pswitch_data_124

    :cond_23
    :goto_23
    :pswitch_23
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    goto :goto_12

    :pswitch_28
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v9

    const-string v10, "data"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_be

    if-ne v1, v0, :cond_a1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    move-object v9, v11

    move-object v10, v11

    :goto_3c
    if-eqz v4, :cond_9b

    sget-object v12, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v12, :cond_9b

    sget-object v12, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v4, v12, v4

    packed-switch v4, :pswitch_data_132

    :cond_4d
    :pswitch_4d
    move-object v4, v9

    move-object v9, v10

    :goto_4f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v10

    move-object v13, v10

    move-object v10, v9

    move-object v9, v4

    move-object v4, v13

    goto :goto_3c

    :pswitch_58
    const-string v4, "title"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v4

    move-object v13, v9

    move-object v9, v4

    move-object v4, v13

    goto :goto_4f

    :pswitch_6c
    const-string v4, "articles"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    :goto_81
    if-eqz v9, :cond_99

    sget-object v12, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v9, v12, :cond_99

    sget-object v12, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v9, v12, :cond_94

    invoke-static {p0}, Lcom/twitter/android/api/r;->L(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$ArticleResponse;

    move-result-object v9

    if-eqz v9, :cond_94

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_94
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    goto :goto_81

    :cond_99
    move-object v9, v10

    goto :goto_4f

    :cond_9b
    new-instance v4, Lcom/twitter/android/api/TwitterStory$Data;

    invoke-direct {v4, v10, v9}, Lcom/twitter/android/api/TwitterStory$Data;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_23

    :cond_a1
    if-ne v1, v6, :cond_a9

    invoke-static {p0}, Lcom/twitter/android/api/r;->I(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Data;

    move-result-object v4

    goto/16 :goto_23

    :cond_a9
    if-ne v1, v7, :cond_b1

    invoke-static {p0}, Lcom/twitter/android/api/r;->J(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Data;

    move-result-object v4

    goto/16 :goto_23

    :cond_b1
    if-ne v1, v8, :cond_b9

    invoke-static {p0}, Lcom/twitter/android/api/r;->H(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Data;

    move-result-object v4

    goto/16 :goto_23

    :cond_b9
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_23

    :cond_be
    const-string v10, "social_proof"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-static {p0}, Lcom/twitter/android/api/r;->K(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$SocialProof;

    move-result-object v5

    goto/16 :goto_23

    :pswitch_cc
    const-string v9, "score"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->i()D

    move-result-wide v2

    goto/16 :goto_23

    :pswitch_de
    const-string v9, "type"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v9

    const-string v10, "news"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f9

    move v1, v0

    goto/16 :goto_23

    :cond_f9
    const-string v10, "topic"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_104

    move v1, v6

    goto/16 :goto_23

    :cond_104
    const-string v10, "user"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10f

    move v1, v7

    goto/16 :goto_23

    :cond_10f
    const-string v10, "event"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    move v1, v8

    goto/16 :goto_23

    :cond_11a
    if-nez v4, :cond_11e

    move-object v0, v11

    :goto_11d
    return-object v0

    :cond_11e
    new-instance v0, Lcom/twitter/android/api/TwitterStory;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/api/TwitterStory;-><init>(IDLcom/twitter/android/api/TwitterStory$Data;Lcom/twitter/android/api/TwitterStory$SocialProof;)V

    goto :goto_11d

    :pswitch_data_124
    .packed-switch 0x4
        :pswitch_de
        :pswitch_23
        :pswitch_23
        :pswitch_28
        :pswitch_cc
    .end packed-switch

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_4d
        :pswitch_4d
        :pswitch_58
    .end packed-switch
.end method

.method private static H(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Data;
    .registers 13

    const/4 v11, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v3, v2

    :goto_7
    if-eqz v0, :cond_175

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_175

    sget-object v1, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_17c

    :cond_18
    :goto_18
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_7

    :sswitch_1d
    const-string v0, "events"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v6, v2

    move-object v9, v2

    move-object v10, v2

    move-object v8, v2

    move-object v7, v2

    :goto_32
    if-eqz v0, :cond_167

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_167

    sget-object v1, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_186

    :cond_43
    :pswitch_43
    move-object v0, v9

    move-object v1, v10

    :goto_45
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    move-object v9, v0

    move-object v10, v1

    move-object v0, v3

    goto :goto_32

    :pswitch_4d
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move v5, v11

    move v4, v11

    move-object v1, v2

    :goto_60
    if-eqz v0, :cond_c7

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v3, :cond_c7

    sget-object v3, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_192

    :cond_71
    :goto_71
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_60

    :pswitch_76
    const-string v0, "thumbnail"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    :cond_82
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v3, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v7

    aget v3, v3, v7

    packed-switch v3, :pswitch_data_198

    :cond_91
    :goto_91
    :pswitch_91
    if-eqz v0, :cond_71

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_82

    goto :goto_71

    :pswitch_98
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v3

    const-string v7, "url"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_91

    :pswitch_a9
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v3

    const-string v7, "width"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ba

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v5

    goto :goto_91

    :cond_ba
    const-string v7, "height"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v4

    goto :goto_91

    :cond_c7
    new-instance v0, Lcom/twitter/android/api/TwitterStory$Media;

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/api/TwitterStory$Media;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v1, v10

    move-object v7, v0

    move-object v0, v9

    goto/16 :goto_45

    :cond_d2
    const-string v1, "urls"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v3, v0

    move-object v1, v2

    move-object v0, v2

    :goto_e1
    if-eqz v3, :cond_12b

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_12b

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_115

    const-string v3, "m5"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_127

    :cond_f7
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_10f

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "display_url"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11a

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    :cond_10f
    :goto_10f
    if-eqz v3, :cond_115

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_f7

    :cond_115
    :goto_115
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_e1

    :cond_11a
    const-string v5, "url"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10f

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_10f

    :cond_127
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_115

    :cond_12b
    new-instance v8, Lcom/twitter/android/api/TwitterStory$EventUrl;

    invoke-direct {v8, v1, v0}, Lcom/twitter/android/api/TwitterStory$EventUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v9

    move-object v1, v10

    goto/16 :goto_45

    :pswitch_134
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_148

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_45

    :cond_148
    const-string v1, "description"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_157

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    move-object v1, v10

    goto/16 :goto_45

    :cond_157
    const-string v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    move-object v0, v9

    move-object v1, v10

    goto/16 :goto_45

    :cond_167
    new-instance v3, Lcom/twitter/android/api/TwitterStory$EventResponse;

    move-object v4, v10

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/twitter/android/api/TwitterStory$EventResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/TwitterStory$Media;Lcom/twitter/android/api/TwitterStory$EventUrl;)V

    goto/16 :goto_18

    :sswitch_170
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_18

    :cond_175
    new-instance v0, Lcom/twitter/android/api/TwitterStory$Data;

    invoke-direct {v0, v2, v3}, Lcom/twitter/android/api/TwitterStory$Data;-><init>(Ljava/lang/String;Lcom/twitter/android/api/TwitterStory$EventResponse;)V

    return-object v0

    nop

    :sswitch_data_17c
    .sparse-switch
        0x1 -> :sswitch_1d
        0x7 -> :sswitch_170
    .end sparse-switch

    :pswitch_data_186
    .packed-switch 0x4
        :pswitch_134
        :pswitch_43
        :pswitch_43
        :pswitch_4d
    .end packed-switch

    :pswitch_data_192
    .packed-switch 0x7
        :pswitch_76
    .end packed-switch

    :pswitch_data_198
    .packed-switch 0x2
        :pswitch_a9
        :pswitch_91
        :pswitch_98
    .end packed-switch
.end method

.method private static I(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Data;
    .registers 19

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    const/4 v3, 0x0

    :goto_9
    if-eqz v1, :cond_9e

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_9e

    sget-object v2, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_154

    :cond_1a
    :goto_1a
    :pswitch_1a
    move-object v1, v3

    move-object v2, v12

    move v4, v14

    move-object v5, v15

    move-object v3, v13

    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v6

    move-object v12, v2

    move-object v13, v3

    move v14, v4

    move-object v15, v5

    move-object v3, v1

    move-object v1, v6

    goto :goto_9

    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    move-object v2, v12

    move v4, v14

    move-object v5, v1

    move-object v1, v3

    move-object v3, v13

    goto :goto_1f

    :cond_40
    const-string v2, "name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    move-object v2, v12

    move v4, v14

    move-object v5, v15

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v1, v17

    goto :goto_1f

    :pswitch_55
    const-string v1, "media"

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/r;->M(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    move v4, v14

    move-object v5, v15

    move-object v1, v3

    move-object v3, v13

    goto :goto_1f

    :pswitch_6b
    const-string v1, "tweet_count"

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v1

    move-object v2, v12

    move v4, v1

    move-object v5, v15

    move-object v1, v3

    move-object v3, v13

    goto :goto_1f

    :pswitch_81
    const-string v1, "tweet"

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/ac;)Lcom/twitter/android/api/aa;

    move-result-object v1

    move-object v2, v12

    move-object v3, v13

    move v4, v14

    move-object v5, v15

    goto :goto_1f

    :cond_99
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_1a

    :cond_9e
    if-eqz v12, :cond_10b

    if-eqz v3, :cond_10b

    iget-object v1, v3, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    if-eqz v1, :cond_10b

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/TwitterStory$Media;

    const/4 v4, 0x0

    iget-object v2, v1, Lcom/twitter/android/api/TwitterStory$Media;->a:Ljava/lang/String;

    if-eqz v2, :cond_10b

    iget-object v2, v1, Lcom/twitter/android/api/TwitterStory$Media;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/android/util/j;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10b

    iget-object v2, v3, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    iget-object v2, v2, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    if-eqz v2, :cond_152

    iget-object v2, v3, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    iget-object v2, v2, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_152

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/TweetEntities$Media;

    iget-object v2, v2, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    iget-object v6, v1, Lcom/twitter/android/api/TwitterStory$Media;->a:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/twitter/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c8

    const/4 v2, 0x1

    :goto_df
    if-nez v2, :cond_10b

    new-instance v2, Lcom/twitter/android/api/TweetEntities$Media;

    invoke-direct {v2}, Lcom/twitter/android/api/TweetEntities$Media;-><init>()V

    iget-object v4, v1, Lcom/twitter/android/api/TwitterStory$Media;->url:Ljava/lang/String;

    iput-object v4, v2, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    iget-object v4, v1, Lcom/twitter/android/api/TwitterStory$Media;->url:Ljava/lang/String;

    iput-object v4, v2, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    iget-object v1, v1, Lcom/twitter/android/api/TwitterStory$Media;->url:Ljava/lang/String;

    iput-object v1, v2, Lcom/twitter/android/api/TweetEntities$Media;->expandedUrl:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v2, Lcom/twitter/android/api/TweetEntities$Media;->type:I

    iget-object v1, v3, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    iget-object v1, v1, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    if-nez v1, :cond_104

    iget-object v1, v3, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    :cond_104
    iget-object v1, v3, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    iget-object v1, v1, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10b
    const/4 v10, 0x0

    if-eqz v3, :cond_150

    invoke-virtual {v3}, Lcom/twitter/android/api/aa;->b()Lcom/twitter/android/api/aa;

    move-result-object v16

    new-instance v1, Lcom/twitter/android/api/TwitterStory$Status;

    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/twitter/android/api/aa;->a:J

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    iget-wide v4, v4, Lcom/twitter/android/api/ac;->a:J

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    iget-object v6, v6, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    iget-object v7, v7, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    iget-object v8, v8, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/twitter/android/api/aa;->h:Ljava/lang/String;

    move-object/from16 v0, v16

    iget v10, v0, Lcom/twitter/android/api/aa;->o:I

    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    invoke-direct/range {v1 .. v11}, Lcom/twitter/android/api/TwitterStory$Status;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/twitter/android/api/TweetEntities;)V

    move-object/from16 v9, v16

    move-object v10, v1

    :goto_142
    new-instance v1, Lcom/twitter/android/api/TwitterStory$Data;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object v5, v15

    move-object v6, v12

    move v7, v14

    move-object v8, v13

    invoke-direct/range {v1 .. v11}, Lcom/twitter/android/api/TwitterStory$Data;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/twitter/android/api/TwitterStory$EventResponse;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;Lcom/twitter/android/api/aa;Lcom/twitter/android/api/TwitterStory$Status;Ljava/util/ArrayList;)V

    return-object v1

    :cond_150
    move-object v9, v3

    goto :goto_142

    :cond_152
    move v2, v4

    goto :goto_df

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_55
        :pswitch_6b
        :pswitch_1a
        :pswitch_2a
        :pswitch_1a
        :pswitch_1a
        :pswitch_81
    .end packed-switch
.end method

.method private static J(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Data;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    :goto_7
    if-eqz v2, :cond_44

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_44

    const-string v3, "users"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    :goto_19
    if-eqz v2, :cond_3f

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_3f

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_3a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v2

    if-nez v0, :cond_32

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_32
    new-instance v3, Lcom/twitter/android/api/TwitterStory$User;

    invoke-direct {v3, v2}, Lcom/twitter/android/api/TwitterStory$User;-><init>(Lcom/twitter/android/api/ac;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_19

    :cond_3f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_7

    :cond_44
    if-nez v0, :cond_48

    move-object v0, v1

    :goto_47
    return-object v0

    :cond_48
    new-instance v1, Lcom/twitter/android/api/TwitterStory$Data;

    invoke-direct {v1, v0}, Lcom/twitter/android/api/TwitterStory$Data;-><init>(Ljava/util/ArrayList;)V

    move-object v0, v1

    goto :goto_47
.end method

.method private static K(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$SocialProof;
    .registers 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v4, v6

    move v2, v7

    move v3, v7

    move v1, v7

    :goto_b
    if-eqz v0, :cond_93

    sget-object v8, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v8, :cond_93

    sget-object v8, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_ec

    :cond_1c
    :goto_1c
    :pswitch_1c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_b

    :pswitch_21
    const-string v8, "referenced_by"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    move-object v3, v0

    move-object v0, v4

    :goto_2f
    if-eqz v3, :cond_e7

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_e7

    sget-object v4, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_f8

    :cond_40
    :goto_40
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_2f

    :pswitch_45
    const-string v3, "global_count"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v1

    goto :goto_40

    :pswitch_56
    const-string v3, "statuses"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-static {p0, v6, v7, v7}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/ac;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_40

    :cond_67
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_40

    :cond_6b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1c

    :pswitch_6f
    const-string v0, "social_proof_type"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    const-string v8, "social"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    move v2, v5

    goto :goto_1c

    :cond_89
    const-string v8, "query"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v2, 0x2

    goto :goto_1c

    :cond_93
    if-eqz v4, :cond_e5

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e5

    if-lez v3, :cond_e5

    if-eqz v2, :cond_e5

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_ad
    :goto_ad
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/aa;

    iget-object v0, v0, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    iget-wide v8, v0, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ad

    new-instance v9, Lcom/twitter/android/api/TwitterStory$User;

    invoke-direct {v9, v0}, Lcom/twitter/android/api/TwitterStory$User;-><init>(Lcom/twitter/android/api/ac;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_ad

    :cond_d3
    new-instance v0, Lcom/twitter/android/api/TwitterStory$SocialProof;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/twitter/android/api/TwitterStory$User;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/twitter/android/api/TwitterStory$User;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/api/TwitterStory$SocialProof;-><init>(IIILjava/util/ArrayList;[Lcom/twitter/android/api/TwitterStory$User;)V

    :goto_e4
    return-object v0

    :cond_e5
    move-object v0, v6

    goto :goto_e4

    :cond_e7
    move-object v4, v0

    move v3, v5

    goto/16 :goto_1c

    nop

    :pswitch_data_ec
    .packed-switch 0x4
        :pswitch_6f
        :pswitch_1c
        :pswitch_1c
        :pswitch_21
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_56
        :pswitch_45
    .end packed-switch
.end method

.method private static L(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$ArticleResponse;
    .registers 16

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_e
    if-eqz v0, :cond_102

    sget-object v11, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v11, :cond_102

    sget-object v11, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v11, v0

    packed-switch v0, :pswitch_data_10c

    :cond_1f
    :goto_1f
    :pswitch_1f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_e

    :pswitch_24
    const-string v0, "url"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v14, v0

    move-object v0, v2

    move-object v2, v14

    :goto_3a
    if-eqz v2, :cond_7d

    sget-object v13, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v13, :cond_7d

    sget-object v13, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v13, :cond_108

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    const-string v13, "display_url"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_60

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    move-object v14, v11

    move-object v11, v2

    move-object v2, v14

    :goto_57
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v12

    move-object v14, v12

    move-object v12, v11

    move-object v11, v2

    move-object v2, v14

    goto :goto_3a

    :cond_60
    const-string v13, "expanded_url"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6e

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    move-object v11, v12

    goto :goto_57

    :cond_6e
    const-string v13, "url"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    move-object v2, v11

    move-object v11, v12

    goto :goto_57

    :cond_7d
    new-instance v2, Lcom/twitter/android/api/TwitterStory$ArticleUrl;

    invoke-direct {v2, v12, v11, v0}, Lcom/twitter/android/api/TwitterStory$ArticleUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :pswitch_83
    const-string v0, "media"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p0}, Lcom/twitter/android/api/r;->M(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_1f

    :pswitch_94
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    const-string v11, "title"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a6

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1f

    :cond_a6
    const-string v11, "description"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b4

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1f

    :cond_b4
    const-string v11, "attribution"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1f

    :cond_c2
    const-string v11, "query"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1f

    :cond_d0
    const-string v11, "name"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1f

    :pswitch_de
    const-string v0, "tweet_count"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v4

    goto/16 :goto_1f

    :pswitch_f0
    const-string v0, "score"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->i()D

    move-result-wide v6

    goto/16 :goto_1f

    :cond_102
    new-instance v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;

    invoke-direct/range {v0 .. v10}, Lcom/twitter/android/api/TwitterStory$ArticleResponse;-><init>(Ljava/lang/String;Lcom/twitter/android/api/TwitterStory$ArticleUrl;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    :cond_108
    move-object v2, v11

    move-object v11, v12

    goto/16 :goto_57

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_83
        :pswitch_de
        :pswitch_1f
        :pswitch_94
        :pswitch_1f
        :pswitch_1f
        :pswitch_24
        :pswitch_f0
    .end packed-switch
.end method

.method private static M(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_21

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_21

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1c

    invoke-static {p0}, Lcom/twitter/android/api/r;->N(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Media;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_9

    :cond_21
    return-object v1
.end method

.method private static N(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory$Media;
    .registers 11

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v2, v0

    move-object v1, v3

    move-object v5, v3

    move-object v6, v3

    move-object v0, v3

    :goto_b
    if-eqz v2, :cond_c6

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v7, :cond_c6

    sget-object v7, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v7, v2

    packed-switch v2, :pswitch_data_da

    :cond_1c
    :pswitch_1c
    move-object v2, v5

    move-object v5, v6

    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v2

    move-object v2, v9

    goto :goto_b

    :pswitch_27
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    const-string v7, "type"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v3

    move-object v2, v5

    move-object v5, v6

    goto :goto_1e

    :cond_3a
    const-string v7, "media_url_https"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    move-object v2, v5

    move-object v5, v6

    goto :goto_1e

    :cond_49
    const-string v7, "media_url"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    move-object v2, v5

    move-object v5, v6

    goto :goto_1e

    :pswitch_58
    const-string v2, "sizes"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :goto_64
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v7, :cond_c1

    const-string v7, "large"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_be

    :cond_78
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v8, :cond_ad

    const-string v8, "url_https"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ad

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_96

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    :cond_96
    :goto_96
    if-eqz v2, :cond_9c

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v7, :cond_78

    :cond_9c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    move-object v9, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v9

    :goto_a4
    if-eqz v6, :cond_1e

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v6, v7, :cond_1e

    move-object v6, v5

    move-object v5, v2

    goto :goto_64

    :cond_ad
    sget-object v8, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v8, :cond_96

    const-string v8, "url"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v5

    goto :goto_96

    :cond_be
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    :cond_c1
    move-object v9, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v9

    goto :goto_a4

    :cond_c6
    if-nez v1, :cond_d8

    move-object v2, v0

    :goto_c9
    if-nez v6, :cond_d6

    move-object v1, v5

    :goto_cc
    if-nez v1, :cond_cf

    move-object v1, v2

    :cond_cf
    new-instance v0, Lcom/twitter/android/api/TwitterStory$Media;

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/api/TwitterStory$Media;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :cond_d6
    move-object v1, v6

    goto :goto_cc

    :cond_d8
    move-object v2, v1

    goto :goto_c9

    :pswitch_data_da
    .packed-switch 0x4
        :pswitch_27
        :pswitch_1c
        :pswitch_1c
        :pswitch_58
    .end packed-switch
.end method

.method private static O(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_2f

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_2f

    sget-object v1, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_32

    :cond_15
    :goto_15
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_4

    :sswitch_1a
    const-string v0, "suggestion"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    return-object v0

    :sswitch_2b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_15

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2a

    nop

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_2b
        0x4 -> :sswitch_1a
        0x7 -> :sswitch_2b
    .end sparse-switch
.end method

.method private static P(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/ab;
    .registers 30

    const-wide/16 v1, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/16 v28, 0x0

    const/16 v27, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_11
    if-eqz v0, :cond_fc

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v6, :cond_fc

    sget-object v6, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_132

    :cond_22
    :goto_22
    :pswitch_22
    move-object/from16 v0, v26

    move-wide v6, v1

    move/from16 v2, v28

    move/from16 v1, v27

    :goto_29
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    move-object/from16 v26, v0

    move/from16 v27, v1

    move/from16 v28, v2

    move-object v0, v8

    move-wide v1, v6

    goto :goto_11

    :pswitch_36
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    const-string v6, "name"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    move-wide v6, v1

    move/from16 v2, v28

    move/from16 v1, v27

    goto :goto_29

    :cond_4e
    const-string v6, "screen_name"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    move-wide v6, v1

    move/from16 v2, v28

    move/from16 v1, v27

    goto :goto_29

    :cond_62
    const-string v6, "profile_image_url_https"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-wide v6, v1

    move/from16 v2, v28

    move/from16 v1, v27

    goto :goto_29

    :cond_76
    const-string v6, "location"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v26

    move-wide v6, v1

    move/from16 v2, v28

    move/from16 v1, v27

    goto :goto_29

    :pswitch_8a
    const-string v0, "verified"

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v11, 0x1

    move-object/from16 v0, v26

    move-wide v6, v1

    move/from16 v2, v28

    move/from16 v1, v27

    goto :goto_29

    :pswitch_9f
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v1

    move-object/from16 v0, v26

    move-wide v6, v1

    move/from16 v2, v28

    move/from16 v1, v27

    goto/16 :goto_29

    :cond_b8
    const-string v6, "rounded_score"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v0

    move-wide v6, v1

    move/from16 v1, v27

    move v2, v0

    move-object/from16 v0, v26

    goto/16 :goto_29

    :cond_cc
    const-string v6, "rounded_graph_weight"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v0

    move-wide v6, v1

    move v1, v0

    move/from16 v2, v28

    move-object/from16 v0, v26

    goto/16 :goto_29

    :pswitch_e0
    const-string v0, "tokens"

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/r;->R(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    move-wide v6, v1

    move/from16 v2, v28

    move/from16 v1, v27

    goto/16 :goto_29

    :cond_f7
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_22

    :cond_fc
    if-nez v26, :cond_100

    const/4 v0, 0x0

    :goto_ff
    return-object v0

    :cond_100
    new-instance v0, Lcom/twitter/android/api/ac;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/twitter/android/api/ac;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;IJIZIJLcom/twitter/android/api/aa;JILcom/twitter/android/api/PromotedContent;)V

    new-instance v8, Lcom/twitter/android/api/ab;

    const/4 v4, 0x1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object v1, v8

    move v2, v4

    move/from16 v4, v28

    move/from16 v5, v27

    move-object/from16 v6, v26

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/twitter/android/api/ab;-><init>(ILjava/lang/String;IILjava/util/ArrayList;Lcom/twitter/android/api/ac;)V

    move-object v0, v8

    goto :goto_ff

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_e0
        :pswitch_9f
        :pswitch_22
        :pswitch_36
        :pswitch_22
        :pswitch_8a
    .end packed-switch
.end method

.method private static Q(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/ab;
    .registers 8

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v5, v6

    move v3, v4

    move-object v2, v6

    :goto_9
    if-eqz v0, :cond_56

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_56

    sget-object v1, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_62

    :cond_1a
    :goto_1a
    :pswitch_1a
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_9

    :pswitch_1f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "topic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :pswitch_30
    const-string v0, "rounded_score"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v3

    goto :goto_1a

    :pswitch_41
    const-string v0, "tokens"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {p0}, Lcom/twitter/android/api/r;->R(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_1a

    :cond_52
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1a

    :cond_56
    if-nez v5, :cond_59

    :goto_58
    return-object v6

    :cond_59
    new-instance v0, Lcom/twitter/android/api/ab;

    const/4 v1, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/api/ab;-><init>(ILjava/lang/String;IILjava/util/ArrayList;Lcom/twitter/android/api/ac;)V

    move-object v6, v0

    goto :goto_58

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_41
        :pswitch_30
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method

.method private static R(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_3e

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_3e

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_39

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_17
    if-eqz v0, :cond_39

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_39

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_34

    const-string v0, "token"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_17

    :cond_39
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_9

    :cond_3e
    return-object v1
.end method

.method private static a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/ac;)Lcom/twitter/android/api/aa;
    .registers 55

    const/4 v5, 0x0

    const-wide/16 v30, -0x1

    const/16 v23, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v27, 0x0

    const-wide/16 v35, -0x1

    const-wide/16 v37, -0x1

    const/16 v39, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const-wide/16 v28, -0x1

    const/16 v40, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_2a
    if-eqz v2, :cond_30d

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_30d

    sget-object v3, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_3d6

    :cond_3b
    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    :goto_43
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    move-object/from16 v27, v3

    move-object/from16 v23, v4

    move-wide/from16 v30, v5

    move-object v4, v2

    move-object v5, v7

    move-object v2, v8

    goto :goto_2a

    :pswitch_51
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "created_at"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v52, v2

    move-object v2, v4

    move-object/from16 v4, v52

    goto :goto_43

    :cond_6c
    const-string v3, "source"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e7

    const-string v2, "<a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e0

    const/16 v2, 0x3e

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_d9

    const/16 v6, 0x3c

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_d2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v6, "href=\""

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_d0

    add-int/lit8 v6, v6, 0x6

    const/16 v7, 0x22

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_ce

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_b2
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v6

    :goto_b8
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v33, v3

    move-object/from16 v32, v2

    move-object v7, v5

    move-object/from16 v3, v27

    move-wide/from16 v5, v30

    move-object v2, v4

    move-object/from16 v4, v23

    goto/16 :goto_43

    :cond_ce
    const/4 v3, 0x0

    goto :goto_b2

    :cond_d0
    const/4 v3, 0x0

    goto :goto_b2

    :cond_d2
    const/4 v2, 0x0

    move-object/from16 v52, v3

    move-object v3, v2

    move-object/from16 v2, v52

    goto :goto_b2

    :cond_d9
    const/4 v2, 0x0

    move-object/from16 v52, v3

    move-object v3, v2

    move-object/from16 v2, v52

    goto :goto_b2

    :cond_e0
    const/4 v2, 0x0

    move-object/from16 v52, v3

    move-object v3, v2

    move-object/from16 v2, v52

    goto :goto_b2

    :cond_e7
    new-instance v2, Landroid/util/Pair;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v2

    goto :goto_b8

    :cond_ef
    const-string v3, "text"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_104

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object v2, v4

    move-object/from16 v4, v23

    goto/16 :goto_43

    :cond_104
    const-string v3, "retweet_count"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string v2, "100+"

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/16 v21, 0x64

    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :pswitch_124
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13d

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v2

    move-object v7, v5

    move-wide v5, v2

    move-object/from16 v3, v27

    move-object v2, v4

    move-object/from16 v4, v23

    goto/16 :goto_43

    :cond_13d
    const-string v3, "in_reply_to_user_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_153

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v35

    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :cond_153
    const-string v3, "in_reply_to_status_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_169

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v37

    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :cond_169
    const-string v3, "retweet_count"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v21

    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :pswitch_17f
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "favorited"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/16 v39, 0x0

    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :pswitch_197
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "favorited"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/16 v39, 0x1

    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :pswitch_1af
    const-string v2, "current_user_retweet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1da

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_1bb
    if-eqz v2, :cond_3b

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_3b

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->i:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_1d5

    const-string v2, "id"

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d5

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v28

    :cond_1d5
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_1bb

    :cond_1da
    const-string v2, "user"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v19

    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :cond_1f4
    const-string v2, "coordinates"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_255

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    const/4 v3, 0x0

    :goto_201
    if-eqz v2, :cond_24b

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v6, :cond_24b

    sget-object v6, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v6, v2

    sparse-switch v2, :sswitch_data_3e6

    :goto_212
    move-object v2, v3

    :goto_213
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    move-object/from16 v52, v2

    move-object v2, v3

    move-object/from16 v3, v52

    goto :goto_201

    :sswitch_21d
    const-string v2, "coordinates"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23d

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/r;->D(Lorg/codehaus/jackson/JsonParser;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_23b

    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v40

    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_23b
    move-object v2, v3

    goto :goto_213

    :cond_23d
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    move-object v2, v3

    goto :goto_213

    :sswitch_242
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_213

    :sswitch_247
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_212

    :cond_24b
    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :cond_255
    const-string v2, "place"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26b

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/r;->C(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/u;

    move-result-object v17

    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :cond_26b
    const-string v2, "retweeted_status"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_281

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/r;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/aa;

    move-result-object v18

    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :cond_281
    const-string v2, "entities"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_297

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/TweetEntities;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TweetEntities;

    move-result-object v20

    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :cond_297
    const-string v2, "metadata"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c7

    :cond_29f
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_2b7

    const-string v3, "result_type"

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b7

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v22

    :cond_2b7
    if-eqz v2, :cond_3b

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_29f

    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :cond_2c7
    const-string v2, "promoted_content"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2dd

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/PromotedContent;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/PromotedContent;

    move-result-object v25

    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :cond_2dd
    const-string v2, "cards"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f2

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/r;->A(Lorg/codehaus/jackson/JsonParser;)[Lcom/twitter/android/api/TweetMedia;

    move-result-object v2

    move-object/from16 v3, v27

    move-object/from16 v4, v23

    move-object v7, v5

    move-wide/from16 v5, v30

    goto/16 :goto_43

    :cond_2f2
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    move-object v2, v4

    move-object/from16 v3, v27

    move-object v7, v5

    move-wide/from16 v5, v30

    move-object/from16 v4, v23

    goto/16 :goto_43

    :pswitch_2ff
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v27

    move-wide/from16 v5, v30

    move-object v7, v2

    move-object v2, v4

    move-object/from16 v4, v23

    goto/16 :goto_43

    :cond_30d
    if-eqz v20, :cond_35b

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    if-eqz v2, :cond_35b

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35b

    if-nez v4, :cond_356

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/twitter/android/api/TweetEntities$Media;

    iget-object v2, v10, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_356

    const/4 v2, 0x1

    new-array v0, v2, [Lcom/twitter/android/api/TweetMedia;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    new-instance v2, Lcom/twitter/android/api/TweetMedia;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v10, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    iget-object v7, v10, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, v10, Lcom/twitter/android/api/TweetEntities$Media;->width:I

    iget v10, v10, Lcom/twitter/android/api/TweetEntities$Media;->height:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v2 .. v15}, Lcom/twitter/android/api/TweetMedia;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/ac;)V

    aput-object v2, v24, v26

    move-object/from16 v4, v24

    :cond_356
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    :cond_35b
    move-object/from16 v26, v4

    if-eqz v25, :cond_3bb

    const/4 v2, 0x1

    :goto_360
    sget-object v3, Lcom/twitter/android/util/x;->a:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/twitter/android/util/x;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v5

    const-string v3, "popular"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_374

    if-eqz v2, :cond_3bd

    :cond_374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    :goto_378
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/twitter/android/api/r;->a(Ljava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v2, -0x1

    cmp-long v2, v28, v2

    if-eqz v2, :cond_3c0

    if-nez v18, :cond_3c0

    new-instance v2, Lcom/twitter/android/api/aa;

    const/16 v18, 0x0

    move-wide/from16 v3, v30

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move-wide/from16 v10, v35

    move-wide/from16 v12, v37

    move/from16 v14, v39

    move-object/from16 v15, v40

    invoke-direct/range {v2 .. v26}, Lcom/twitter/android/api/aa;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/u;Lcom/twitter/android/api/aa;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/TweetEntities;ILjava/lang/String;JLcom/twitter/android/api/PromotedContent;[Lcom/twitter/android/api/TweetMedia;)V

    new-instance v27, Lcom/twitter/android/api/aa;

    move-wide/from16 v30, v5

    move-object/from16 v34, v9

    move-object/from16 v41, v16

    move-object/from16 v42, v17

    move-object/from16 v43, v2

    move-object/from16 v44, p1

    move-object/from16 v45, v20

    move/from16 v46, v21

    move-object/from16 v47, v22

    move-wide/from16 v48, v23

    move-object/from16 v50, v25

    move-object/from16 v51, v26

    invoke-direct/range {v27 .. v51}, Lcom/twitter/android/api/aa;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/u;Lcom/twitter/android/api/aa;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/TweetEntities;ILjava/lang/String;JLcom/twitter/android/api/PromotedContent;[Lcom/twitter/android/api/TweetMedia;)V

    :goto_3ba
    return-object v27

    :cond_3bb
    const/4 v2, 0x0

    goto :goto_360

    :cond_3bd
    move-wide/from16 v23, v5

    goto :goto_378

    :cond_3c0
    new-instance v2, Lcom/twitter/android/api/aa;

    move-wide/from16 v3, v30

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move-wide/from16 v10, v35

    move-wide/from16 v12, v37

    move/from16 v14, v39

    move-object/from16 v15, v40

    invoke-direct/range {v2 .. v26}, Lcom/twitter/android/api/aa;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/u;Lcom/twitter/android/api/aa;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/TweetEntities;ILjava/lang/String;JLcom/twitter/android/api/PromotedContent;[Lcom/twitter/android/api/TweetMedia;)V

    move-object/from16 v27, v2

    goto :goto_3ba

    :pswitch_data_3d6
    .packed-switch 0x2
        :pswitch_124
        :pswitch_2ff
        :pswitch_51
        :pswitch_17f
        :pswitch_197
        :pswitch_1af
    .end packed-switch

    :sswitch_data_3e6
    .sparse-switch
        0x1 -> :sswitch_21d
        0x3 -> :sswitch_242
        0x7 -> :sswitch_247
    .end sparse-switch
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;
    .registers 33

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-wide/16 v21, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v20, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v25, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v26, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object/from16 v27, v1

    move-object v1, v2

    move-wide/from16 v28, v21

    move-object/from16 v22, v3

    move-object/from16 v21, v9

    move-wide/from16 v2, v28

    move-object/from16 v9, v27

    :goto_2e
    if-eqz v9, :cond_399

    sget-object v23, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v23

    if-eq v9, v0, :cond_399

    sget-object v23, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v9}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v9

    aget v9, v23, v9

    packed-switch v9, :pswitch_data_3b0

    :cond_41
    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    :goto_4d
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-wide/from16 v2, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v7

    move-object/from16 v7, v27

    goto :goto_2e

    :pswitch_5e
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v9

    const-string v23, "name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7d

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto :goto_4d

    :cond_7d
    const-string v23, "screen_name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_98

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto :goto_4d

    :cond_98
    const-string v23, "profile_image_url_https"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b3

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto :goto_4d

    :cond_b3
    const-string v23, "description"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_cb

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-wide/from16 v20, v2

    move-object v3, v9

    move-object/from16 v2, v27

    goto :goto_4d

    :cond_cb
    const-string v23, "url_https"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e7

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_e7
    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_103

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_103
    const-string v23, "location"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11f

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_11f
    const-string v23, "created_at"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_154

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v9

    :try_start_12d
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_130
    .catch Ljava/lang/NumberFormatException; {:try_start_12d .. :try_end_130} :catch_13f

    move-result-wide v15

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :catch_13f
    move-exception v15

    sget-object v15, Lcom/twitter/android/util/x;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v15, v9}, Lcom/twitter/android/util/x;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_154
    const-string v23, "profile_background_color"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    const/high16 v9, -0x100

    :try_start_160
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_169
    .catch Ljava/lang/NumberFormatException; {:try_start_160 .. :try_end_169} :catch_179

    move-result v10

    or-int/2addr v10, v9

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :catch_179
    move-exception v9

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :pswitch_188
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v9

    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a8

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v2

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_1a8
    const-string v23, "followers_count"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1c4

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v8

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_1c4
    const-string v23, "friends_count"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v14

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_1e0
    const-string v23, "statuses_count"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1fc

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v17

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_1fc
    const-string v23, "favourites_count"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v25

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :pswitch_218
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v9

    const-string v23, "protected"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_235

    const/4 v11, 0x0

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_235
    const-string v23, "geo_enabled"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    const/16 v18, 0x0

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :pswitch_24f
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v9

    const-string v23, "protected"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_26c

    const/4 v11, 0x1

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_26c
    const-string v23, "verified"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_285

    const/4 v12, 0x1

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_285
    const-string v23, "geo_enabled"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_29f

    const/16 v18, 0x1

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_29f
    const-string v23, "following"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2be

    const/4 v9, 0x1

    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v19

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_2be
    const-string v23, "followed_by"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2dd

    const/4 v9, 0x2

    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v19

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_2dd
    const-string v23, "blocking"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2fc

    const/4 v9, 0x4

    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v19

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_2fc
    const-string v23, "can_dm"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_31c

    const/16 v9, 0x8

    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v19

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_31c
    const-string v23, "notifications"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    const/16 v9, 0x10

    move/from16 v0, v19

    invoke-static {v0, v9}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v19

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :pswitch_33c
    const-string v9, "status"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35b

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/ac;)Lcom/twitter/android/api/aa;

    move-result-object v22

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_35b
    const-string v9, "promoted_content"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_377

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/api/PromotedContent;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/PromotedContent;

    move-result-object v26

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_377
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :pswitch_388
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v27, v7

    move-object v7, v9

    move-object/from16 v28, v20

    move-wide/from16 v20, v2

    move-object/from16 v3, v28

    move-object/from16 v2, v27

    goto/16 :goto_4d

    :cond_399
    if-nez v7, :cond_3ad

    move-object v9, v1

    :goto_39c
    new-instance v1, Lcom/twitter/android/api/ac;

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/twitter/android/api/r;->a(Ljava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v20, 0x0

    move-wide/from16 v23, p1

    invoke-direct/range {v1 .. v26}, Lcom/twitter/android/api/ac;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;IJIZIJLcom/twitter/android/api/aa;JILcom/twitter/android/api/PromotedContent;)V

    return-object v1

    :cond_3ad
    move-object v9, v7

    goto :goto_39c

    nop

    :pswitch_data_3b0
    .packed-switch 0x2
        :pswitch_188
        :pswitch_388
        :pswitch_5e
        :pswitch_218
        :pswitch_24f
        :pswitch_33c
    .end packed-switch
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/o;
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    :goto_8
    if-eqz v4, :cond_4c

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_4c

    sget-object v5, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_56

    :cond_19
    :goto_19
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_8

    :pswitch_1e
    const-string v5, "users"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-static {p0}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_19

    :cond_2b
    :goto_2b
    if-eqz v4, :cond_19

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_19

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_2b

    :pswitch_36
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "next_cursor"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :pswitch_47
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_4c
    if-nez v1, :cond_50

    move-object v0, v3

    :goto_4f
    return-object v0

    :cond_50
    new-instance v0, Lcom/twitter/android/api/o;

    invoke-direct {v0, v2, v1}, Lcom/twitter/android/api/o;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_4f

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_36
        :pswitch_47
    .end packed-switch
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/o;
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    :goto_8
    if-eqz v4, :cond_4c

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_4c

    sget-object v5, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_56

    :cond_19
    :goto_19
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_8

    :pswitch_1e
    const-string v5, "lists"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-static {p0, p1}, Lcom/twitter/android/api/r;->d(Lorg/codehaus/jackson/JsonParser;I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_19

    :cond_2b
    :goto_2b
    if-eqz v4, :cond_19

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_19

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_2b

    :pswitch_36
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "next_cursor"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :pswitch_47
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_4c
    if-nez v1, :cond_50

    move-object v0, v3

    :goto_4f
    return-object v0

    :cond_50
    new-instance v0, Lcom/twitter/android/api/o;

    invoke-direct {v0, v2, v1}, Lcom/twitter/android/api/o;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_4f

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_36
        :pswitch_47
    .end packed-switch
.end method

.method public static a(Lcom/twitter/android/api/ac;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/StringWriter;

    const/16 v1, 0x200

    invoke-direct {v2, v1}, Ljava/io/StringWriter;-><init>(I)V

    sget-object v1, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/a;->a(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_9e

    move-result-object v1

    :try_start_e
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    const-string v0, "id"

    iget-wide v3, p0, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {v1, v0, v3, v4}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;J)V

    const-string v0, "screen_name"

    iget-object v3, p0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    if-eqz v0, :cond_2a

    const-string v0, "name"

    iget-object v3, p0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    iget-object v0, p0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    if-eqz v0, :cond_35

    const-string v0, "profile_image_url_https"

    iget-object v3, p0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    iget-object v0, p0, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    if-eqz v0, :cond_40

    const-string v0, "description"

    iget-object v3, p0, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    iget-object v0, p0, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    if-eqz v0, :cond_4b

    const-string v0, "url_https"

    iget-object v3, p0, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    iget-object v0, p0, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    if-eqz v0, :cond_56

    const-string v0, "location"

    iget-object v3, p0, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    iget-wide v3, p0, Lcom/twitter/android/api/ac;->m:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_69

    const-string v0, "created_at"

    iget-wide v3, p0, Lcom/twitter/android/api/ac;->m:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    const-string v0, "friends_count"

    iget v3, p0, Lcom/twitter/android/api/ac;->l:I

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;I)V

    const-string v0, "followers_count"

    iget v3, p0, Lcom/twitter/android/api/ac;->k:I

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;I)V

    const-string v0, "statuses_count"

    iget v3, p0, Lcom/twitter/android/api/ac;->n:I

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;I)V

    const-string v0, "geo_enabled"

    iget-boolean v3, p0, Lcom/twitter/android/api/ac;->p:Z

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Z)V

    const-string v0, "protected"

    iget-boolean v3, p0, Lcom/twitter/android/api/ac;->h:Z

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_99
    .catchall {:try_start_e .. :try_end_99} :catchall_ae
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_99} :catch_b0

    move-result-object v0

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    :goto_9d
    return-object v0

    :catch_9e
    move-exception v1

    move-object v1, v0

    :goto_a0
    const-string v0, ""

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_9d

    :catchall_a6
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_aa
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_ae
    move-exception v0

    goto :goto_aa

    :catch_b0
    move-exception v0

    goto :goto_a0
.end method

.method private static a(Ljava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/twitter/android/util/a;->c:Lcom/twitter/android/util/a;

    invoke-virtual {v0, p0}, Lcom/twitter/android/util/a;->a(Ljava/lang/String;)Lcom/twitter/android/util/e;

    move-result-object v0

    if-eqz p1, :cond_55

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/twitter/android/util/e;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/twitter/android/util/e;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/twitter/android/api/TweetEntities;->a(Ljava/util/ArrayList;)V

    sget-object v0, Lcom/twitter/android/util/k;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_25
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    sub-int/2addr v6, v0

    sub-int v7, v6, v5

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v0, v7

    const-string v7, " "

    invoke-virtual {v2, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v5, v7, v1

    const/4 v5, 0x1

    add-int/lit8 v6, v6, -0x1

    aput v6, v7, v5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_4d
    invoke-virtual {p1, v4}, Lcom/twitter/android/api/TweetEntities;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_55
    iget-object v0, v0, Lcom/twitter/android/util/e;->a:Ljava/lang/String;

    const-string v1, "((\\s\\s+)|\\n|\\r)"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    sget-object v1, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    invoke-virtual {v1, p0}, Lorg/codehaus/jackson/a;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_16
    if-eqz v2, :cond_2e

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_2e

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v4, :cond_29

    invoke-static {v3}, Lcom/twitter/android/api/r;->D(Lorg/codehaus/jackson/JsonParser;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2c} :catch_30

    move-result-object v2

    goto :goto_16

    :cond_2e
    move-object v0, v1

    goto :goto_3

    :catch_30
    move-exception v1

    goto :goto_3
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/ac;ZZ)Ljava/util/ArrayList;
    .registers 15

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_6e

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    const/4 v1, 0x0

    :goto_13
    if-eqz v0, :cond_55

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v6, :cond_55

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v6, :cond_71

    invoke-static {p0, p1}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/ac;)Lcom/twitter/android/api/aa;

    move-result-object v0

    if-eqz p2, :cond_2f

    invoke-virtual {v0}, Lcom/twitter/android/api/aa;->d()Z

    move-result v6

    if-eqz v6, :cond_2f

    if-eqz v1, :cond_2f

    iget-wide v6, v1, Lcom/twitter/android/api/aa;->e:J

    iput-wide v6, v0, Lcom/twitter/android/api/aa;->e:J

    :cond_2f
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_6f

    invoke-virtual {v0}, Lcom/twitter/android/api/aa;->c()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v1, v2

    :goto_3e
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    move-object v8, v0

    move-object v0, v3

    move-wide v9, v1

    move-wide v2, v9

    move-object v1, v8

    goto :goto_13

    :cond_48
    invoke-virtual {v0}, Lcom/twitter/android/api/aa;->d()Z

    move-result v1

    if-nez v1, :cond_6f

    iget-wide v6, v0, Lcom/twitter/android/api/aa;->e:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_3e

    :cond_55
    if-eqz p3, :cond_6e

    const-wide/16 v0, 0x1

    add-long v1, v2, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/aa;

    iput-wide v1, v0, Lcom/twitter/android/api/aa;->e:J

    goto :goto_5f

    :cond_6e
    return-object v4

    :cond_6f
    move-wide v1, v2

    goto :goto_3e

    :cond_71
    move-object v0, v1

    move-wide v8, v2

    move-wide v1, v8

    goto :goto_3e
.end method

.method private static b(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ae;
    .registers 8

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    :goto_d
    if-eqz v3, :cond_4d

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_4d

    sget-object v4, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v3, v4, v3

    sparse-switch v3, :sswitch_data_58

    :goto_1e
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_d

    :sswitch_23
    const-string v3, "user"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-static {p0, p1, p2}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v1

    goto :goto_1e

    :cond_34
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1e

    :sswitch_38
    const-string v3, "connections"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-static {p0}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1e

    :cond_49
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1e

    :cond_4d
    if-nez v1, :cond_51

    move-object v0, v2

    :goto_50
    return-object v0

    :cond_51
    new-instance v2, Lcom/twitter/android/api/ae;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/api/ae;-><init>(Lcom/twitter/android/api/ac;Ljava/util/ArrayList;)V

    move-object v0, v2

    goto :goto_50

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_38
        0x7 -> :sswitch_23
    .end sparse-switch
.end method

.method public static b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/q;
    .registers 15

    const/4 v10, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v12, v0

    move-object v0, v10

    move-object v10, v12

    :goto_11
    if-eqz v10, :cond_b0

    sget-object v11, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v10, v11, :cond_b0

    sget-object v11, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v10}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v10

    aget v10, v11, v10

    packed-switch v10, :pswitch_data_b8

    :cond_22
    :goto_22
    :pswitch_22
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v10

    goto :goto_11

    :pswitch_27
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    :cond_38
    const-string v11, "full_name"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_45

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v4

    goto :goto_22

    :cond_45
    const-string v11, "description"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_52

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v5

    goto :goto_22

    :cond_52
    const-string v11, "mode"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v8

    const-string v10, "public"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_68

    const/4 v8, 0x0

    goto :goto_22

    :cond_68
    const/4 v8, 0x1

    goto :goto_22

    :pswitch_6a
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v10

    const-string v11, "member_count"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v6

    goto :goto_22

    :cond_7b
    const-string v11, "subscriber_count"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_88

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v7

    goto :goto_22

    :cond_88
    const-string v11, "id"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v1

    goto :goto_22

    :pswitch_95
    const-string v10, "user"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a5

    const-wide/16 v9, 0x0

    invoke-static {p0, v9, v10}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v9

    goto/16 :goto_22

    :cond_a5
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_22

    :pswitch_aa
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :cond_b0
    new-instance v0, Lcom/twitter/android/api/q;

    move v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/twitter/android/api/q;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/twitter/android/api/ac;I)V

    return-object v0

    nop

    :pswitch_data_b8
    .packed-switch 0x2
        :pswitch_6a
        :pswitch_aa
        :pswitch_27
        :pswitch_22
        :pswitch_22
        :pswitch_95
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    const-string v1, "[^a-zA-Z0-9_]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    array-length v2, v1

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    aget-object v0, v1, v0

    goto :goto_b
.end method

.method public static b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_f
    if-eqz v0, :cond_25

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_25

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_20

    invoke-static {p0, v2, v3}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_f

    :cond_25
    return-object v1
.end method

.method private static c(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/TweetMedia;
    .registers 20

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    :goto_10
    if-eqz v1, :cond_1e0

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_1e0

    sget-object v2, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    sparse-switch v1, :sswitch_data_21e

    :cond_21
    :goto_21
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_10

    :sswitch_26
    const-string v1, "players"

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    :goto_36
    if-eqz v1, :cond_21

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_21

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_e8

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v15

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_46
    if-eqz v15, :cond_74

    sget-object v16, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_74

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v15

    const-string v16, "source_url"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_65

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    :cond_60
    :goto_60
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v15

    goto :goto_46

    :cond_65
    const-string v16, "source_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_60

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_60

    :cond_74
    const-string v15, "text/html"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8e

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8e

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8e

    move-object v11, v2

    :cond_89
    :goto_89
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_36

    :cond_8e
    if-eqz v1, :cond_89

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_89

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_89

    const-string v15, "video/mp4"

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_af

    const-string v15, "avc1.42E0"

    invoke-virtual {v1, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_af

    const/4 v10, 0x1

    move-object v12, v2

    goto :goto_89

    :cond_af
    const-string v15, "audio/mp3"

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_bf

    const-string v15, "audio/aac"

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c2

    :cond_bf
    const/4 v10, 0x2

    move-object v12, v2

    goto :goto_89

    :cond_c2
    const-string v15, "audio/mp4"

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d5

    const-string v15, "mp4a.40.2"

    invoke-virtual {v1, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_d5

    const/4 v10, 0x2

    move-object v12, v2

    goto :goto_89

    :cond_d5
    const-string v15, "audio/ogg"

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_89

    const-string v15, "vorbis"

    invoke-virtual {v1, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v10, 0x2

    move-object v12, v2

    goto :goto_89

    :cond_e8
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_89

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_89

    :cond_f0
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_21

    :sswitch_f5
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "site_user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v13

    goto/16 :goto_21

    :cond_10b
    const-string v2, "author_user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v14

    goto/16 :goto_21

    :cond_11d
    const-string v2, "images"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    :goto_129
    if-eqz v1, :cond_21

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_21

    sget-object v2, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    sparse-switch v1, :sswitch_data_22c

    :goto_13a
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_129

    :sswitch_13f
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_13a

    :sswitch_143
    const-string v1, "mobile"

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move v2, v8

    move-object v8, v1

    move v1, v9

    move-object/from16 v17, v7

    move-object v7, v6

    move-object/from16 v6, v17

    :goto_15b
    if-eqz v8, :cond_215

    sget-object v9, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v8, v9, :cond_215

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v8}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v8

    aget v8, v15, v8

    packed-switch v8, :pswitch_data_236

    :cond_170
    :goto_170
    :pswitch_170
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    goto :goto_15b

    :pswitch_175
    const-string v8, "width"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_182

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v2

    goto :goto_170

    :cond_182
    const-string v8, "height"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_170

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v1

    goto :goto_170

    :pswitch_18f
    const-string v8, "image_url"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19c

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v7

    goto :goto_170

    :cond_19c
    const-string v8, "image_url_2x"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_170

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    goto :goto_170

    :cond_1a9
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_13a

    :cond_1ad
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_21

    :sswitch_1b2
    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c4

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_21

    :cond_1c4
    const-string v2, "title"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d2

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_21

    :cond_1d2
    const-string v2, "description"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_21

    :cond_1e0
    packed-switch p1, :pswitch_data_240

    :cond_1e3
    new-instance v1, Lcom/twitter/android/api/TweetMedia;

    move/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Lcom/twitter/android/api/TweetMedia;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/ac;)V

    :goto_1ea
    return-object v1

    :pswitch_1eb
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e3

    const/4 v1, 0x0

    goto :goto_1ea

    :pswitch_1f9
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e3

    const/4 v1, 0x0

    goto :goto_1ea

    :pswitch_207
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e3

    const/4 v1, 0x0

    goto :goto_1ea

    :cond_215
    move v9, v1

    move v8, v2

    move-object/from16 v17, v6

    move-object v6, v7

    move-object/from16 v7, v17

    goto/16 :goto_13a

    :sswitch_data_21e
    .sparse-switch
        0x1 -> :sswitch_26
        0x4 -> :sswitch_1b2
        0x7 -> :sswitch_f5
    .end sparse-switch

    :sswitch_data_22c
    .sparse-switch
        0x1 -> :sswitch_13f
        0x7 -> :sswitch_143
    .end sparse-switch

    :pswitch_data_236
    .packed-switch 0x2
        :pswitch_175
        :pswitch_170
        :pswitch_18f
    .end packed-switch

    :pswitch_data_240
    .packed-switch 0x1
        :pswitch_1eb
        :pswitch_1f9
        :pswitch_207
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;)Lcom/twitter/android/api/ac;
    .registers 4

    sget-object v0, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/a;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/ac;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/aa;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/ac;)Lcom/twitter/android/api/aa;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lorg/codehaus/jackson/JsonParser;I)Ljava/util/ArrayList;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_21

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_21

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1c

    invoke-static {p0, p1}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/q;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_b

    :cond_21
    return-object v1
.end method

.method public static e(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_21

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_21

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1c

    invoke-static {p0}, Lcom/twitter/android/api/r;->f(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/p;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_b

    :cond_21
    return-object v1
.end method

.method public static f(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/p;
    .registers 16

    const/4 v4, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_bb

    sget-object v9, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v9, :cond_bb

    sget-object v9, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v9, v0

    packed-switch v0, :pswitch_data_cc

    :cond_1d
    :pswitch_1d
    move-object v0, v5

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    :goto_22
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    move-object v11, v5

    move-object v5, v0

    move-object v0, v11

    move-object v12, v1

    move-wide v13, v2

    move-wide v1, v13

    move-object v3, v12

    goto :goto_c

    :pswitch_2e
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    const-string v9, "created_at"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    move-object v0, v5

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto :goto_22

    :cond_44
    const-string v9, "text"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto :goto_22

    :pswitch_55
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    const-string v9, "id"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v1

    move-object v0, v5

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto :goto_22

    :pswitch_6b
    const-string v0, "sender"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-wide/16 v9, 0x0

    invoke-static {p0, v9, v10}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v6

    move-object v0, v5

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto :goto_22

    :cond_7f
    const-string v0, "recipient"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    const-wide/16 v9, 0x0

    invoke-static {p0, v9, v10}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ac;

    move-result-object v7

    move-object v0, v5

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto :goto_22

    :cond_93
    const-string v0, "entities"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-static {p0}, Lcom/twitter/android/api/TweetEntities;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TweetEntities;

    move-result-object v8

    move-object v0, v5

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto/16 :goto_22

    :cond_a6
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    move-object v0, v5

    move-object v11, v3

    move-wide v12, v1

    move-wide v2, v12

    move-object v1, v11

    goto/16 :goto_22

    :pswitch_b0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v0, v5

    move-wide v11, v1

    move-object v1, v3

    move-wide v2, v11

    goto/16 :goto_22

    :cond_bb
    new-instance v0, Lcom/twitter/android/api/p;

    sget-object v4, Lcom/twitter/android/util/x;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v3}, Lcom/twitter/android/util/x;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v5, v8}, Lcom/twitter/android/api/r;->a(Ljava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/api/p;-><init>(JJLjava/lang/String;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/TweetEntities;)V

    return-object v0

    nop

    :pswitch_data_cc
    .packed-switch 0x2
        :pswitch_55
        :pswitch_b0
        :pswitch_2e
        :pswitch_1d
        :pswitch_1d
        :pswitch_6b
    .end packed-switch
.end method

.method public static g(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 11

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_96

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_d
    if-eqz v0, :cond_7c

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v3, :cond_7c

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_73

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-wide v8, v1

    move-object v2, v0

    move-wide v0, v8

    :goto_1e
    if-eqz v2, :cond_74

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_74

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_98

    :cond_33
    :goto_33
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_1e

    :sswitch_38
    const-string v2, "as_of"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object v0, Lcom/twitter/android/util/x;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/util/x;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_33

    :sswitch_4b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_33

    :sswitch_4f
    const-string v5, "trends"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    :goto_57
    if-eqz v2, :cond_33

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_33

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_6a

    invoke-static {p0}, Lcom/twitter/android/api/r;->B(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/w;

    move-result-object v2

    if-eqz v2, :cond_6a

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_57

    :cond_6f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_33

    :cond_73
    move-wide v0, v1

    :cond_74
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    move-wide v8, v0

    move-object v0, v2

    move-wide v1, v8

    goto :goto_d

    :cond_7c
    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/w;

    int-to-long v6, v3

    add-long/2addr v6, v1

    iput-wide v6, v0, Lcom/twitter/android/api/w;->h:J

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_82

    :cond_96
    return-object v4

    nop

    :sswitch_data_98
    .sparse-switch
        0x1 -> :sswitch_4f
        0x4 -> :sswitch_38
        0x7 -> :sswitch_4b
    .end sparse-switch
.end method

.method public static h(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/i;
    .registers 10

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v4, v0

    move-wide v7, v1

    move-wide v0, v7

    move v2, v3

    :goto_b
    if-eqz v4, :cond_50

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_50

    sget-object v5, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v4, v5, v4

    sparse-switch v4, :sswitch_data_5a

    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_b

    :sswitch_21
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "remaining_hits"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v3

    goto :goto_1c

    :cond_32
    const-string v5, "hourly_limit"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v2

    goto :goto_1c

    :cond_3f
    const-string v5, "reset_time_in_seconds"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v0

    goto :goto_1c

    :sswitch_4c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1c

    :cond_50
    new-instance v4, Lcom/twitter/android/api/i;

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    invoke-direct {v4, v3, v2, v0, v1}, Lcom/twitter/android/api/i;-><init>(IIJ)V

    return-object v4

    nop

    :sswitch_data_5a
    .sparse-switch
        0x2 -> :sswitch_21
        0x7 -> :sswitch_4c
    .end sparse-switch
.end method

.method public static i(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/c;
    .registers 5

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    if-eqz v1, :cond_30

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_30

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v1, v3, v1

    sparse-switch v1, :sswitch_data_36

    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_5

    :sswitch_1f
    const-string v1, "short_url_length"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v0

    goto :goto_1a

    :sswitch_2c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1a

    :cond_30
    new-instance v1, Lcom/twitter/android/api/c;

    invoke-direct {v1, v0}, Lcom/twitter/android/api/c;-><init>(I)V

    return-object v1

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_1f
        0x7 -> :sswitch_2c
    .end sparse-switch
.end method

.method public static j(Lorg/codehaus/jackson/JsonParser;)I
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v3

    :goto_8
    if-eqz v2, :cond_b9

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_b9

    sget-object v4, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    sparse-switch v2, :sswitch_data_ba

    :cond_19
    :goto_19
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_8

    :sswitch_1e
    const-string v2, "relationship"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_2a
    if-eqz v2, :cond_19

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_19

    sget-object v4, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    sparse-switch v2, :sswitch_data_c4

    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_2a

    :sswitch_40
    const-string v2, "source"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v2, v1

    move v1, v3

    :goto_4e
    if-eqz v2, :cond_3b

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_3b

    sget-object v4, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_ce

    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_4e

    :pswitch_64
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    const-string v4, "following"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v1

    goto :goto_5f

    :cond_76
    const-string v4, "followed_by"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v1

    goto :goto_5f

    :cond_84
    const-string v4, "blocking"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v1

    goto :goto_5f

    :cond_92
    const-string v4, "can_dm"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v1

    goto :goto_5f

    :pswitch_a1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_5f

    :cond_a5
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_3b

    :sswitch_a9
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_ae
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_19

    :sswitch_b3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_19

    :cond_b9
    return v1

    :sswitch_data_ba
    .sparse-switch
        0x3 -> :sswitch_b3
        0x7 -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_c4
    .sparse-switch
        0x3 -> :sswitch_a9
        0x7 -> :sswitch_40
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x6
        :pswitch_64
        :pswitch_a1
    .end packed-switch
.end method

.method public static k(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    :goto_7
    if-eqz v2, :cond_74

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_74

    sget-object v3, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_76

    :cond_18
    :goto_18
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_7

    :sswitch_1d
    const-string v3, "result"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    :goto_25
    if-eqz v2, :cond_18

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_18

    sget-object v3, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_80

    :cond_36
    :goto_36
    :pswitch_36
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_25

    :pswitch_3b
    const-string v2, "places"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_4c
    if-eqz v2, :cond_36

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_36

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_5d

    invoke-static {p0}, Lcom/twitter/android/api/r;->C(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_4c

    :cond_62
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_36

    :pswitch_66
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :cond_6b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_18

    :sswitch_6f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_74
    return-object v1

    nop

    :sswitch_data_76
    .sparse-switch
        0x3 -> :sswitch_6f
        0x7 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_36
        :pswitch_66
    .end packed-switch
.end method

.method public static l(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_25

    :goto_f
    if-eqz v0, :cond_25

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_25

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_20

    invoke-static {p0}, Lcom/twitter/android/api/r;->m(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/w;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_f

    :cond_25
    return-object v1
.end method

.method public static m(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/w;
    .registers 11

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v2, v7

    move-object v1, v7

    move-wide v5, v3

    :goto_a
    if-eqz v0, :cond_5e

    sget-object v8, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v8, :cond_5e

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v9, v0

    packed-switch v0, :pswitch_data_64

    :cond_1f
    :goto_1f
    :pswitch_1f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_a

    :pswitch_24
    const-string v0, "id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v5

    goto :goto_1f

    :pswitch_31
    const-string v0, "name"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_3e
    const-string v0, "query"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_4b
    const-string v0, "created_at"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/twitter/android/util/x;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/twitter/android/util/x;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1f

    :cond_5e
    new-instance v0, Lcom/twitter/android/api/w;

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/api/w;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/twitter/android/api/PromotedContent;)V

    return-object v0

    :pswitch_data_64
    .packed-switch 0x2
        :pswitch_24
        :pswitch_1f
        :pswitch_31
    .end packed-switch
.end method

.method public static n(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 9

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_76

    move-object v2, v6

    move-object v1, v6

    :goto_10
    if-eqz v0, :cond_76

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v3, :cond_76

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_71

    move-object v5, v6

    :goto_1b
    if-eqz v0, :cond_60

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v3, :cond_60

    sget-object v3, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_78

    :cond_2c
    :goto_2c
    :pswitch_2c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1b

    :pswitch_31
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    const-string v3, "name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    :cond_42
    const-string v3, "slug"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_2c

    :pswitch_4f
    const-string v0, "sample"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p0}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_2c

    :cond_60
    if-eqz v1, :cond_71

    if-eqz v2, :cond_71

    new-instance v0, Lcom/twitter/android/api/w;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/api/w;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_10

    :cond_76
    return-object v7

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_2c
        :pswitch_2c
        :pswitch_31
    .end packed-switch
.end method

.method public static o(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    move-object v1, v0

    :goto_6
    if-eqz v2, :cond_39

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_39

    sget-object v3, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3a

    :cond_17
    :goto_17
    :pswitch_17
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_6

    :pswitch_1c
    const-string v3, "users"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-static {p0}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_17

    :cond_29
    :goto_29
    if-eqz v2, :cond_17

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_17

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_29

    :pswitch_34
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_39
    return-object v1

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_17
        :pswitch_34
    .end packed-switch
.end method

.method public static p(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_51

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    const/4 v0, 0x0

    :goto_c
    if-eqz v1, :cond_51

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v3, :cond_51

    sget-object v3, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_52

    :cond_1d
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_c

    :goto_22
    :pswitch_22
    if-eqz v1, :cond_1d

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v3, :cond_1d

    sget-object v3, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_58

    :cond_33
    :goto_33
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_22

    :pswitch_38
    const-string v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :pswitch_4c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_51
    return-object v2

    :pswitch_data_52
    .packed-switch 0x7
        :pswitch_22
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x2
        :pswitch_38
        :pswitch_4c
    .end packed-switch
.end method

.method public static q(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/e;
    .registers 15

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, -0x1

    if-eqz p0, :cond_79

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    :goto_e
    if-eqz v8, :cond_79

    sget-object v9, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v8, v9, :cond_79

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v8}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v8

    aget v8, v10, v8

    sparse-switch v8, :sswitch_data_88

    :cond_23
    :goto_23
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    goto :goto_e

    :sswitch_28
    const-string v8, "scribe_interval"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    mul-long/2addr v5, v8

    goto :goto_23

    :cond_38
    const-string v8, "scribe_crash_sample_size"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v4

    goto :goto_23

    :cond_45
    const-string v8, "scribe_error_sample_size"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v3

    goto :goto_23

    :cond_52
    const-string v8, "typeahead_users_ttl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v1

    const-wide/16 v8, 0x3e8

    mul-long/2addr v1, v8

    goto :goto_23

    :cond_62
    const-string v8, "cache_version"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v0

    goto :goto_23

    :sswitch_6f
    const-string v8, "scribe_enabled"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    const/4 v7, 0x1

    goto :goto_23

    :cond_79
    move v8, v0

    move-wide v11, v1

    move v1, v7

    move v13, v3

    move-wide v2, v5

    move v5, v4

    move-wide v6, v11

    move v4, v13

    new-instance v0, Lcom/twitter/android/api/e;

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/api/e;-><init>(ZJIIJI)V

    return-object v0

    nop

    :sswitch_data_88
    .sparse-switch
        0x2 -> :sswitch_28
        0x6 -> :sswitch_6f
    .end sparse-switch
.end method

.method public static r(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_21

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_21

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1c

    invoke-static {p0}, Lcom/twitter/android/api/r;->E(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/n;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_9

    :cond_21
    return-object v1
.end method

.method public static s(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/x;
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v4, v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    move-object v0, v5

    :goto_a
    if-eqz v4, :cond_9b

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v6, :cond_9b

    sget-object v6, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v4, v6, v4

    packed-switch v4, :pswitch_data_a2

    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_a

    :pswitch_20
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v4

    const-string v6, "statuses"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v5, v3, v4}, Lcom/twitter/android/api/r;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/ac;ZZ)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1b

    :cond_33
    const-string v6, "stories"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-static {p0}, Lcom/twitter/android/api/r;->t(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1b

    :cond_40
    const-string v6, "related_queries"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    :goto_51
    if-eqz v4, :cond_1b

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v6, :cond_1b

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v6, :cond_89

    :goto_5b
    if-eqz v4, :cond_89

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v6, :cond_89

    sget-object v6, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v4, v6, v4

    packed-switch v4, :pswitch_data_a8

    :goto_6c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_5b

    :pswitch_71
    const-string v4, "query"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_85
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_6c

    :cond_89
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_51

    :cond_8e
    const-string v6, "spelling_corrections"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {p0}, Lcom/twitter/android/api/r;->F(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1b

    :cond_9b
    new-instance v4, Lcom/twitter/android/api/x;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/twitter/android/api/x;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v4

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x4
        :pswitch_71
    .end packed-switch
.end method

.method public static t(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_21

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_21

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_1c

    invoke-static {p0}, Lcom/twitter/android/api/r;->G(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TwitterStory;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_9

    :cond_21
    return-object v1
.end method

.method public static u(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_88

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_88

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_88

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_88

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_1d
    if-eqz v0, :cond_88

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_88

    sget-object v2, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_8a

    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1d

    :sswitch_33
    const-string v2, "results"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    :goto_3f
    if-eqz v0, :cond_2e

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_2e

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_7b

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_4d
    if-eqz v0, :cond_7b

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_7b

    sget-object v2, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_94

    :goto_5e
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_4d

    :pswitch_63
    const-string v0, "value"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-static {p0}, Lcom/twitter/android/api/r;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/aa;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_77
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_5e

    :cond_7b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_3f

    :cond_80
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2e

    :sswitch_84
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2e

    :cond_88
    return-object v1

    nop

    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_33
        0x7 -> :sswitch_84
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x7
        :pswitch_63
    .end packed-switch
.end method

.method public static v(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_28

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_28

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_23

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    invoke-static {p0, v2, v3}, Lcom/twitter/android/api/r;->b(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/ae;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_d

    :cond_28
    return-object v1
.end method

.method public static w(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/ai;
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v4, :cond_71

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_13
    if-eqz v2, :cond_71

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_71

    sget-object v4, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_78

    :cond_24
    :goto_24
    :pswitch_24
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_13

    :pswitch_29
    const-string v4, "suggestions"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    :goto_35
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v4, :cond_24

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v4, :cond_46

    invoke-static {p0}, Lcom/twitter/android/api/r;->O(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_35

    :pswitch_4b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_24

    :pswitch_4f
    const-string v2, "msg"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :pswitch_60
    const-string v2, "valid"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Z

    move-result v1

    goto :goto_24

    :cond_71
    new-instance v2, Lcom/twitter/android/api/ai;

    invoke-direct {v2, v1, v0, v3}, Lcom/twitter/android/api/ai;-><init>(ZLjava/lang/String;Ljava/util/ArrayList;)V

    return-object v2

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_29
        :pswitch_24
        :pswitch_24
        :pswitch_4f
        :pswitch_60
        :pswitch_60
        :pswitch_4b
    .end packed-switch
.end method

.method public static x(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/a;
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_bc

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    :cond_d
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/twitter/android/api/s;->a:[I

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v7

    aget v6, v6, v7

    sparse-switch v6, :sswitch_data_c4

    :cond_1c
    :goto_1c
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_d

    move-object v5, v0

    move-object v8, v1

    move-object v1, v4

    move-object v4, v8

    :goto_24
    new-instance v0, Lcom/twitter/android/api/a;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/api/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[J)V

    return-object v0

    :sswitch_2a
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v6

    const-string v7, "favoriters_count"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    :cond_3b
    const-string v7, "repliers_count"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    :cond_48
    const-string v7, "retweeters_count"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :sswitch_55
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v6

    const-string v7, "favoriters"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_85

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_66
    if-eqz v5, :cond_80

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_80

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->i:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_7b

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    goto :goto_66

    :cond_80
    invoke-static {v1}, Lcom/twitter/android/util/x;->b(Ljava/util/Collection;)[J

    move-result-object v1

    goto :goto_1c

    :cond_85
    const-string v7, "retweeters"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_92
    if-eqz v5, :cond_ac

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_ac

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->i:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_a7

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a7
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    goto :goto_92

    :cond_ac
    invoke-static {v0}, Lcom/twitter/android/util/x;->b(Ljava/util/Collection;)[J

    move-result-object v0

    goto/16 :goto_1c

    :cond_b2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_1c

    :sswitch_b7
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_1c

    :cond_bc
    move-object v5, v0

    move-object v4, v0

    move-object v2, v0

    move-object v3, v0

    move-object v1, v0

    goto/16 :goto_24

    nop

    :sswitch_data_c4
    .sparse-switch
        0x1 -> :sswitch_55
        0x4 -> :sswitch_2a
        0x7 -> :sswitch_b7
    .end sparse-switch
.end method

.method public static y(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    const/4 v0, 0x0

    :goto_7
    if-eqz v1, :cond_7c

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v4, :cond_7c

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v4, :cond_77

    const-string v4, "errors"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    move-object v5, v1

    :goto_1e
    if-eqz v5, :cond_59

    move v1, v2

    :goto_21
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v4, :cond_5b

    move v4, v2

    :goto_26
    and-int/2addr v1, v4

    if-eqz v1, :cond_77

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v1, :cond_71

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move v4, v3

    move-object v6, v1

    :goto_33
    if-eqz v6, :cond_5d

    move v1, v2

    :goto_36
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v6, v5, :cond_5f

    move v5, v2

    :goto_3b
    and-int/2addr v1, v5

    if-eqz v1, :cond_61

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->i:Lorg/codehaus/jackson/JsonToken;

    if-ne v6, v1, :cond_7d

    const-string v1, "code"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v1

    :goto_52
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    move-object v6, v4

    move v4, v1

    goto :goto_33

    :cond_59
    move v1, v3

    goto :goto_21

    :cond_5b
    move v4, v3

    goto :goto_26

    :cond_5d
    move v1, v3

    goto :goto_36

    :cond_5f
    move v5, v3

    goto :goto_3b

    :cond_61
    if-nez v0, :cond_68

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_68
    if-lez v4, :cond_71

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v5, v1

    goto :goto_1e

    :cond_77
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_7

    :cond_7c
    return-object v0

    :cond_7d
    move v1, v4

    goto :goto_52
.end method

.method public static z(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;
    .registers 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_67

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_67

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_62

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "users"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_23
    if-eqz v0, :cond_62

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_62

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_36

    invoke-static {p0}, Lcom/twitter/android/api/r;->P(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/ab;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_23

    :cond_3b
    const-string v2, "topics"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_47
    if-eqz v0, :cond_62

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_62

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_5a

    invoke-static {p0}, Lcom/twitter/android/api/r;->Q(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/ab;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_47

    :cond_5f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    :cond_62
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_9

    :cond_67
    return-object v1
.end method
