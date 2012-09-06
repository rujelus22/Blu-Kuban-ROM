.class public Lmj;
.super Ljava/lang/Object;
.source "OperationQueueDelegate.java"

# interfaces
.implements LTL;
.implements Lhp;
.implements Lmi;


# instance fields
.field private final a:LFX;

.field private final a:LLh;

.field private final a:LRS;

.field a:LTF;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LTL;

.field private final a:Landroid/content/Context;

.field private final a:LeZ;

.field private final a:Ljava/util/concurrent/Executor;

.field private final a:Llu;

.field private a:Lmi;


# direct methods
.method public constructor <init>(LRS;Llu;Ljava/util/concurrent/Executor;LFX;Landroid/content/Context;LLh;LeZ;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lmj;->a:LRS;

    .line 64
    iput-object p2, p0, Lmj;->a:Llu;

    .line 65
    iput-object p3, p0, Lmj;->a:Ljava/util/concurrent/Executor;

    .line 66
    iput-object p4, p0, Lmj;->a:LFX;

    .line 67
    iput-object p5, p0, Lmj;->a:Landroid/content/Context;

    .line 68
    iput-object p6, p0, Lmj;->a:LLh;

    .line 69
    iput-object p7, p0, Lmj;->a:LeZ;

    .line 70
    return-void
.end method

.method static synthetic a(Lmj;)LFX;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lmj;->a:LFX;

    return-object v0
.end method

.method private declared-synchronized c()V
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 73
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lmj;->a:Lmi;

    if-nez v1, :cond_53

    .line 74
    iget-object v1, p0, Lmj;->a:LeZ;

    sget-object v2, LeV;->g:LeV;

    invoke-interface {v1, v2}, LeZ;->a(LeV;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lmj;->a:LFX;

    const-string v2, "enableMultiOperationQueue"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 78
    :goto_1b
    new-instance v6, Lmk;

    invoke-direct {v6, p0}, Lmk;-><init>(Lmj;)V

    .line 92
    if-eqz v0, :cond_57

    .line 93
    new-instance v0, Lmc;

    iget-object v1, p0, Lmj;->a:LRS;

    iget-object v2, p0, Lmj;->a:Llu;

    iget-object v3, p0, Lmj;->a:LTF;

    iget-object v4, p0, Lmj;->a:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lmj;->a:LFX;

    iget-object v7, p0, Lmj;->a:Landroid/content/Context;

    iget-object v8, p0, Lmj;->a:LLh;

    invoke-direct/range {v0 .. v8}, Lmc;-><init>(LRS;Llu;LTF;Ljava/util/concurrent/Executor;LFX;LZS;Landroid/content/Context;LLh;)V

    .line 96
    iput-object v0, p0, Lmj;->a:Lmi;

    .line 97
    iput-object v0, p0, Lmj;->a:LTL;

    .line 105
    :goto_39
    const-string v0, "OperationQueueDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using OperationQueue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmj;->a:Lmi;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_2 .. :try_end_53} :catchall_69

    .line 107
    :cond_53
    monitor-exit p0

    return-void

    .line 74
    :cond_55
    const/4 v0, 0x0

    goto :goto_1b

    .line 99
    :cond_57
    :try_start_57
    new-instance v0, Lml;

    iget-object v1, p0, Lmj;->a:LRS;

    iget-object v2, p0, Lmj;->a:Llu;

    iget-object v3, p0, Lmj;->a:LTF;

    iget-object v4, p0, Lmj;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3, v4}, Lml;-><init>(LRS;Llu;LTF;Ljava/util/concurrent/Executor;)V

    .line 102
    iput-object v0, p0, Lmj;->a:Lmi;

    .line 103
    iput-object v0, p0, Lmj;->a:LTL;
    :try_end_68
    .catchall {:try_start_57 .. :try_end_68} :catchall_69

    goto :goto_39

    .line 73
    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 146
    invoke-direct {p0}, Lmj;->c()V

    .line 147
    iget-object v0, p0, Lmj;->a:Lmi;

    invoke-interface {v0}, Lmi;->a()V

    .line 148
    return-void
.end method

.method public a(LkG;Lmo;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lmj;->c()V

    .line 136
    iget-object v0, p0, Lmj;->a:Lmi;

    invoke-interface {v0, p1, p2}, Lmi;->a(LkG;Lmo;)V

    .line 137
    return-void
.end method

.method public a(LkT;)V
    .registers 3
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lmj;->c()V

    .line 159
    iget-object v0, p0, Lmj;->a:LTL;

    invoke-interface {v0, p1}, LTL;->a(LkT;)V

    .line 160
    return-void
.end method

.method public a(Lmg;)V
    .registers 3
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lmj;->c()V

    .line 112
    iget-object v0, p0, Lmj;->a:Lmi;

    invoke-interface {v0, p1}, Lmi;->a(Lmg;)V

    .line 113
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 123
    invoke-direct {p0}, Lmj;->c()V

    .line 124
    iget-object v0, p0, Lmj;->a:Lmi;

    invoke-interface {v0}, Lmi;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 152
    invoke-direct {p0}, Lmj;->c()V

    .line 153
    iget-object v0, p0, Lmj;->a:Lmi;

    invoke-interface {v0}, Lmi;->a()V

    .line 154
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 129
    invoke-direct {p0}, Lmj;->c()V

    .line 130
    iget-object v0, p0, Lmj;->a:Lmi;

    invoke-interface {v0}, Lmi;->b()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Lmj;->c()V

    .line 118
    iget-object v0, p0, Lmj;->a:Lmi;

    invoke-interface {v0}, Lmi;->c()Z

    move-result v0

    return v0
.end method
