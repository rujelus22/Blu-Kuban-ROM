.class public Lam/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lam/g;


# instance fields
.field private a:Lam/h;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;

.field private d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Lam/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/g;-><init>(Lam/e;)V

    sput-object v0, Lam/d;->e:Lam/g;

    return-void
.end method

.method private constructor <init>(Lam/h;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lam/d;->a:Lam/h;

    .line 49
    iput-object p2, p0, Lam/d;->b:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lam/d;->c:Ljava/util/Map;

    .line 51
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lam/d;->d:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public static a(Lam/h;)Lam/d;
    .registers 4
    .parameter

    .prologue
    .line 55
    sget-object v0, Lam/e;->a:[I

    invoke-virtual {p0}, Lam/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 63
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

    .line 57
    :pswitch_24
    new-instance v0, Lam/d;

    const/16 v1, 0x25c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lam/d;-><init>(Lam/h;Ljava/lang/String;)V

    .line 61
    :goto_2f
    return-object v0

    .line 59
    :pswitch_30
    new-instance v0, Lam/d;

    const/16 v1, 0x25b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lam/d;-><init>(Lam/h;Ljava/lang/String;)V

    goto :goto_2f

    .line 61
    :pswitch_3c
    new-instance v0, Lam/d;

    const/16 v1, 0x25a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lam/d;-><init>(Lam/h;Ljava/lang/String;)V

    goto :goto_2f

    .line 55
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

    .prologue
    .line 72
    iget-object v0, p0, Lam/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lam/f;)V
    .registers 7
    .parameter

    .prologue
    .line 101
    invoke-static {p1}, Lam/f;->a(Lam/f;)I

    move-result v1

    .line 102
    iget-object v0, p0, Lam/d;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/f;

    .line 103
    if-eqz v0, :cond_1f

    .line 104
    iget-object v2, p0, Lam/d;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lam/f;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_1f
    invoke-virtual {p1}, Lam/f;->i()J

    move-result-wide v2

    .line 108
    iget-object v0, p0, Lam/d;->d:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 109
    if-eqz v0, :cond_36

    .line 110
    iget-object v4, p0, Lam/d;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_36
    iget-object v0, p0, Lam/d;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lam/d;->d:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/f;

    .line 119
    invoke-virtual {p0, v0}, Lam/d;->a(Lam/f;)V

    goto :goto_4

    .line 121
    :cond_14
    return-void
.end method

.method public b()Ljava/util/List;
    .registers 3

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lam/d;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    sget-object v1, Lam/d;->e:Lam/g;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 80
    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lam/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
