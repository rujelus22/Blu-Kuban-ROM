.class public final Lcom/google/android/youtube/app/ui/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/r;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/youtube/app/ag;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/lang/Runnable;

.field private final e:Lcom/google/android/youtube/core/client/w;

.field private final f:Landroid/app/NotificationManager;

.field private final g:Lcom/google/android/youtube/app/p;

.field private final h:Landroid/content/res/Resources;

.field private i:Lcom/google/android/a/e/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/app/ag;Lcom/google/android/youtube/core/client/w;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "context can not be null"

    invoke-static {p1, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/br;->a:Landroid/content/Context;

    .line 56
    const-string v0, "remoteControl can not be null"

    invoke-static {p2, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/p;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/br;->g:Lcom/google/android/youtube/app/p;

    .line 57
    const-string v0, "gDataClient can not be null"

    invoke-static {p3, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ag;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/br;->b:Lcom/google/android/youtube/app/ag;

    .line 58
    const-string v0, "imageClient can not be null"

    invoke-static {p4, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/w;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/br;->e:Lcom/google/android/youtube/core/client/w;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/br;->h:Landroid/content/res/Resources;

    .line 61
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/br;->f:Landroid/app/NotificationManager;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/br;->c:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/google/android/youtube/app/ui/bs;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/bs;-><init>(Lcom/google/android/youtube/app/ui/br;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/br;->d:Ljava/lang/Runnable;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/br;)Landroid/app/NotificationManager;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->f:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->f:Landroid/app/NotificationManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 74
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 180
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/br;->b()V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 183
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f0200ed

    invoke-direct {v2, v3, p1, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/br;->d:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v3, "vnd.youtube.launch"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/br;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x1000

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/br;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/br;->h:Landroid/content/res/Resources;

    const v4, 0x7f0a0099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/br;->a:Landroid/content/Context;

    invoke-static {v4, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v1, v3, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->f:Landroid/app/NotificationManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 193
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/br;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/br;)V
    .registers 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/br;->b()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/br;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->a:Landroid/content/Context;

    return-object v0
.end method

.method private c()Ljava/lang/CharSequence;
    .registers 6

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->i:Lcom/google/android/a/e/c;

    if-nez v0, :cond_c

    .line 168
    const-string v0, "We should be connected to a screen, but the value is null"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 169
    const-string v0, ""

    .line 171
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->h:Landroid/content/res/Resources;

    const v1, 0x7f0a01bc

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/br;->i:Lcom/google/android/a/e/c;

    invoke-virtual {v4}, Lcom/google/android/a/e/c;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_b
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/br;)Ljava/lang/CharSequence;
    .registers 2
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/br;->c()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/br;)Lcom/google/android/youtube/core/client/w;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->e:Lcom/google/android/youtube/core/client/w;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/app/s;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/t;)V
    .registers 4
    .parameter

    .prologue
    .line 80
    sget-object v0, Lcom/google/android/youtube/app/ui/bv;->a:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/app/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 96
    :goto_b
    return-void

    .line 84
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/br;->a()V

    goto :goto_b

    .line 87
    :pswitch_10
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->h:Landroid/content/res/Resources;

    const v1, 0x7f0a01c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/br;->a(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 90
    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->g:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->g()Lcom/google/android/a/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/br;->i:Lcom/google/android/a/e/c;

    .line 91
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/br;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/br;->a(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 94
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->g:Lcom/google/android/youtube/app/p;

    invoke-interface {v0}, Lcom/google/android/youtube/app/p;->g()Lcom/google/android/a/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/br;->i:Lcom/google/android/a/e/c;

    .line 95
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/br;->a()V

    goto :goto_b

    .line 80
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_1d
        :pswitch_2d
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/br;->b:Lcom/google/android/youtube/app/ag;

    new-instance v1, Lcom/google/android/youtube/app/ui/bt;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/ui/bt;-><init>(Lcom/google/android/youtube/app/ui/br;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/app/ag;->d(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    .line 157
    return-void
.end method
