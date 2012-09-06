.class LXn;
.super Ljava/lang/Object;
.source "ActivityUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LXm;


# direct methods
.method constructor <init>(LXm;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, LXn;->a:LXm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, LXn;->a:LXm;

    invoke-static {v0}, LXm;->a(LXm;)Landroid/database/ContentObserver;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 90
    iget-object v0, p0, LXn;->a:LXm;

    invoke-static {v0}, LXm;->a(LXm;)LXp;

    move-result-object v0

    invoke-interface {v0}, LXp;->m()V

    .line 92
    :cond_11
    return-void
.end method
