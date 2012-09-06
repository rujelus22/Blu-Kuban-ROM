.class public LTs;
.super Ljava/lang/Object;
.source "SyncMoreFactoryImpl.java"

# interfaces
.implements LTr;


# instance fields
.field private final a:LSS;

.field private final a:LTF;

.field private final a:LTT;

.field private final a:LVp;

.field private final a:Lle;

.field private final a:Llu;


# direct methods
.method public constructor <init>(LSS;LVp;Llu;LTF;LTT;Lle;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, LTs;->a:LSS;

    .line 41
    iput-object p2, p0, LTs;->a:LVp;

    .line 42
    iput-object p3, p0, LTs;->a:Llu;

    .line 43
    iput-object p4, p0, LTs;->a:LTF;

    .line 44
    iput-object p5, p0, LTs;->a:LTT;

    .line 45
    iput-object p6, p0, LTs;->a:Lle;

    .line 46
    return-void
.end method

.method private a(LkG;LSR;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkG;",
            "LSR;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Llx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, LTs;->a:LSS;

    invoke-interface {v0, p2}, LSS;->a(LSR;)LTe;

    move-result-object v1

    .line 66
    iget-object v0, v1, LTe;->a:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, p1, v0, p3}, LTs;->a(LkG;Landroid/net/Uri;Ljava/util/Date;)Llx;

    move-result-object v2

    .line 68
    iget-object v0, v1, LTe;->b:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, p1, v0, p4}, LTs;->a(LkG;Landroid/net/Uri;Ljava/util/Date;)Llx;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    if-eqz v2, :cond_20

    .line 71
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_20
    if-eqz v0, :cond_25

    .line 74
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_25
    return-object v1
.end method

.method private a(LkG;Landroid/net/Uri;Ljava/util/Date;)Llx;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    if-nez p2, :cond_4

    .line 54
    const/4 v0, 0x0

    .line 59
    :goto_3
    return-object v0

    .line 56
    :cond_4
    if-eqz p3, :cond_19

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, LafQ;->a(Z)V

    .line 57
    iget-object v0, p0, LTs;->a:Llu;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, p1, v1, v2, v3}, Llu;->a(LkG;Ljava/lang/String;J)Llx;

    move-result-object v0

    goto :goto_3

    .line 56
    :cond_19
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public a(LkG;LOG;)LTf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p2}, LOG;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(LkG;LSR;)LTf;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-virtual {p1}, LkG;->c()Ljava/util/Date;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, LkG;->b()Ljava/util/Date;

    move-result-object v1

    .line 95
    iget-object v2, p0, LTs;->a:Lle;

    invoke-static {v0, v1, v2}, LSR;->a(Ljava/util/Date;Ljava/util/Date;Lle;)LSR;

    move-result-object v2

    invoke-virtual {p2, v2}, LSR;->a(LSR;)LSR;

    move-result-object v2

    .line 97
    invoke-direct {p0, p1, v2, v0, v1}, LTs;->a(LkG;LSR;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v2

    .line 100
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 101
    const/4 v0, 0x0

    .line 116
    :goto_1d
    return-object v0

    .line 104
    :cond_1e
    new-instance v5, Landroid/content/SyncResult;

    invoke-direct {v5}, Landroid/content/SyncResult;-><init>()V

    .line 111
    iget-object v0, p0, LTs;->a:LTT;

    iget-object v1, p0, LTs;->a:LTF;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v5, p1, v3}, LTT;->a(LTF;Landroid/content/SyncResult;LkG;Ljava/lang/Boolean;)LTN;

    move-result-object v3

    .line 113
    new-instance v0, LTh;

    iget-object v4, p0, LTs;->a:LVp;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LTh;-><init>(LkG;Ljava/util/List;LTN;LVp;Landroid/content/SyncResult;)V

    goto :goto_1d
.end method
