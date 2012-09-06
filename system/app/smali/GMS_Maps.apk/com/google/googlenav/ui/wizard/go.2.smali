.class public Lcom/google/googlenav/ui/wizard/gO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/gS;

.field private final b:Lah/s;

.field private final c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lah/s;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gO;->b:Lah/s;

    .line 66
    iput-boolean p2, p0, Lcom/google/googlenav/ui/wizard/gO;->c:Z

    .line 67
    iput-boolean p3, p0, Lcom/google/googlenav/ui/wizard/gO;->d:Z

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gO;Ljava/util/Collection;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gO;->b(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gO;)Z
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gO;->c:Z

    return v0
.end method

.method private b(Ljava/util/Collection;)V
    .registers 7
    .parameter

    .prologue
    .line 127
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 128
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aF;

    .line 129
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/gO;->b:Lah/s;

    invoke-virtual {v4}, Lah/s;->c()I

    move-result v4

    if-lt v3, v4, :cond_35

    .line 138
    :cond_24
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 139
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gO;->b:Lah/s;

    new-instance v2, Lcom/google/googlenav/ui/wizard/gQ;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/gQ;-><init>(Lcom/google/googlenav/ui/wizard/gO;)V

    invoke-virtual {v0, v1, v2}, Lah/s;->a(Ljava/lang/Iterable;Lah/p;)V

    .line 146
    :cond_34
    return-void

    .line 133
    :cond_35
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    if-ne v3, v4, :cond_c

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 134
    new-instance v3, Lcom/google/googlenav/friend/aH;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/google/googlenav/friend/aH;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/gO;)Z
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gO;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/gO;)Lcom/google/googlenav/ui/wizard/gS;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gO;->a:Lcom/google/googlenav/ui/wizard/gS;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 84
    new-instance v0, Lcom/google/googlenav/friend/N;

    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/gO;->c:Z

    iget-boolean v2, p0, Lcom/google/googlenav/ui/wizard/gO;->d:Z

    new-instance v3, Lcom/google/googlenav/ui/wizard/gR;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/googlenav/ui/wizard/gR;-><init>(Lcom/google/googlenav/ui/wizard/gO;Lcom/google/googlenav/ui/wizard/gP;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/friend/N;-><init>(ZZLcom/google/googlenav/friend/O;)V

    .line 86
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 87
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/gS;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gO;->a:Lcom/google/googlenav/ui/wizard/gS;

    .line 75
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 4
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gO;->c:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gO;->d:Z

    if-nez v0, :cond_25

    .line 97
    :cond_8
    new-instance v0, Lcom/google/googlenav/ui/wizard/gP;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gP;-><init>(Lcom/google/googlenav/ui/wizard/gO;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/R;->a(Ljava/util/Collection;Lcom/google/common/base/Q;)Ljava/util/Collection;

    move-result-object v0

    .line 112
    :goto_11
    instance-of v1, v0, Ljava/util/ArrayList;

    if-nez v1, :cond_22

    .line 113
    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 117
    :goto_19
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/gO;->b(Ljava/util/Collection;)V

    .line 118
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gO;->a:Lcom/google/googlenav/ui/wizard/gS;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/gS;->a(Ljava/util/Collection;)V

    .line 119
    return-void

    .line 115
    :cond_22
    check-cast v0, Ljava/util/ArrayList;

    goto :goto_19

    :cond_25
    move-object v0, p1

    goto :goto_11
.end method
