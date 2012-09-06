.class public Lcom/google/googlenav/android/AndroidGmmApplication;
.super Landroid/app/Application;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/android/b;

.field private b:Lcom/google/googlenav/android/b;

.field private c:Lcom/google/googlenav/friend/OptInSyncBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/android/b;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/android/b;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    .line 95
    return-void
.end method

.method public b()Lcom/google/googlenav/android/b;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    return-object v0
.end method

.method public b(Lcom/google/googlenav/android/b;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    .line 99
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    if-eqz v0, :cond_c

    .line 141
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/b;->a(Landroid/content/res/Configuration;)V

    .line 143
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    if-eqz v0, :cond_15

    .line 144
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/b;->a(Landroid/content/res/Configuration;)V

    .line 146
    :cond_15
    return-void
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 104
    invoke-static {p0}, Lcom/google/googlenav/friend/OptInSyncBroadcastReceiver;->b(Landroid/content/Context;)Lcom/google/googlenav/friend/OptInSyncBroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->c:Lcom/google/googlenav/friend/OptInSyncBroadcastReceiver;

    .line 105
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    if-eqz v0, :cond_c

    .line 129
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    invoke-interface {v0}, Lcom/google/googlenav/android/b;->e()V

    .line 131
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    if-eqz v0, :cond_15

    .line 132
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    invoke-interface {v0}, Lcom/google/googlenav/android/b;->e()V

    .line 134
    :cond_15
    return-void
.end method

.method public onTerminate()V
    .registers 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 111
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    if-eqz v0, :cond_c

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    invoke-interface {v0}, Lcom/google/googlenav/android/b;->d()V

    .line 114
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    if-eqz v0, :cond_15

    .line 115
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    invoke-interface {v0}, Lcom/google/googlenav/android/b;->d()V

    .line 117
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->c:Lcom/google/googlenav/friend/OptInSyncBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method
