.class public Lcom/google/googlenav/friend/reporting/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method public a(JJLjava/util/List;Z)Lcom/google/googlenav/friend/reporting/q;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_e

    .line 73
    new-instance v0, Lcom/google/googlenav/friend/reporting/q;

    sget-object v1, Lcom/google/googlenav/friend/reporting/p;->b:Lcom/google/googlenav/friend/reporting/p;

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/reporting/q;-><init>(Lcom/google/googlenav/friend/reporting/p;)V

    .line 95
    :goto_d
    return-object v0

    .line 78
    :cond_e
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    sub-long v0, p1, p3

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 80
    new-instance v0, Lcom/google/googlenav/friend/reporting/q;

    sget-object v1, Lcom/google/googlenav/friend/reporting/p;->c:Lcom/google/googlenav/friend/reporting/p;

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/reporting/q;-><init>(Lcom/google/googlenav/friend/reporting/p;)V

    goto :goto_d

    .line 84
    :cond_25
    if-eqz p6, :cond_38

    sub-long v0, p1, p3

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_38

    .line 85
    new-instance v0, Lcom/google/googlenav/friend/reporting/q;

    sget-object v1, Lcom/google/googlenav/friend/reporting/p;->d:Lcom/google/googlenav/friend/reporting/p;

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/reporting/q;-><init>(Lcom/google/googlenav/friend/reporting/p;)V

    goto :goto_d

    .line 88
    :cond_38
    sub-long v0, p1, p3

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_49

    .line 89
    new-instance v0, Lcom/google/googlenav/friend/reporting/q;

    sget-object v1, Lcom/google/googlenav/friend/reporting/p;->e:Lcom/google/googlenav/friend/reporting/p;

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/reporting/q;-><init>(Lcom/google/googlenav/friend/reporting/p;)V

    goto :goto_d

    .line 95
    :cond_49
    new-instance v0, Lcom/google/googlenav/friend/reporting/q;

    sget-object v1, Lcom/google/googlenav/friend/reporting/p;->a:Lcom/google/googlenav/friend/reporting/p;

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/reporting/q;-><init>(Lcom/google/googlenav/friend/reporting/p;)V

    goto :goto_d
.end method
