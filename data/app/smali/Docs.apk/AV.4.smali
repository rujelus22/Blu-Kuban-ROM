.class public LAV;
.super Ljava/lang/Object;
.source "AggregateStyle.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "LAW;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, LAW;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, LAV;->a:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public constructor <init>(Lvx;)V
    .registers 4
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, LAW;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, LAV;->a:Ljava/util/Map;

    .line 46
    sget-object v0, LAW;->a:LAW;

    invoke-interface {p1}, Lvx;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->b(LAW;Ljava/lang/Object;)V

    .line 47
    sget-object v0, LAW;->b:LAW;

    invoke-interface {p1}, Lvx;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->b(LAW;Ljava/lang/Object;)V

    .line 48
    sget-object v0, LAW;->c:LAW;

    invoke-interface {p1}, Lvx;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->b(LAW;Ljava/lang/Object;)V

    .line 49
    sget-object v0, LAW;->d:LAW;

    invoke-interface {p1}, Lvx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->b(LAW;Ljava/lang/Object;)V

    .line 50
    sget-object v0, LAW;->e:LAW;

    invoke-interface {p1}, Lvx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->b(LAW;Ljava/lang/Object;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, LAV;->a:Z

    .line 52
    return-void
.end method

.method private a(LAW;)V
    .registers 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, LAV;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method private a(LAW;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, LAV;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_11

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 120
    invoke-direct {p0, p1}, LAV;->a(LAW;)V

    .line 122
    :cond_11
    return-void
.end method

.method private b(LAW;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, LAV;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method


# virtual methods
.method public a(LAW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, LAV;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 133
    iget-boolean v0, p0, LAV;->a:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, LAV;->b:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, LAV;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a(LBg;)Z
    .registers 4
    .parameter

    .prologue
    .line 105
    iget-boolean v0, p0, LAV;->b:Z

    if-nez v0, :cond_1d

    .line 106
    sget-object v0, LAW;->f:LAW;

    invoke-virtual {p1}, LBg;->a()LwF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->b(LAW;Ljava/lang/Object;)V

    .line 107
    sget-object v0, LAW;->g:LAW;

    invoke-virtual {p1}, LBg;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->b(LAW;Ljava/lang/Object;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, LAV;->b:Z

    .line 111
    :cond_1d
    sget-object v0, LAW;->f:LAW;

    invoke-virtual {p1}, LBg;->a()LwF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->a(LAW;Ljava/lang/Object;)V

    .line 112
    sget-object v0, LAW;->g:LAW;

    invoke-virtual {p1}, LBg;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->a(LAW;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, LAV;->a()Z

    move-result v0

    return v0
.end method

.method public a(LBm;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 75
    iget-boolean v1, p0, LAV;->a:Z

    if-nez v1, :cond_41

    .line 78
    sget-object v1, LAW;->a:LAW;

    invoke-virtual {p1}, LBm;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, LAV;->b(LAW;Ljava/lang/Object;)V

    .line 79
    sget-object v1, LAW;->b:LAW;

    invoke-virtual {p1}, LBm;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, LAV;->b(LAW;Ljava/lang/Object;)V

    .line 80
    sget-object v1, LAW;->c:LAW;

    invoke-virtual {p1}, LBm;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, LAV;->b(LAW;Ljava/lang/Object;)V

    .line 81
    sget-object v1, LAW;->d:LAW;

    invoke-virtual {p1}, LBm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, LAV;->b(LAW;Ljava/lang/Object;)V

    .line 82
    sget-object v1, LAW;->e:LAW;

    invoke-virtual {p1}, LBm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, LAV;->b(LAW;Ljava/lang/Object;)V

    .line 83
    iput-boolean v0, p0, LAV;->a:Z

    .line 95
    :goto_40
    return v0

    .line 89
    :cond_41
    sget-object v0, LAW;->a:LAW;

    invoke-virtual {p1}, LBm;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->a(LAW;Ljava/lang/Object;)V

    .line 90
    sget-object v0, LAW;->b:LAW;

    invoke-virtual {p1}, LBm;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->a(LAW;Ljava/lang/Object;)V

    .line 91
    sget-object v0, LAW;->c:LAW;

    invoke-virtual {p1}, LBm;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->a(LAW;Ljava/lang/Object;)V

    .line 92
    sget-object v0, LAW;->d:LAW;

    invoke-virtual {p1}, LBm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->a(LAW;Ljava/lang/Object;)V

    .line 93
    sget-object v0, LAW;->e:LAW;

    invoke-virtual {p1}, LBm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LAV;->a(LAW;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, LAV;->a()Z

    move-result v0

    goto :goto_40
.end method
