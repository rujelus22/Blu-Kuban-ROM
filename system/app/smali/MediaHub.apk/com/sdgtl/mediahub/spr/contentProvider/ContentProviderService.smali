.class public Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;
.super Landroid/app/Service;


# static fields
.field private static h:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field a:Lcom/sdgtl/mediahub/spr/contentProvider/p;

.field public b:Landroid/os/Handler;

.field public c:Landroid/os/Handler;

.field private d:Ljava/util/HashMap;

.field private e:Ljava/util/HashMap;

.field private f:Ljava/util/ArrayList;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->h:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->g:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/contentProvider/g;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/contentProvider/g;-><init>(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->a:Lcom/sdgtl/mediahub/spr/contentProvider/p;

    new-instance v0, Lcom/sdgtl/mediahub/spr/contentProvider/h;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/contentProvider/h;-><init>(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/contentProvider/i;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/contentProvider/i;-><init>(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;ILandroid/os/Bundle;)J
    .registers 7

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    new-instance v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;-><init>()V

    iput-wide v0, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    iput p1, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->b:I

    iput-object p2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->c:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-wide v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)V
    .registers 3

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->g:Z

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sdgtl/mediahub/spr/contentProvider/j;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/contentProvider/j;-><init>(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_11
    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;J)V
    .registers 6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->e:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/contentProvider/d;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a()V

    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_39

    const-string v0, "MediaHubCP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ContentProviderService ImageThread cancel id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;JI)V
    .registers 7

    new-instance v0, Lcom/sdgtl/mediahub/spr/contentProvider/d;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->c:Landroid/os/Handler;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/d;-><init>(JILandroid/os/Handler;)V

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/contentProvider/d;->b:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->e:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_4c

    const-string v0, "MediaHubCP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ContentProviderService ImageThread added id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;JZ)V
    .registers 6

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "req_finished"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "request_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1a
    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->g:Z

    return-void
.end method

.method static synthetic b()J
    .registers 2

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)Z
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)V
    .registers 6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_58

    :try_start_8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_59

    if-eqz v0, :cond_58

    new-instance v1, Lcom/sdgtl/mediahub/spr/contentProvider/k;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->b:Landroid/os/Handler;

    invoke-direct {v1, p0, v0, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/k;-><init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/k;->start()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->d:Ljava/util/HashMap;

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v1, :cond_58

    const-string v1, "MediaHubCP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ContentProviderService WorkThread added id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", num = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return-void

    :cond_59
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "req_message"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "response_msg"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_7c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_7c} :catch_7d

    goto :goto_58

    :catch_7d
    move-exception v0

    const-string v1, "MediaHubAPP"

    const-string v2, "processMessage() IndexOutOfBoundsException !!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_58
.end method


# virtual methods
.method protected final a(J)V
    .registers 9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-lt v1, v2, :cond_47

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->d:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a()V

    :cond_1b
    invoke-static {p1, p2}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->b(J)V

    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_46

    const-string v0, "MediaHubCP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ContentProviderService WorkThread cancel id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-void

    :cond_47
    add-int/lit8 v3, v1, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    cmp-long v0, v4, p1

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method public final a()Z
    .registers 2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->a:Lcom/sdgtl/mediahub/spr/contentProvider/p;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/a/a/a/a/c/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/a/a/a/a/b/f;->a()Lcom/a/a/a/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a/b/f;->b()V

    invoke-static {}, Lcom/a/a/a/a/a/c;->a()Lcom/a/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/a/a/c;->a(Ljava/io/File;)V

    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a/d/b;->b()V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->d()V

    :cond_c
    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->h:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1c
    invoke-static {}, Lcom/a/a/a/a/b/f;->a()Lcom/a/a/a/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a/b/f;->f()V

    invoke-static {}, Lcom/a/a/a/a/a/c;->a()Lcom/a/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a/a/c;->b()V

    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a/d/b;->c()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
