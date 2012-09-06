.class LmN;
.super Ljava/lang/Object;
.source "DiscussionStreamEntry.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lna;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "LmN;",
        ">;",
        "Lna;"
    }
.end annotation


# instance fields
.field private final a:LaeW;

.field private final a:LaeZ;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lna;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LmY;


# direct methods
.method constructor <init>(LaeW;)V
    .registers 6
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, LmN;->a:LaeW;

    .line 37
    invoke-virtual {p1}, LaeW;->a()LaeZ;

    move-result-object v0

    iput-object v0, p0, LmN;->a:LaeZ;

    .line 38
    new-instance v0, LmZ;

    invoke-virtual {p1}, LaeW;->a()LaeX;

    move-result-object v1

    invoke-direct {v0, v1}, LmZ;-><init>(LaeX;)V

    iput-object v0, p0, LmN;->a:LmY;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v0, p0, LmN;->a:LaeZ;

    invoke-virtual {v0}, LaeZ;->a()Lafa;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, LmN;->a:LaeZ;

    invoke-virtual {v0}, LaeZ;->a()Lafa;

    move-result-object v0

    invoke-virtual {v0}, Lafa;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 42
    iget-object v0, p0, LmN;->a:LaeZ;

    invoke-virtual {v0}, LaeZ;->a()Lafa;

    move-result-object v0

    invoke-virtual {v0}, Lafa;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafe;

    .line 43
    new-instance v3, LmX;

    invoke-direct {v3, p0, v0}, LmX;-><init>(Lna;Lafe;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 46
    :cond_52
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LmN;->a:Ljava/util/List;

    .line 47
    return-void
.end method

.method private constructor <init>(LaeW;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LaeW;",
            "Ljava/util/List",
            "<",
            "Lna;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, LmN;->a:LaeW;

    .line 65
    invoke-virtual {p1}, LaeW;->a()LaeZ;

    move-result-object v0

    iput-object v0, p0, LmN;->a:LaeZ;

    .line 66
    new-instance v0, LmZ;

    invoke-virtual {p1}, LaeW;->a()LaeX;

    move-result-object v1

    invoke-direct {v0, v1}, LmZ;-><init>(LaeX;)V

    iput-object v0, p0, LmN;->a:LmY;

    .line 67
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LmN;->a:Ljava/util/List;

    .line 68
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, LmN;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 72
    iget-object v0, p0, LmN;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    invoke-interface {v0}, Lna;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 76
    :goto_1c
    return v1

    .line 71
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 76
    :cond_21
    const/4 v1, -0x1

    goto :goto_1c
.end method

.method static a(LmN;Lafe;)Landroid/util/Pair;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LmN;",
            "Lafe;",
            ")",
            "Landroid/util/Pair",
            "<",
            "LmN;",
            "Lna;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p1}, Lafe;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LmN;->a(Ljava/lang/String;)I

    move-result v1

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, LmN;->a:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    iget-object v0, p0, LmN;->a:LaeW;

    invoke-virtual {v0}, LaeW;->a()LadL;

    move-result-object v0

    check-cast v0, LaeW;

    .line 125
    new-instance v3, LmX;

    invoke-direct {v3, p0, p1}, LmX;-><init>(Lna;Lafe;)V

    .line 126
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4a

    .line 128
    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 142
    :goto_25
    invoke-virtual {p1}, Lafe;->a()Laem;

    move-result-object v1

    invoke-virtual {v1}, Laem;->a()J

    move-result-wide v4

    invoke-virtual {v0}, LaeW;->a()Laem;

    move-result-object v1

    invoke-virtual {v1}, Laem;->a()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_40

    .line 143
    invoke-virtual {p1}, Lafe;->a()Laem;

    move-result-object v1

    invoke-virtual {v0, v1}, LaeW;->a(Laem;)LaeW;

    .line 145
    :cond_40
    new-instance v1, LmN;

    invoke-direct {v1, v0, v2}, LmN;-><init>(LaeW;Ljava/util/List;)V

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 129
    :cond_4a
    invoke-virtual {p1}, Lafe;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, LmN;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 131
    new-instance v1, Lafd;

    invoke-direct {v1}, Lafd;-><init>()V

    invoke-interface {v3}, Lna;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lafd;->b(Ljava/lang/String;)Lafd;

    move-result-object v1

    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Lafd;->a(Ljava/lang/String;)Lafd;

    move-result-object v1

    .line 133
    new-instance v4, Lafd;

    invoke-direct {v4}, Lafd;-><init>()V

    invoke-interface {v3}, Lna;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lafd;->b(Ljava/lang/String;)Lafd;

    move-result-object v4

    const-string v5, "text/plain"

    invoke-virtual {v4, v5}, Lafd;->a(Ljava/lang/String;)Lafd;

    move-result-object v4

    .line 135
    invoke-virtual {v0}, LaeW;->a()LaeZ;

    move-result-object v5

    invoke-virtual {v5, v1}, LaeZ;->b(Lafd;)LaeZ;

    .line 136
    invoke-virtual {v0}, LaeW;->a()LaeZ;

    move-result-object v1

    invoke-virtual {v1, v4}, LaeZ;->a(Lafd;)LaeZ;

    goto :goto_25

    .line 139
    :cond_8d
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25
.end method

.method static a(LmN;Ljava/lang/String;)LmN;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, LmN;->a(Ljava/lang/String;)I

    move-result v0

    .line 103
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 108
    :goto_7
    return-object p0

    .line 106
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, LmN;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    new-instance v0, LmN;

    iget-object v2, p0, LmN;->a:LaeW;

    invoke-direct {v0, v2, v1}, LmN;-><init>(LaeW;Ljava/util/List;)V

    move-object p0, v0

    goto :goto_7
.end method


# virtual methods
.method public a(LmN;)I
    .registers 5
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, LmO;->a(Lna;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, LmO;->a(Lna;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 53
    if-nez v0, :cond_38

    .line 54
    invoke-virtual {p1}, LmN;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, LmN;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 55
    if-nez v0, :cond_38

    .line 57
    invoke-virtual {p0}, LmN;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LmN;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 60
    :cond_38
    return v0
.end method

.method public a()J
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, LmN;->a:LaeW;

    invoke-virtual {v0}, LaeW;->b()Laem;

    move-result-object v0

    invoke-virtual {v0}, Laem;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, LmN;->a:LaeW;

    invoke-virtual {v0}, LaeW;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lna;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, LmN;->a:Ljava/util/List;

    return-object v0
.end method

.method public a()LmY;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, LmN;->a:LmY;

    return-object v0
.end method

.method public a()Lna;
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method b()J
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, LmN;->a:LaeW;

    invoke-virtual {v0}, LaeW;->a()Laem;

    move-result-object v0

    invoke-virtual {v0}, Laem;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, LmN;->a:LaeZ;

    invoke-virtual {v0}, LaeZ;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, LmN;->a:LaeZ;

    invoke-virtual {v0}, LaeZ;->b()Lafd;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, LmN;->a:LaeZ;

    invoke-virtual {v0}, LaeZ;->b()Lafd;

    move-result-object v0

    invoke-virtual {v0}, Lafd;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 193
    iget-object v0, p0, LmN;->a:LaeZ;

    invoke-virtual {v0}, LaeZ;->b()Lafd;

    move-result-object v0

    invoke-virtual {v0}, Lafd;->b()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {p0}, LmN;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 23
    check-cast p1, LmN;

    invoke-virtual {p0, p1}, LmN;->a(LmN;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, LmN;->a:LaeZ;

    invoke-virtual {v0}, LaeZ;->a()Lafd;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, LmN;->a:LaeZ;

    invoke-virtual {v0}, LaeZ;->a()Lafd;

    move-result-object v0

    invoke-virtual {v0}, Lafd;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 201
    iget-object v0, p0, LmN;->a:LaeZ;

    invoke-virtual {v0}, LaeZ;->a()Lafd;

    move-result-object v0

    invoke-virtual {v0}, Lafd;->b()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, LmN;->a:LaeZ;

    invoke-virtual {v0}, LaeZ;->c()Lafd;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, LmN;->a:LaeZ;

    invoke-virtual {v0}, LaeZ;->c()Lafd;

    move-result-object v0

    invoke-virtual {v0}, Lafd;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 209
    iget-object v0, p0, LmN;->a:LaeZ;

    invoke-virtual {v0}, LaeZ;->c()Lafd;

    move-result-object v0

    invoke-virtual {v0}, Lafd;->b()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method
