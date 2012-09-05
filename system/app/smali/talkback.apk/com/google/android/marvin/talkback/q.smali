.class final Lcom/google/android/marvin/talkback/q;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/u;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/marvin/talkback/u;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/marvin/talkback/q;-><init>(Lcom/google/android/marvin/talkback/u;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/marvin/talkback/u;B)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/marvin/talkback/q;->a:Lcom/google/android/marvin/talkback/u;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    :goto_5
    return-void

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/marvin/talkback/q;->a:Lcom/google/android/marvin/talkback/u;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/u;->a(Lcom/google/android/marvin/talkback/u;)Lcom/google/android/marvin/talkback/c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/marvin/talkback/c;->a(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_2c

    iget-object v1, p0, Lcom/google/android/marvin/talkback/q;->a:Lcom/google/android/marvin/talkback/u;

    invoke-static {v1, v0}, Lcom/google/android/marvin/talkback/u;->a(Lcom/google/android/marvin/talkback/u;Landroid/view/accessibility/AccessibilityEvent;)V

    :pswitch_17
    iget-object v0, p0, Lcom/google/android/marvin/talkback/q;->a:Lcom/google/android/marvin/talkback/u;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/u;->a(Lcom/google/android/marvin/talkback/u;)Lcom/google/android/marvin/talkback/c;

    move-result-object v1

    monitor-enter v1

    :try_start_1e
    iget-object v0, p0, Lcom/google/android/marvin/talkback/q;->a:Lcom/google/android/marvin/talkback/u;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/u;->a(Lcom/google/android/marvin/talkback/u;)Lcom/google/android/marvin/talkback/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    monitor-exit v1

    goto :goto_5

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    throw v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_17
    .end packed-switch
.end method
