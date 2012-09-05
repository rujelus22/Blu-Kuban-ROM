.class final Lcom/google/android/youtube/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/youtube/app/a;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/a;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/youtube/app/b;->b:Lcom/google/android/youtube/app/a;

    iput-object p2, p0, Lcom/google/android/youtube/app/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/b;->b:Lcom/google/android/youtube/app/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;)Lcom/google/android/a/a/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/a/a/a/n;->a()V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/app/b;->b:Lcom/google/android/youtube/app/a;

    sget-object v1, Lcom/google/android/youtube/app/t;->e:Lcom/google/android/youtube/app/t;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/t;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/app/b;->b:Lcom/google/android/youtube/app/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/a;->b(Lcom/google/android/youtube/app/a;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/app/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/app/b;->b:Lcom/google/android/youtube/app/a;

    invoke-static {v1}, Lcom/google/android/youtube/app/a;->c(Lcom/google/android/youtube/app/a;)Lcom/google/android/youtube/app/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/b;->b:Lcom/google/android/youtube/app/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;Z)Z

    .line 95
    :cond_29
    return-void
.end method
