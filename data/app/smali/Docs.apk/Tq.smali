.class final LTq;
.super Ljava/lang/Object;
.source "SyncMoreAlgorithm.java"

# interfaces
.implements LVT;


# instance fields
.field private final a:I

.field private final a:LTN;

.field private a:LVi;

.field private a:LVu;

.field private final a:Llx;


# direct methods
.method public constructor <init>(LTN;Llx;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, LTq;->a:LVi;

    .line 36
    iput-object v0, p0, LTq;->a:LVu;

    .line 48
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    if-ltz p3, :cond_1b

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, LafQ;->a(Z)V

    .line 51
    iput-object p1, p0, LTq;->a:LTN;

    .line 52
    iput p3, p0, LTq;->a:I

    .line 53
    iput-object p2, p0, LTq;->a:Llx;

    .line 54
    return-void

    .line 50
    :cond_1b
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public a(LTM;LkG;Landroid/content/SyncResult;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, LTq;->a:Llx;

    invoke-virtual {v0}, Llx;->b()Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_2f

    .line 62
    iget-object v1, p0, LTq;->a:Llx;

    invoke-virtual {v1}, Llx;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 63
    new-instance v3, LVv;

    iget-object v4, p0, LTq;->a:LTN;

    invoke-direct {v3, v4, v1, v2}, LVv;-><init>(LTN;J)V

    iput-object v3, p0, LTq;->a:LVu;

    .line 64
    new-instance v1, LVi;

    iget-object v2, p0, LTq;->a:LVu;

    invoke-direct {v1, v2}, LVi;-><init>(LTN;)V

    iput-object v1, p0, LTq;->a:LVi;

    .line 65
    invoke-virtual {p2}, LkG;->b()Ljava/lang/String;

    move-result-object v1

    .line 66
    iget-object v2, p0, LTq;->a:LVi;

    iget v3, p0, LTq;->a:I

    invoke-interface {p1, v0, v1, v2, v3}, LTM;->a(Ljava/lang/String;Ljava/lang/String;LTN;I)V

    .line 68
    :cond_2f
    return-void
.end method

.method public a(Landroid/content/SyncResult;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 72
    if-eqz p2, :cond_1f

    .line 73
    iget-object v1, p0, LTq;->a:LVi;

    if-eqz v1, :cond_29

    .line 74
    iget-object v1, p0, LTq;->a:LVi;

    invoke-virtual {v1}, LVi;->a()Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v2, p0, LTq;->a:LVu;

    invoke-interface {v2}, LVu;->a()Ljava/util/Date;

    move-result-object v2

    .line 76
    if-nez v2, :cond_20

    .line 77
    :goto_15
    iget-object v2, p0, LTq;->a:Llx;

    invoke-virtual {v2, v1, v0}, Llx;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    iget-object v0, p0, LTq;->a:Llx;

    invoke-virtual {v0}, Llx;->c()V

    .line 86
    :cond_1f
    :goto_1f
    return-void

    .line 76
    :cond_20
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_15

    .line 82
    :cond_29
    iget-object v1, p0, LTq;->a:LTN;

    invoke-interface {v1}, LTN;->a()V

    .line 83
    iget-object v1, p0, LTq;->a:LTN;

    invoke-interface {v1, v0}, LTN;->a(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 90
    const-string v0, "SyncMoreAlgorithm[delegate=%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LTq;->a:LTN;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
