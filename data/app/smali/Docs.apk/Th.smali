.class LTh;
.super LSP;
.source "PreparedSyncMoreImpl.java"


# instance fields
.field private final a:J

.field private final a:LTN;

.field private final a:LVp;

.field private final a:Landroid/content/SyncResult;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llx;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LkG;


# direct methods
.method constructor <init>(LkG;Ljava/util/List;LTN;LVp;Landroid/content/SyncResult;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkG;",
            "Ljava/util/List",
            "<",
            "Llx;",
            ">;",
            "LTN;",
            "LVp;",
            "Landroid/content/SyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, LSP;-><init>()V

    .line 48
    iput-object p1, p0, LTh;->a:LkG;

    .line 49
    const-wide/high16 v0, -0x8000

    .line 50
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v1, v0

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llx;

    .line 51
    invoke-virtual {v0}, Llx;->b()Z

    move-result v3

    if-nez v3, :cond_52

    .line 52
    invoke-virtual {v0}, Llx;->a()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_55

    const/4 v3, 0x1

    :goto_25
    invoke-static {v3}, LafQ;->a(Z)V

    .line 53
    invoke-virtual {v0}, Llx;->a()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 54
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 55
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gtz v3, :cond_52

    .line 56
    const-string v3, "PreparedSyncMore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpectedly low clipTime in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    move-wide v0, v1

    move-wide v1, v0

    .line 58
    goto :goto_c

    .line 52
    :cond_55
    const/4 v3, 0x0

    goto :goto_25

    .line 60
    :cond_57
    iput-wide v1, p0, LTh;->a:J

    .line 61
    iput-object p2, p0, LTh;->a:Ljava/util/List;

    .line 62
    iput-object p3, p0, LTh;->a:LTN;

    .line 63
    iput-object p4, p0, LTh;->a:LVp;

    .line 64
    iput-object p5, p0, LTh;->a:Landroid/content/SyncResult;

    .line 65
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 119
    const-string v0, "PreparedSyncMore"

    const-string v1, "Error syncing more"

    invoke-static {v0, v1, p1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 124
    invoke-virtual {p0}, LTh;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not clipped"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_e
    iget-wide v0, p0, LTh;->a:J

    return-wide v0
.end method

.method public a(I)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v0, p0, LTh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llx;

    .line 91
    new-instance v4, LTq;

    iget-object v5, p0, LTh;->a:LTN;

    invoke-direct {v4, v5, v0, p1}, LTq;-><init>(LTN;Llx;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 93
    :cond_23
    invoke-static {v2}, LVU;->a(Ljava/util/Collection;)LVT;

    move-result-object v0

    .line 94
    iget-object v2, p0, LTh;->a:LVp;

    invoke-interface {v2}, LVp;->a()LTM;

    move-result-object v2

    .line 95
    iget-object v3, p0, LTh;->a:LkG;

    iget-object v4, p0, LTh;->a:Landroid/content/SyncResult;

    invoke-interface {v0, v2, v3, v4}, LVT;->a(LTM;LkG;Landroid/content/SyncResult;)V

    .line 97
    :try_start_34
    iget-object v3, p0, LTh;->a:Landroid/content/SyncResult;

    invoke-interface {v2, v3}, LTM;->a(Landroid/content/SyncResult;)V

    .line 98
    iget-object v2, p0, LTh;->a:Landroid/content/SyncResult;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, LVT;->a(Landroid/content/SyncResult;Z)V
    :try_end_3f
    .catch LarL; {:try_start_34 .. :try_end_3f} :catch_41
    .catch LarZ; {:try_start_34 .. :try_end_3f} :catch_47
    .catch Landroid/accounts/AuthenticatorException; {:try_start_34 .. :try_end_3f} :catch_4c
    .catch LFx; {:try_start_34 .. :try_end_3f} :catch_51
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_3f} :catch_56
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3f} :catch_59

    move v0, v1

    .line 115
    :goto_40
    return v0

    .line 100
    :catch_41
    move-exception v0

    .line 101
    invoke-direct {p0, v0}, LTh;->a(Ljava/lang/Exception;)V

    .line 115
    :goto_45
    const/4 v0, 0x0

    goto :goto_40

    .line 102
    :catch_47
    move-exception v0

    .line 103
    invoke-direct {p0, v0}, LTh;->a(Ljava/lang/Exception;)V

    goto :goto_45

    .line 104
    :catch_4c
    move-exception v0

    .line 105
    invoke-direct {p0, v0}, LTh;->a(Ljava/lang/Exception;)V

    goto :goto_45

    .line 106
    :catch_51
    move-exception v0

    .line 107
    invoke-direct {p0, v0}, LTh;->a(Ljava/lang/Exception;)V

    goto :goto_45

    .line 108
    :catch_56
    move-exception v0

    move v0, v1

    .line 111
    goto :goto_40

    .line 112
    :catch_59
    move-exception v0

    .line 113
    invoke-direct {p0, v0}, LTh;->a(Ljava/lang/Exception;)V

    goto :goto_45
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, LTh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llx;

    .line 70
    invoke-virtual {v0}, Llx;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    const/4 v0, 0x1

    .line 74
    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, LTh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    goto :goto_19
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, LTh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llx;

    .line 80
    invoke-virtual {v0}, Llx;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 132
    const-string v1, "PreparedSyncMore[%s%d feeds, clipTime=%s, %s]"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, LTh;->a()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "running, "

    :goto_e
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, LTh;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-wide v3, p0, LTh;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, LTh;->a:LkG;

    invoke-virtual {v3}, LkG;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    const-string v0, ""

    goto :goto_e
.end method
