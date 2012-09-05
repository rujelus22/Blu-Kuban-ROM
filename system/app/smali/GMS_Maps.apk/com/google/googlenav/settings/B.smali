.class public Lcom/google/googlenav/settings/B;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Lax/j;

.field private c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/settings/B;Lax/j;)Lax/j;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/B;->b:Lax/j;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/settings/B;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/B;->c:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/B;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/B;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Lax/j;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/B;->b:Lax/j;

    return-object v0
.end method

.method public c()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->j()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/settings/B;->b:Lax/j;

    if-eqz v0, :cond_18

    :cond_10
    move v0, v2

    :goto_11
    iget-object v3, p0, Lcom/google/googlenav/settings/B;->a:Ljava/lang/Boolean;

    if-eqz v3, :cond_1a

    if-eqz v0, :cond_1a

    :goto_17
    return v2

    :cond_18
    move v0, v1

    goto :goto_11

    :cond_1a
    move v2, v1

    goto :goto_17
.end method

.method d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/settings/B;->a:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/settings/B;->c:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/settings/B;->b:Lax/j;

    return-void
.end method
