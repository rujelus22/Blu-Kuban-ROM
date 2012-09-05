.class final Lcom/google/android/youtube/app/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/a;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/a;)V
    .registers 3
    .parameter

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/g;-><init>(Lcom/google/android/youtube/app/a;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/a;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/google/android/youtube/app/g;->a:Lcom/google/android/youtube/app/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 410
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/a/c/b;->a(Ljava/lang/String;)Lcom/google/android/a/c/b;

    move-result-object v0

    .line 411
    sget-object v1, Lcom/google/android/youtube/app/f;->b:[I

    invoke-virtual {v0}, Lcom/google/android/a/c/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_38

    .line 425
    :goto_13
    return-void

    .line 414
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/youtube/app/g;->a:Lcom/google/android/youtube/app/a;

    sget-object v1, Lcom/google/android/youtube/app/q;->b:Lcom/google/android/youtube/app/q;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/q;)V

    goto :goto_13

    .line 417
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/youtube/app/g;->a:Lcom/google/android/youtube/app/a;

    invoke-static {v0}, Lcom/google/android/youtube/app/a;->h(Lcom/google/android/youtube/app/a;)Lcom/google/android/youtube/core/utils/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/i;->a()Z

    move-result v0

    if-nez v0, :cond_30

    .line 419
    iget-object v0, p0, Lcom/google/android/youtube/app/g;->a:Lcom/google/android/youtube/app/a;

    sget-object v1, Lcom/google/android/youtube/app/q;->b:Lcom/google/android/youtube/app/q;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/q;)V

    goto :goto_13

    .line 421
    :cond_30
    iget-object v0, p0, Lcom/google/android/youtube/app/g;->a:Lcom/google/android/youtube/app/a;

    sget-object v1, Lcom/google/android/youtube/app/q;->a:Lcom/google/android/youtube/app/q;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a;->a(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/app/q;)V

    goto :goto_13

    .line 411
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_1c
    .end packed-switch
.end method
