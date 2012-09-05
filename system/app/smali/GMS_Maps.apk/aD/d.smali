.class public LaD/d;
.super Ljava/lang/Object;


# static fields
.field private static e:LaD/g;


# instance fields
.field private a:LaD/h;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;

.field private d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, LaD/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LaD/g;-><init>(LaD/e;)V

    sput-object v0, LaD/d;->e:LaD/g;

    return-void
.end method

.method private constructor <init>(LaD/h;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaD/d;->a:LaD/h;

    iput-object p2, p0, LaD/d;->b:Ljava/lang/String;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, LaD/d;->c:Ljava/util/Map;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, LaD/d;->d:Ljava/util/Map;

    return-void
.end method

.method public static a(LaD/h;)LaD/d;
    .registers 4

    sget-object v0, LaD/e;->a:[I

    invoke-virtual {p0}, LaD/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    new-instance v0, Ljava/lang/InstantiationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown leaderboard type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    new-instance v0, LaD/d;

    const/16 v1, 0x228

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LaD/d;-><init>(LaD/h;Ljava/lang/String;)V

    :goto_2f
    return-object v0

    :pswitch_30
    new-instance v0, LaD/d;

    const/16 v1, 0x227

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LaD/d;-><init>(LaD/h;Ljava/lang/String;)V

    goto :goto_2f

    :pswitch_3c
    new-instance v0, LaD/d;

    const/16 v1, 0x226

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LaD/d;-><init>(LaD/h;Ljava/lang/String;)V

    goto :goto_2f

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_24
        :pswitch_30
        :pswitch_3c
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaD/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(LaD/f;)V
    .registers 7

    invoke-static {p1}, LaD/f;->a(LaD/f;)I

    move-result v1

    iget-object v0, p0, LaD/d;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/f;

    if-eqz v0, :cond_1f

    iget-object v2, p0, LaD/d;->d:Ljava/util/Map;

    invoke-virtual {v0}, LaD/f;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    invoke-virtual {p1}, LaD/f;->i()J

    move-result-wide v2

    iget-object v0, p0, LaD/d;->d:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_36

    iget-object v4, p0, LaD/d;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    iget-object v0, p0, LaD/d;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LaD/d;->d:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/f;

    invoke-virtual {p0, v0}, LaD/d;->a(LaD/f;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public b()Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LaD/d;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, LaD/d;->e:LaD/g;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, LaD/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
