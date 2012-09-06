.class public abstract Lcom/google/android/youtube/core/utils/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/os/Binder;

.field private final c:Ljava/lang/Class;

.field private final d:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/v;->c:Ljava/lang/Class;

    .line 40
    new-instance v0, Lcom/google/android/youtube/core/utils/w;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/utils/w;-><init>(Lcom/google/android/youtube/core/utils/v;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/v;->d:Landroid/content/ServiceConnection;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/utils/v;Landroid/os/Binder;)Landroid/os/Binder;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/youtube/core/utils/v;->b:Landroid/os/Binder;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/utils/v;)Z
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/android/youtube/core/utils/v;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/utils/v;)Landroid/os/Binder;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/v;->b:Landroid/os/Binder;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/os/Binder;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/v;->b:Landroid/os/Binder;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 62
    iget-boolean v0, p0, Lcom/google/android/youtube/core/utils/v;->a:Z

    if-nez v0, :cond_2b

    .line 63
    iput-boolean v2, p0, Lcom/google/android/youtube/core/utils/v;->a:Z

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/youtube/core/utils/v;->c:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    iget-object v1, p0, Lcom/google/android/youtube/core/utils/v;->d:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not bind to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_2b
    return-void
.end method

.method protected abstract a(Landroid/os/Binder;)V
.end method

.method public final b(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/youtube/core/utils/v;->a:Z

    if-eqz v0, :cond_15

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/utils/v;->a:Z

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/v;->b:Landroid/os/Binder;

    if-eqz v0, :cond_10

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/v;->b:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/utils/v;->a(Landroid/os/Binder;)V

    .line 80
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/v;->d:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 82
    :cond_15
    return-void
.end method

.method protected abstract b(Landroid/os/Binder;)V
.end method
