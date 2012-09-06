.class final Lcom/google/android/youtube/app/ui/cp;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/cj;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/cj;)V
    .registers 2
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cp;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/cj;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/cp;-><init>(Lcom/google/android/youtube/app/ui/cj;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 315
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cp;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/cj;->f(Lcom/google/android/youtube/app/ui/cj;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 322
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cp;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->h(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/app/ui/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cm;->a()V

    .line 334
    :cond_15
    :goto_15
    return-void

    .line 330
    :cond_16
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 331
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cp;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cj;->h(Lcom/google/android/youtube/app/ui/cj;)Lcom/google/android/youtube/app/ui/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cm;->b()V

    goto :goto_15
.end method
