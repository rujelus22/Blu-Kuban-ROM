.class public LXm;
.super Ljava/lang/Object;
.source "ActivityUpdater.java"


# instance fields
.field private final a:LXp;

.field private final a:LXr;

.field private final a:LZP;

.field private a:Landroid/database/ContentObserver;

.field private final a:Landroid/os/Handler;

.field private final a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LXp;LXr;)V
    .registers 8
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LXm;->a:Landroid/os/Handler;

    .line 82
    iput-object p1, p0, LXm;->a:LXp;

    .line 83
    iput-object p2, p0, LXm;->a:LXr;

    .line 84
    new-instance v0, LXn;

    invoke-direct {v0, p0}, LXn;-><init>(LXm;)V

    iput-object v0, p0, LXm;->a:Ljava/lang/Runnable;

    .line 94
    new-instance v0, LZP;

    iget-object v1, p0, LXm;->a:Ljava/lang/Runnable;

    const/16 v2, 0x7d0

    iget-object v3, p0, LXm;->a:Landroid/os/Handler;

    const-string v4, "ActivityUpdater"

    invoke-direct {v0, v1, v2, v3, v4}, LZP;-><init>(Ljava/lang/Runnable;ILandroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, LXm;->a:LZP;

    .line 96
    return-void
.end method

.method static synthetic a(LXm;)LXp;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, LXm;->a:LXp;

    return-object v0
.end method

.method static synthetic a(LXm;)LZP;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, LXm;->a:LZP;

    return-object v0
.end method

.method static synthetic a(LXm;)Landroid/database/ContentObserver;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, LXm;->a:Landroid/database/ContentObserver;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, LXm;->a:Landroid/database/ContentObserver;

    if-eqz v0, :cond_15

    .line 103
    const-string v0, "ActivityUpdater"

    const-string v1, "clearing onAccountUpdatedObserver"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, LXm;->a:LXr;

    iget-object v1, p0, LXm;->a:Landroid/database/ContentObserver;

    invoke-interface {v0, p1, v1}, LXr;->b(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, LXm;->a:Landroid/database/ContentObserver;

    .line 107
    :cond_15
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, LXm;->a:Landroid/database/ContentObserver;

    if-nez v0, :cond_22

    .line 115
    const-string v0, "ActivityUpdater"

    const-string v1, "registering onAccountUpdatedObserver"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, LXo;

    iget-object v1, p0, LXm;->a:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, LXo;-><init>(LXm;Landroid/os/Handler;)V

    iput-object v0, p0, LXm;->a:Landroid/database/ContentObserver;

    .line 123
    iget-object v0, p0, LXm;->a:LXr;

    iget-object v1, p0, LXm;->a:Landroid/database/ContentObserver;

    invoke-interface {v0, p1, v1}, LXr;->a(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 125
    if-eqz p2, :cond_22

    .line 126
    iget-object v0, p0, LXm;->a:LZP;

    invoke-virtual {v0}, LZP;->a()V

    .line 129
    :cond_22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 133
    const-string v0, "ActivityUpdater[rateLimiter=%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LXm;->a:LZP;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
