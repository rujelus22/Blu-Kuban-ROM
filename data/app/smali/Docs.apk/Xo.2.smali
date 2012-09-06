.class LXo;
.super Landroid/database/ContentObserver;
.source "ActivityUpdater.java"


# instance fields
.field final synthetic a:LXm;


# direct methods
.method constructor <init>(LXm;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, LXo;->a:LXm;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 120
    iget-object v0, p0, LXo;->a:LXm;

    invoke-static {v0}, LXm;->a(LXm;)LZP;

    move-result-object v0

    invoke-virtual {v0}, LZP;->a()V

    .line 121
    return-void
.end method
