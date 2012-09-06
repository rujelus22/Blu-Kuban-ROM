.class public LaiD;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaiD;->a:Ljava/util/ArrayList;

    .line 171
    return-void
.end method

.method private static a(Ljava/util/List;)LaiC;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "LaiC",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 236
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 237
    packed-switch v0, :pswitch_data_2c

    .line 243
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 245
    new-instance v1, LakK;

    invoke-direct {v1, v0}, LakK;-><init>([Ljava/util/Map$Entry;)V

    move-object v0, v1

    :goto_19
    return-object v0

    .line 239
    :pswitch_1a
    invoke-static {}, LaiC;->a()LaiC;

    move-result-object v0

    goto :goto_19

    .line 241
    :pswitch_1f
    new-instance v1, Lala;

    invoke-static {p0}, LaiT;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v0}, Lala;-><init>(Ljava/util/Map$Entry;)V

    move-object v0, v1

    goto :goto_19

    .line 237
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public a()LaiC;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiC",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, LaiD;->a:Ljava/util/ArrayList;

    invoke-static {v0}, LaiD;->a(Ljava/util/List;)LaiC;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)LaiD;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "LaiD",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, LaiD;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, LaiC;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-object p0
.end method
