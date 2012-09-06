.class public Lcom/twitter/android/api/TweetEntities;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/twitter/android/api/TweetEntities; = null

.field private static final b:[Ljava/lang/String; = null

.field private static final c:Ljava/util/Comparator; = null

.field private static final serialVersionUID:J = -0x5bf018c4f48a1cf2L


# instance fields
.field public media:Ljava/util/ArrayList;

.field public mentions:Ljava/util/ArrayList;

.field public promotedContent:Lcom/twitter/android/api/TweetEntities$PromotedContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public urls:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/twitter/android/api/TweetEntities;

    invoke-direct {v0}, Lcom/twitter/android/api/TweetEntities;-><init>()V

    sput-object v0, Lcom/twitter/android/api/TweetEntities;->a:Lcom/twitter/android/api/TweetEntities;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "entities"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/api/TweetEntities;->b:[Ljava/lang/String;

    new-instance v0, Lcom/twitter/android/api/k;

    invoke-direct {v0}, Lcom/twitter/android/api/k;-><init>()V

    sput-object v0, Lcom/twitter/android/api/TweetEntities;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/TweetEntities;
    .registers 11

    const/4 v0, 0x3

    new-instance v3, Lcom/twitter/android/api/TweetEntities;

    invoke-direct {v3}, Lcom/twitter/android/api/TweetEntities;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    if-eqz v1, :cond_232

    const/4 v0, 0x0

    :goto_17
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_232

    sget-object v2, Lcom/twitter/android/api/l;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_266

    :cond_26
    :goto_26
    :pswitch_26
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_17

    :pswitch_2b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_26

    :pswitch_2f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :pswitch_34
    const-string v2, "urls"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    :cond_3c
    :goto_3c
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_26

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_3c

    new-instance v2, Lcom/twitter/android/api/TweetEntities$Url;

    invoke-direct {v2}, Lcom/twitter/android/api/TweetEntities$Url;-><init>()V

    :cond_4d
    :goto_4d
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v6, :cond_b5

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/twitter/android/api/l;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_276

    goto :goto_4d

    :pswitch_65
    const-string v6, "indices"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-static {p0, v2}, Lcom/twitter/android/api/TweetEntities;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/TweetEntities$Entity;)V

    goto :goto_4d

    :cond_71
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_4d

    :pswitch_75
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_4d

    :pswitch_79
    const-string v6, "url_https"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    goto :goto_4d

    :cond_88
    const-string v6, "expanded_url"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/twitter/android/api/TweetEntities$Url;->expandedUrl:Ljava/lang/String;

    goto :goto_4d

    :cond_97
    const-string v6, "url"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/twitter/android/api/TweetEntities$Url;->insecureUrl:Ljava/lang/String;

    goto :goto_4d

    :cond_a6
    const-string v6, "display_url"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    goto :goto_4d

    :cond_b5
    iget-object v6, v2, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    if-nez v6, :cond_bd

    iget-object v6, v2, Lcom/twitter/android/api/TweetEntities$Url;->insecureUrl:Ljava/lang/String;

    iput-object v6, v2, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    :cond_bd
    invoke-static {v2}, Lcom/twitter/android/api/TweetEntities$Media;->a(Lcom/twitter/android/api/TweetEntities$Url;)Lcom/twitter/android/api/TweetEntities$Media;

    move-result-object v6

    if-eqz v6, :cond_cb

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3c

    :cond_cb
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3c

    :cond_d0
    const-string v2, "user_mentions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13f

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/twitter/android/api/TweetEntities$Mention;

    invoke-direct {v1}, Lcom/twitter/android/api/TweetEntities$Mention;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_e9
    sget-object v7, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v7, :cond_13a

    sget-object v7, Lcom/twitter/android/api/l;->a:[I

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v2, v7, v2

    packed-switch v2, :pswitch_data_280

    :cond_f8
    :goto_f8
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_e9

    :pswitch_fd
    new-instance v0, Lcom/twitter/android/api/TweetEntities$Mention;

    invoke-direct {v0}, Lcom/twitter/android/api/TweetEntities$Mention;-><init>()V

    goto :goto_f8

    :pswitch_103
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f8

    :pswitch_107
    const-string v2, "indices"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    invoke-static {p0, v0}, Lcom/twitter/android/api/TweetEntities;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/TweetEntities$Entity;)V

    goto :goto_f8

    :cond_113
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_f8

    :pswitch_117
    const-string v2, "screen_name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/twitter/android/api/TweetEntities$Mention;->screenName:Ljava/lang/String;

    goto :goto_f8

    :pswitch_126
    const-string v2, "id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/twitter/android/api/TweetEntities$Mention;->userId:J

    goto :goto_f8

    :pswitch_135
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_f8

    :cond_13a
    iput-object v6, v3, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    move-object v0, v1

    goto/16 :goto_26

    :cond_13f
    const-string v2, "media"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22d

    :cond_147
    :goto_147
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_26

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_147

    new-instance v2, Lcom/twitter/android/api/TweetEntities$Media;

    invoke-direct {v2}, Lcom/twitter/android/api/TweetEntities$Media;-><init>()V

    :cond_158
    :goto_158
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v6, :cond_215

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/twitter/android/api/l;->a:[I

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_290

    :pswitch_16f
    goto :goto_158

    :pswitch_170
    const-string v6, "indices"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17c

    invoke-static {p0, v2}, Lcom/twitter/android/api/TweetEntities;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/TweetEntities$Entity;)V

    goto :goto_158

    :cond_17c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_158

    :pswitch_180
    const-string v6, "sizes"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18c

    invoke-static {p0, v2}, Lcom/twitter/android/api/TweetEntities;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/TweetEntities$Media;)V

    goto :goto_158

    :cond_18c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_158

    :pswitch_190
    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_158

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->id:J

    goto :goto_158

    :pswitch_19f
    const-string v6, "url_https"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ae

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    goto :goto_158

    :cond_1ae
    const-string v6, "url"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1bd

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->insecureUrl:Ljava/lang/String;

    goto :goto_158

    :cond_1bd
    const-string v6, "expanded_url"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1cc

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->expandedUrl:Ljava/lang/String;

    goto :goto_158

    :cond_1cc
    const-string v6, "display_url"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1dc

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->displayUrl:Ljava/lang/String;

    goto/16 :goto_158

    :cond_1dc
    const-string v6, "type"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f5

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    const-string v7, "photo"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_158

    const/4 v6, 0x1

    iput v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->type:I

    goto/16 :goto_158

    :cond_1f5
    const-string v6, "media_url_https"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_205

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    goto/16 :goto_158

    :cond_205
    const-string v6, "media_url"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_158

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->f()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->insecureMediaUrl:Ljava/lang/String;

    goto/16 :goto_158

    :cond_215
    iget-object v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    if-nez v6, :cond_21d

    iget-object v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->insecureUrl:Ljava/lang/String;

    iput-object v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    :cond_21d
    iget-object v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    if-nez v6, :cond_225

    iget-object v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->insecureMediaUrl:Ljava/lang/String;

    iput-object v6, v2, Lcom/twitter/android/api/TweetEntities$Media;->mediaUrl:Ljava/lang/String;

    :cond_225
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_147

    :cond_22d
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto/16 :goto_26

    :cond_232
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_246

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v3, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    iget-object v0, v3, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    sget-object v1, Lcom/twitter/android/api/TweetEntities;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_246
    iget-object v0, v3, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    if-eqz v0, :cond_251

    iget-object v0, v3, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    sget-object v1, Lcom/twitter/android/api/TweetEntities;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_251
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_265

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v3, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    iget-object v0, v3, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    sget-object v1, Lcom/twitter/android/api/TweetEntities;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_265
    return-object v3

    :pswitch_data_266
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2b
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_2f
    .end packed-switch

    :pswitch_data_276
    .packed-switch 0x1
        :pswitch_65
        :pswitch_75
        :pswitch_79
    .end packed-switch

    :pswitch_data_280
    .packed-switch 0x1
        :pswitch_107
        :pswitch_fd
        :pswitch_117
        :pswitch_103
        :pswitch_126
        :pswitch_135
    .end packed-switch

    :pswitch_data_290
    .packed-switch 0x1
        :pswitch_170
        :pswitch_180
        :pswitch_19f
        :pswitch_16f
        :pswitch_190
    .end packed-switch
.end method

.method public static a([B)Lcom/twitter/android/api/TweetEntities;
    .registers 2

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/twitter/android/util/x;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities;

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/twitter/android/api/TweetEntities;->a:Lcom/twitter/android/api/TweetEntities;

    goto :goto_8
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 12

    const/4 v4, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v4

    move v3, v4

    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/twitter/android/api/TweetEntities$Entity;

    move v5, v3

    :goto_22
    if-ge v5, v6, :cond_3f

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v8, v0, v4

    const/4 v9, 0x1

    aget v0, v0, v9

    sub-int v8, v0, v8

    iget v9, v1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    if-ge v0, v9, :cond_4a

    add-int v0, v2, v8

    add-int/lit8 v2, v3, 0x1

    :goto_39
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    move v2, v0

    goto :goto_22

    :cond_3f
    iget v0, v1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    iget v0, v1, Lcom/twitter/android/api/TweetEntities$Entity;->end:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/twitter/android/api/TweetEntities$Entity;->end:I

    goto :goto_14

    :cond_4a
    move v0, v2

    move v2, v3

    goto :goto_39
.end method

.method private static a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/TweetEntities$Entity;)V
    .registers 5

    const/4 v2, -0x1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_5
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_2f

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->i:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    if-ne v1, v2, :cond_24

    iput v0, p1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_5

    :cond_24
    iget v1, p1, Lcom/twitter/android/api/TweetEntities$Entity;->end:I

    if-ne v1, v2, :cond_1f

    iput v0, p1, Lcom/twitter/android/api/TweetEntities$Entity;->end:I

    goto :goto_1f

    :cond_2b
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method private static a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/TweetEntities$Media;)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_73

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_73

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_6b

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "large"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    move v0, v2

    :goto_22
    if-eqz v3, :cond_5a

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_5a

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->i:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_4e

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "w"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v1

    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_22

    :cond_41
    const-string v4, "h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()I

    move-result v0

    goto :goto_3c

    :cond_4e
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_56

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_3c

    :cond_56
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_3c

    :cond_5a
    if-lez v1, :cond_62

    if-lez v0, :cond_62

    iput v1, p1, Lcom/twitter/android/api/TweetEntities$Media;->width:I

    iput v0, p1, Lcom/twitter/android/api/TweetEntities$Media;->height:I

    :cond_62
    :goto_62
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_5

    :cond_67
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_62

    :cond_6b
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_62

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/JsonParser;

    goto :goto_62

    :cond_73
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/twitter/android/api/TweetEntities;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/twitter/android/api/TweetEntities;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final a(J)Z
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->mentions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Mention;

    iget-wide v2, v0, Lcom/twitter/android/api/TweetEntities$Mention;->userId:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public final a()[B
    .registers 2

    invoke-static {p0}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Media;

    iget v0, v0, Lcom/twitter/android/api/TweetEntities$Media;->type:I

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/twitter/android/api/TweetEntities;

    iget-object v2, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_23
    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p1, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-nez v2, :cond_23

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_c
    const-string v0, "urls: []"

    :goto_e
    return-object v0

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "urls:["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Url;

    invoke-virtual {v0}, Lcom/twitter/android/api/TweetEntities$Url;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_33
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
