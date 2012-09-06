.class public LaM/aH;
.super LaM/aY;
.source "SourceFile"


# instance fields
.field protected final d:Lah/s;


# direct methods
.method public constructor <init>(LaM/i;Lah/s;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, LaM/aY;-><init>(LaM/i;)V

    .line 24
    iput-object p2, p0, LaM/aH;->d:Lah/s;

    .line 25
    return-void
.end method

.method private e(Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aX()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ai;)LaQ/F;
    .registers 3
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, LaM/aH;->e(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    :cond_6
    invoke-super {p0, p1}, LaM/aY;->a(Lcom/google/googlenav/ai;)LaQ/F;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/be;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, LaM/aH;->e(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    :cond_6
    invoke-super {p0, p1, p2}, LaM/aY;->a(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/be;)V

    .line 70
    return-void
.end method

.method protected a(Lcom/google/googlenav/ai;Ljava/util/Vector;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, LaM/aH;->e(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 60
    invoke-super {p0, p1, p2}, LaM/aY;->a(Lcom/google/googlenav/ai;Ljava/util/Vector;)V

    .line 62
    :cond_9
    return-void
.end method

.method protected b(Lcom/google/googlenav/ai;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, LaM/aH;->e(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aY()Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, LaM/aY;->b(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
