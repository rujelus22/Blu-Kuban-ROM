.class public Lcom/google/googlenav/android/AndroidGmmApplication;
.super Landroid/app/Application;


# instance fields
.field private a:Lcom/google/googlenav/android/b;

.field private b:Lcom/google/googlenav/android/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/android/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/android/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    return-void
.end method

.method public b()Lcom/google/googlenav/android/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    return-object v0
.end method

.method public b(Lcom/google/googlenav/android/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/b;->a(Landroid/content/res/Configuration;)V

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/b;->a(Landroid/content/res/Configuration;)V

    :cond_15
    return-void
.end method

.method public onCreate()V
    .registers 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    invoke-interface {v0}, Lcom/google/googlenav/android/b;->d()V

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    invoke-interface {v0}, Lcom/google/googlenav/android/b;->d()V

    :cond_15
    return-void
.end method

.method public onTerminate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->a:Lcom/google/googlenav/android/b;

    invoke-interface {v0}, Lcom/google/googlenav/android/b;->c()V

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/android/AndroidGmmApplication;->b:Lcom/google/googlenav/android/b;

    invoke-interface {v0}, Lcom/google/googlenav/android/b;->c()V

    :cond_15
    return-void
.end method
