.class public Lcom/twitter/android/client/AppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/HashMap;

    const-string v1, "com.twitter.android.poll.data"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/HashMap;

    const-string v1, "com.twitter.android.widget.button.next"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/HashMap;

    const-string v1, "com.twitter.android.widget.button.prev"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/HashMap;

    const-string v1, "com.twitter.android.c2dm.push_result"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-static {p1}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/twitter/android/client/AppBroadcastReceiver;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1c
    packed-switch v0, :pswitch_data_32

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_1c

    :pswitch_22
    invoke-virtual {v1, p2}, Lcom/twitter/android/client/b;->a(Landroid/content/Intent;)V

    goto :goto_1f

    :pswitch_26
    invoke-virtual {v1, p2}, Lcom/twitter/android/client/b;->c(Landroid/content/Intent;)V

    goto :goto_1f

    :pswitch_2a
    invoke-virtual {v1, p2}, Lcom/twitter/android/client/b;->d(Landroid/content/Intent;)V

    goto :goto_1f

    :pswitch_2e
    invoke-virtual {v1, p2}, Lcom/twitter/android/client/b;->e(Landroid/content/Intent;)V

    goto :goto_1f

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_2e
    .end packed-switch
.end method
