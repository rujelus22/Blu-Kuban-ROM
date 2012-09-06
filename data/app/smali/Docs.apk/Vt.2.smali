.class final LVt;
.super Ljava/lang/Object;
.source "SynchronizeToDBProcessor.java"

# interfaces
.implements LTN;


# instance fields
.field final a:LTF;

.field final a:Landroid/content/SyncResult;

.field final a:Ljava/lang/Boolean;

.field final a:LkG;

.field final a:Llu;


# direct methods
.method constructor <init>(LkG;Landroid/content/SyncResult;Llu;LTF;Ljava/lang/Boolean;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, LVt;->a:LkG;

    .line 36
    iput-object p2, p0, LVt;->a:Landroid/content/SyncResult;

    .line 37
    iput-object p3, p0, LVt;->a:Llu;

    .line 38
    iput-object p5, p0, LVt;->a:Ljava/lang/Boolean;

    .line 39
    iput-object p4, p0, LVt;->a:LTF;

    .line 40
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method

.method public a(LSr;)V
    .registers 4
    .parameter

    .prologue
    .line 48
    invoke-static {}, LZO;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 49
    iget-object v0, p0, LVt;->a:Llu;

    const-string v1, "PRAGMA synchronous=OFF;"

    invoke-interface {v0, v1}, Llu;->a(Ljava/lang/String;)V

    .line 51
    :cond_d
    return-void
.end method

.method public a(LSr;LSs;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x1

    .line 65
    invoke-virtual {p2}, LSs;->d()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 66
    iget-object v0, p0, LVt;->a:LTF;

    iget-object v1, p0, LVt;->a:LkG;

    iget-object v2, p0, LVt;->a:Ljava/lang/Boolean;

    invoke-interface {v0, v1, p2, v2}, LTF;->b(LkG;LSs;Ljava/lang/Boolean;)V

    .line 68
    iget-object v0, p0, LVt;->a:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numEntries:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numEntries:J

    .line 69
    iget-object v0, p0, LVt;->a:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    .line 76
    :goto_23
    const-string v0, "CompleteFeedProcessor"

    const/4 v1, 0x2

    invoke-static {v0, v1}, LZA;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 77
    const-string v0, "CompleteFeedProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, LSs;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_48
    return-void

    .line 71
    :cond_49
    iget-object v0, p0, LVt;->a:LTF;

    iget-object v1, p0, LVt;->a:LkG;

    iget-object v2, p0, LVt;->a:Ljava/lang/Boolean;

    invoke-interface {v0, v1, p2, v2}, LTF;->a(LkG;LSs;Ljava/lang/Boolean;)V

    .line 72
    iget-object v0, p0, LVt;->a:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numInserts:J

    .line 73
    iget-object v0, p0, LVt;->a:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numEntries:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numEntries:J

    goto :goto_23
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    return-void
.end method

.method public b(LSr;)V
    .registers 4
    .parameter

    .prologue
    .line 56
    invoke-static {}, LZO;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 57
    iget-object v0, p0, LVt;->a:Llu;

    const-string v1, "PRAGMA synchronous=NORMAL;"

    invoke-interface {v0, v1}, Llu;->a(Ljava/lang/String;)V

    .line 59
    :cond_d
    iget-object v0, p0, LVt;->a:LkG;

    invoke-virtual {v0}, LkG;->c()V

    .line 60
    return-void
.end method
