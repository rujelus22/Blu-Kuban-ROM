.class public Lcom/google/android/youtube/app/b/d;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/av;
.implements Lcom/google/android/youtube/core/transfer/d;


# instance fields
.field private a:Lcom/google/android/youtube/core/utils/c;

.field private b:Landroid/app/AlarmManager;

.field private c:Lcom/google/android/youtube/app/b/i;

.field private d:I

.field private e:Landroid/os/Handler;

.field private f:Lcom/google/android/youtube/core/client/ad;

.field private g:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private h:Lcom/google/android/youtube/core/utils/n;

.field private i:Lcom/google/android/youtube/core/transfer/g;

.field private j:Ljava/util/Map;

.field private k:Ljava/util/Set;

.field private l:Ljava/util/Set;

.field private m:Lcom/google/android/youtube/app/b/l;

.field private n:Lcom/google/android/youtube/core/Analytics;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 371
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 95
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/youtube/app/ae;->a:Lcom/google/android/youtube/app/af;

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/b/d;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    iget v0, p0, Lcom/google/android/youtube/app/b/d;->d:I

    if-lez v0, :cond_73

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/k;->a(Z)V

    iget v0, p0, Lcom/google/android/youtube/app/b/d;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/b/d;->d:I

    if-nez v0, :cond_f4

    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->m:Lcom/google/android/youtube/app/b/l;

    iget-object v2, p0, Lcom/google/android/youtube/app/b/d;->k:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/youtube/app/b/d;->l:Ljava/util/Set;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/youtube/app/b/l;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/android/youtube/app/b/n;

    move-result-object v2

    iget-object v0, v2, Lcom/google/android/youtube/app/b/n;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/b/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding prefetch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/youtube/app/b/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    new-instance v4, Lcom/google/android/youtube/core/transfer/b;

    invoke-direct {v4}, Lcom/google/android/youtube/core/transfer/b;-><init>()V

    const-string v5, "published_date"

    iget-wide v6, v0, Lcom/google/android/youtube/app/b/a;->d:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;J)V

    const-string v5, "size"

    iget-wide v6, v0, Lcom/google/android/youtube/app/b/a;->c:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;J)V

    const-string v5, "source"

    iget-object v6, v0, Lcom/google/android/youtube/app/b/a;->e:Lcom/google/android/youtube/app/b/b;

    invoke-virtual {v6}, Lcom/google/android/youtube/app/b/b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/youtube/app/b/d;->i:Lcom/google/android/youtube/core/transfer/g;

    iget-object v6, v0, Lcom/google/android/youtube/app/b/a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/youtube/app/b/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v0, v4}, Lcom/google/android/youtube/core/transfer/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->n:Lcom/google/android/youtube/core/Analytics;

    const-string v4, "PrefetchAdded"

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    goto :goto_21

    :cond_73
    move v0, v1

    goto :goto_6

    :cond_75
    iget-object v0, v2, Lcom/google/android/youtube/app/b/n;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7b
    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/b/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing prefetch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/youtube/app/b/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, v0, Lcom/google/android/youtube/app/b/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/b/d;->i:Lcom/google/android/youtube/core/transfer/g;

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/transfer/g;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_7b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_7b

    :cond_c7
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/youtube/app/b/d;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/b/d;->b:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/youtube/app/b/d;->a:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v3}, Lcom/google/android/youtube/core/utils/c;->b()J

    move-result-wide v3

    const-wide/32 v5, 0x1499700

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->h:Lcom/google/android/youtube/core/utils/n;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->h:Lcom/google/android/youtube/core/utils/n;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/utils/n;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/b/d;->h:Lcom/google/android/youtube/core/utils/n;

    :cond_f1
    invoke-virtual {p0}, Lcom/google/android/youtube/app/b/d;->stopSelf()V

    :cond_f4
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/core/model/Page;Lcom/google/android/youtube/app/b/b;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new videos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iget v2, p0, Lcom/google/android/youtube/app/b/d;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/youtube/app/b/d;->d:I

    iget-object v2, p0, Lcom/google/android/youtube/app/b/d;->f:Lcom/google/android/youtube/core/client/ad;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/app/b/d;->e:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/youtube/app/b/g;

    invoke-direct {v5, p0, v0, p2}, Lcom/google/android/youtube/app/b/g;-><init>(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/b/b;)V

    invoke-static {v4, v5}, Lcom/google/android/youtube/core/async/v;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/v;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/google/android/youtube/core/client/ad;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_25

    :cond_4a
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/b/b;Landroid/net/Uri;J)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->c:Lcom/google/android/youtube/app/b/i;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/b/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-wide v2, p4

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/youtube/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/app/b/b;)Lcom/google/android/youtube/app/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/b/d;->l:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/b/b;Lcom/google/android/youtube/core/model/u;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->c:Lcom/google/android/youtube/app/b/i;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/b/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p3, Lcom/google/android/youtube/core/model/u;->b:Lcom/google/android/youtube/core/model/Stream;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/google/android/youtube/app/b/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/app/b/d;->d:I

    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->f:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p3, Lcom/google/android/youtube/core/model/u;->b:Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/b/d;->e:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/youtube/app/b/f;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/youtube/app/b/f;-><init>(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/b/b;)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/v;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/v;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/ad;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    :cond_2a
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x32

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is signed in, requesting videos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 212
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/youtube/app/b/d;->d:I

    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->f:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/b/d;->e:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/youtube/app/b/h;

    sget-object v3, Lcom/google/android/youtube/app/b/b;->a:Lcom/google/android/youtube/app/b/b;

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/b/h;-><init>(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/app/b/b;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/v;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/v;

    move-result-object v1

    invoke-interface {v0, p1, v4, v1}, Lcom/google/android/youtube/core/client/ad;->e(Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/core/async/g;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->f:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/b/d;->e:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/youtube/app/b/h;

    sget-object v3, Lcom/google/android/youtube/app/b/b;->b:Lcom/google/android/youtube/app/b/b;

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/b/h;-><init>(Lcom/google/android/youtube/app/b/d;Lcom/google/android/youtube/app/b/b;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/v;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/v;

    move-result-object v1

    invoke-interface {v0, p1, v4, v1}, Lcom/google/android/youtube/core/client/ad;->c(Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/core/async/g;)V

    .line 217
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 188
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 226
    invoke-virtual {p0}, Lcom/google/android/youtube/app/b/d;->stopSelf()V

    .line 227
    return-void
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 176
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->h:Lcom/google/android/youtube/core/utils/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/n;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/g;

    iput-object v0, p0, Lcom/google/android/youtube/app/b/d;->i:Lcom/google/android/youtube/core/transfer/g;

    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->i:Lcom/google/android/youtube/core/transfer/g;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/g;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/b/d;->j:Ljava/util/Map;

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->i:Lcom/google/android/youtube/core/transfer/g;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/g;->b(Lcom/google/android/youtube/core/transfer/d;)Z

    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 181
    iget-object v2, p0, Lcom/google/android/youtube/app/b/d;->k:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/a;->a(Lcom/google/android/youtube/core/transfer/Transfer;)Lcom/google/android/youtube/app/b/a;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 183
    :cond_3a
    iget-object v0, p0, Lcom/google/android/youtube/app/b/d;->g:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/av;)V

    .line 184
    return-void
.end method

.method public final b(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 196
    return-void
.end method

.method public final c(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 192
    return-void
.end method

.method public final d(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    return-void
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 220
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/youtube/app/b/d;->stopSelf()V

    .line 222
    return-void
.end method

.method public final e(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 204
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrefetchService created at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/youtube/app/b/d;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 107
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/ae;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/youtube/app/ae;->a:Lcom/google/android/youtube/app/af;

    .line 112
    invoke-virtual {p0}, Lcom/google/android/youtube/app/b/d;->stopSelf()V

    .line 113
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrefetchService destroyed at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 138
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 139
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method
