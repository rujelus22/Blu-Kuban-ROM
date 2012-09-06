.class public Lcom/google/googlenav/settings/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/friend/ag;

.field private b:Lcom/google/googlenav/friend/i;

.field private c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/settings/C;Lcom/google/googlenav/friend/i;)Lcom/google/googlenav/friend/i;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/googlenav/settings/C;->b:Lcom/google/googlenav/friend/i;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/settings/C;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/googlenav/settings/C;->c:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public a()Lcom/google/googlenav/friend/ag;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/googlenav/settings/C;->a:Lcom/google/googlenav/friend/ag;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/friend/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/googlenav/settings/C;->a:Lcom/google/googlenav/friend/ag;

    .line 123
    return-void
.end method

.method public b()Lcom/google/googlenav/friend/i;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/googlenav/settings/C;->b:Lcom/google/googlenav/friend/i;

    return-object v0
.end method

.method public c()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->j()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/settings/C;->b:Lcom/google/googlenav/friend/i;

    if-eqz v0, :cond_18

    :cond_10
    move v0, v2

    .line 143
    :goto_11
    iget-object v3, p0, Lcom/google/googlenav/settings/C;->a:Lcom/google/googlenav/friend/ag;

    if-eqz v3, :cond_1a

    if-eqz v0, :cond_1a

    .line 146
    :goto_17
    return v2

    :cond_18
    move v0, v1

    .line 137
    goto :goto_11

    :cond_1a
    move v2, v1

    .line 143
    goto :goto_17
.end method

.method d()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/google/googlenav/settings/C;->a:Lcom/google/googlenav/friend/ag;

    .line 154
    iput-object v0, p0, Lcom/google/googlenav/settings/C;->c:Ljava/lang/Boolean;

    .line 155
    iput-object v0, p0, Lcom/google/googlenav/settings/C;->b:Lcom/google/googlenav/friend/i;

    .line 156
    return-void
.end method
