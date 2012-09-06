.class public Lcom/google/googlenav/ui/wizard/gJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private final b:Lcom/google/googlenav/ui/wizard/gN;

.field private c:Lcom/google/googlenav/ui/wizard/gL;

.field private d:Lcom/google/googlenav/ui/wizard/gM;

.field private e:Lcom/google/googlenav/ui/wizard/gT;

.field private f:Lcom/google/googlenav/ui/wizard/gO;

.field private final g:Z


# direct methods
.method public constructor <init>(Lah/s;Lcom/google/googlenav/ui/wizard/gN;ZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gN;

    .line 71
    iput-boolean p4, p0, Lcom/google/googlenav/ui/wizard/gJ;->g:Z

    .line 74
    new-instance v0, Lcom/google/googlenav/ui/wizard/gL;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gL;-><init>(Lcom/google/googlenav/ui/wizard/gJ;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gJ;->c:Lcom/google/googlenav/ui/wizard/gL;

    .line 77
    new-instance v0, Lcom/google/googlenav/ui/wizard/gM;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/gM;-><init>(Lcom/google/googlenav/ui/wizard/gJ;Lcom/google/googlenav/ui/wizard/gK;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gJ;->d:Lcom/google/googlenav/ui/wizard/gM;

    .line 80
    new-instance v0, Lcom/google/googlenav/ui/wizard/gO;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/googlenav/ui/wizard/gO;-><init>(Lah/s;ZZ)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gJ;->f:Lcom/google/googlenav/ui/wizard/gO;

    .line 82
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gJ;->f:Lcom/google/googlenav/ui/wizard/gO;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gJ;->d:Lcom/google/googlenav/ui/wizard/gM;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gO;->a(Lcom/google/googlenav/ui/wizard/gS;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gJ;)Lcom/google/googlenav/ui/wizard/gT;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gJ;->e:Lcom/google/googlenav/ui/wizard/gT;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/gJ;)Lcom/google/googlenav/ui/wizard/gN;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gN;

    return-object v0
.end method

.method static synthetic b()Ljava/util/List;
    .registers 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/googlenav/ui/wizard/gJ;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/util/List;
    .registers 2

    .prologue
    .line 122
    invoke-static {}, Lcom/google/googlenav/friend/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 123
    invoke-static {}, Lcom/google/googlenav/friend/aF;->i()Lcom/google/googlenav/friend/aF;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/friend/aF;->j()Lcom/google/googlenav/friend/aF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 128
    :goto_12
    return-object v0

    :cond_13
    invoke-static {}, Lcom/google/googlenav/friend/aF;->i()Lcom/google/googlenav/friend/aF;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_12
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/gJ;)Z
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gJ;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/gJ;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gJ;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/wizard/gL;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gJ;->c:Lcom/google/googlenav/ui/wizard/gL;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/gT;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gJ;->e:Lcom/google/googlenav/ui/wizard/gT;

    .line 91
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gJ;->a:Ljava/util/List;

    .line 110
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 111
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gJ;->e:Lcom/google/googlenav/ui/wizard/gT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gT;->i()V

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gJ;->f:Lcom/google/googlenav/ui/wizard/gO;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gO;->a()V

    .line 116
    :goto_14
    return-void

    .line 114
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gJ;->f:Lcom/google/googlenav/ui/wizard/gO;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/gO;->a(Ljava/util/Collection;)V

    goto :goto_14
.end method
