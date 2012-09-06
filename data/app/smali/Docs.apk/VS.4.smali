.class public LVS;
.super Ljava/lang/Object;
.source "FullFeedSyncAlgorithm.java"

# interfaces
.implements LVT;


# instance fields
.field private final a:I

.field private final a:LTF;

.field private final a:LTT;

.field private a:LVu;

.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:LkG;

.field private final a:Llu;

.field private b:LVu;


# direct methods
.method public constructor <init>(LTF;Llu;LTT;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 55
    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, p3, v0}, LVS;-><init>(LTF;Llu;LTT;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(LTF;Llu;LTT;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, LVS;->a:Llu;

    .line 73
    iput-object p3, p0, LVS;->a:LTT;

    .line 74
    iput-object p1, p0, LVS;->a:LTF;

    .line 75
    iput p4, p0, LVS;->a:I

    .line 76
    return-void
.end method


# virtual methods
.method public a(LTM;LkG;Landroid/content/SyncResult;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, LVS;->a:LkG;

    if-nez v0, :cond_67

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, LafQ;->b(Z)V

    .line 92
    iput-object p2, p0, LVS;->a:LkG;

    .line 94
    iget-object v0, p0, LVS;->a:Llu;

    invoke-interface {v0, p2}, Llu;->a(LkG;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LVS;->a:Ljava/util/Set;

    .line 96
    iget-object v0, p0, LVS;->a:LTT;

    iget-object v2, p0, LVS;->a:LTF;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, p3, p2, v1}, LTT;->a(LTF;Landroid/content/SyncResult;LkG;Ljava/lang/Boolean;)LTN;

    move-result-object v0

    .line 98
    iget-object v1, p0, LVS;->a:LTT;

    iget-object v2, p0, LVS;->a:Ljava/util/Set;

    invoke-interface {v1, p2, v2, v0}, LTT;->a(LkG;Ljava/util/Set;LTN;)LTN;

    move-result-object v0

    .line 101
    invoke-virtual {p2}, LkG;->b()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {p0}, LVS;->a()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 108
    iget-object v1, p0, LVS;->a:LTT;

    invoke-interface {v1, v0}, LTT;->a(LTN;)LVu;

    move-result-object v1

    iput-object v1, p0, LVS;->a:LVu;

    .line 109
    iget-object v1, p0, LVS;->a:LVu;

    .line 110
    iget-object v3, p0, LVS;->a:LTT;

    invoke-interface {v3, v0}, LTT;->a(LTN;)LVu;

    move-result-object v0

    iput-object v0, p0, LVS;->b:LVu;

    .line 111
    iget-object v0, p0, LVS;->b:LVu;

    .line 116
    :goto_45
    const-string v3, "https://docs.google.com/feeds/default/private/full?showdeleted=true&showroot=true"

    iget v4, p0, LVS;->a:I

    invoke-interface {p1, v3, v2, v1, v4}, LTM;->a(Ljava/lang/String;Ljava/lang/String;LTN;I)V

    .line 117
    const-string v1, "https://docs.google.com/feeds/default/private/full/-/folder?showdeleted=true&showroot=true"

    iget v3, p0, LVS;->a:I

    invoke-interface {p1, v1, v2, v0, v3}, LTM;->a(Ljava/lang/String;Ljava/lang/String;LTN;I)V

    .line 121
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 122
    invoke-virtual {p2, v0}, LkG;->c(Ljava/util/Date;)V

    .line 123
    invoke-virtual {p2, v0}, LkG;->b(Ljava/util/Date;)V

    .line 124
    invoke-virtual {p2}, LkG;->c()V

    .line 125
    return-void

    :cond_67
    move v0, v1

    .line 91
    goto :goto_6

    :cond_69
    move-object v1, v0

    .line 113
    goto :goto_45
.end method

.method public a(Landroid/content/SyncResult;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 129
    if-eqz p2, :cond_49

    .line 130
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    iget-object v3, p0, LVS;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    .line 134
    iget-object v0, p0, LVS;->a:Llu;

    invoke-interface {v0}, Llu;->a()V

    .line 136
    :try_start_15
    iget-object v0, p0, LVS;->a:LTF;

    iget-object v1, p0, LVS;->a:LkG;

    iget-object v2, p0, LVS;->a:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, LTF;->a(LkG;Ljava/util/Set;)V

    .line 147
    invoke-virtual {p0}, LVS;->a()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 153
    iget-object v0, p0, LVS;->a:LVu;

    invoke-interface {v0}, LVu;->a()Ljava/util/Date;

    move-result-object v0

    .line 154
    iget-object v1, p0, LVS;->b:LVu;

    invoke-interface {v1}, LVu;->a()Ljava/util/Date;

    move-result-object v1

    .line 155
    iget-object v2, p0, LVS;->a:LkG;

    invoke-virtual {v2, v0}, LkG;->c(Ljava/util/Date;)V

    .line 156
    iget-object v0, p0, LVS;->a:LkG;

    invoke-virtual {v0, v1}, LkG;->b(Ljava/util/Date;)V

    .line 161
    :goto_3a
    iget-object v0, p0, LVS;->a:LkG;

    invoke-virtual {v0}, LkG;->c()V

    .line 162
    iget-object v0, p0, LVS;->a:Llu;

    invoke-interface {v0}, Llu;->c()V
    :try_end_44
    .catchall {:try_start_15 .. :try_end_44} :catchall_57

    .line 164
    iget-object v0, p0, LVS;->a:Llu;

    invoke-interface {v0}, Llu;->b()V

    .line 167
    :cond_49
    return-void

    .line 158
    :cond_4a
    :try_start_4a
    iget-object v0, p0, LVS;->a:LkG;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LkG;->c(Ljava/util/Date;)V

    .line 159
    iget-object v0, p0, LVS;->a:LkG;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LkG;->b(Ljava/util/Date;)V
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_57

    goto :goto_3a

    .line 164
    :catchall_57
    move-exception v0

    iget-object v1, p0, LVS;->a:Llu;

    invoke-interface {v1}, Llu;->b()V

    throw v0
.end method

.method a()Z
    .registers 3

    .prologue
    .line 85
    iget v0, p0, LVS;->a:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
