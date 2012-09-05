.class final Lcom/google/android/marvin/talkback/i;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final a:Landroid/content/IntentFilter;

.field private synthetic b:Lcom/google/android/marvin/talkback/l;


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/l;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/marvin/talkback/i;->b:Lcom/google/android/marvin/talkback/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/i;->a:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/i;->a:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/i;->a:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/i;->a:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/IntentFilter;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/i;->a:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/google/android/marvin/talkback/i;->b:Lcom/google/android/marvin/talkback/l;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/l;->h(Lcom/google/android/marvin/talkback/l;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/marvin/talkback/i;->b:Lcom/google/android/marvin/talkback/l;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/i;->b:Lcom/google/android/marvin/talkback/l;

    invoke-static {v1}, Lcom/google/android/marvin/talkback/l;->h(Lcom/google/android/marvin/talkback/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/marvin/talkback/l;->c(Lcom/google/android/marvin/talkback/l;Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/marvin/talkback/i;->b:Lcom/google/android/marvin/talkback/l;

    const-string v1, "com.google.android.tts"

    invoke-static {v0, v1}, Lcom/google/android/marvin/talkback/l;->c(Lcom/google/android/marvin/talkback/l;Ljava/lang/String;)V

    goto :goto_1f
.end method
