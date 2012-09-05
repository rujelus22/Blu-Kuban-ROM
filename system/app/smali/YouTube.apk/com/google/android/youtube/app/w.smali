.class final Lcom/google/android/youtube/app/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/v;

.field private final b:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final c:Lcom/google/android/youtube/core/async/g;

.field private final d:Ljava/util/HashMap;

.field private e:I

.field private final f:Ljava/util/ArrayList;

.field private g:Ljava/lang/Exception;

.field private h:Ljava/lang/Exception;

.field private final i:Ljava/util/ArrayList;

.field private final j:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/v;Lcom/google/android/youtube/core/async/g;Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/HashMap;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/youtube/app/w;->a:Lcom/google/android/youtube/app/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/g;

    iput-object v0, p0, Lcom/google/android/youtube/app/w;->c:Lcom/google/android/youtube/core/async/g;

    .line 206
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest;

    iput-object v0, p0, Lcom/google/android/youtube/app/w;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 207
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/google/android/youtube/app/w;->d:Ljava/util/HashMap;

    .line 208
    iput p5, p0, Lcom/google/android/youtube/app/w;->j:I

    .line 209
    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/w;->e:I

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/youtube/app/w;->e:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/w;->f:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/w;->i:Ljava/util/ArrayList;

    .line 212
    return-void
.end method

.method private a()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 238
    iget v0, p0, Lcom/google/android/youtube/app/w;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/w;->e:I

    .line 239
    iget v0, p0, Lcom/google/android/youtube/app/w;->e:I

    if-nez v0, :cond_80

    .line 240
    iget-object v5, p0, Lcom/google/android/youtube/app/w;->f:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/google/android/youtube/app/w;->i:Ljava/util/ArrayList;

    move v3, v2

    move v1, v2

    :goto_12
    if-nez v1, :cond_42

    const/4 v0, 0x1

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_99

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    move v0, v2

    :goto_3c
    move v1, v0

    goto :goto_1a

    :cond_3e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_12

    .line 241
    :cond_42
    iget-object v0, p0, Lcom/google/android/youtube/app/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 242
    iget-object v0, p0, Lcom/google/android/youtube/app/w;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_81

    .line 243
    iget-object v7, p0, Lcom/google/android/youtube/app/w;->c:Lcom/google/android/youtube/core/async/g;

    iget-object v8, p0, Lcom/google/android/youtube/app/w;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v0, Lcom/google/android/youtube/core/model/Page;

    iget-object v1, p0, Lcom/google/android/youtube/app/w;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/app/w;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/google/android/youtube/app/w;->j:I

    iget-object v6, p0, Lcom/google/android/youtube/app/w;->i:Ljava/util/ArrayList;

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Page;-><init>(IIILandroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V

    invoke-interface {v7, v8, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/youtube/app/w;->g:Ljava/lang/Exception;

    if-eqz v0, :cond_80

    .line 251
    iget-object v0, p0, Lcom/google/android/youtube/app/w;->c:Lcom/google/android/youtube/core/async/g;

    iget-object v1, p0, Lcom/google/android/youtube/app/w;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "some feed sources failed"

    iget-object v4, p0, Lcom/google/android/youtube/app/w;->g:Ljava/lang/Exception;

    invoke-direct {v2, v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 261
    :cond_80
    :goto_80
    return-void

    .line 255
    :cond_81
    iget-object v1, p0, Lcom/google/android/youtube/app/w;->c:Lcom/google/android/youtube/core/async/g;

    iget-object v2, p0, Lcom/google/android/youtube/app/w;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "all feed sources failed"

    iget-object v0, p0, Lcom/google/android/youtube/app/w;->g:Ljava/lang/Exception;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/google/android/youtube/app/w;->g:Ljava/lang/Exception;

    :goto_8f
    invoke-direct {v3, v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_80

    :cond_96
    iget-object v0, p0, Lcom/google/android/youtube/app/w;->h:Ljava/lang/Exception;

    goto :goto_8f

    :cond_99
    move v0, v1

    goto :goto_3c
.end method

.method private declared-synchronized a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 215
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/app/w;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/a/y;

    .line 216
    iget-object v1, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    .line 217
    iget-object v3, p0, Lcom/google/android/youtube/app/w;->a:Lcom/google/android/youtube/app/v;

    invoke-static {v3}, Lcom/google/android/youtube/app/v;->a(Lcom/google/android/youtube/app/v;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    goto :goto_f

    .line 215
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 219
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/google/android/youtube/app/w;->f:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-direct {p0}, Lcom/google/android/youtube/app/w;->a()V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_27

    .line 221
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Exception;)V
    .registers 5
    .parameter

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    instance-of v1, p1, Lcom/google/android/youtube/core/async/GDataResponseException;

    if-eqz v1, :cond_35

    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/core/async/GDataResponseException;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsYouTubeSignupRequiredError()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError in the feed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it\'s youtube_signup_required (or equivalent), ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 229
    iput-object p1, p0, Lcom/google/android/youtube/app/w;->h:Ljava/lang/Exception;

    .line 234
    :goto_30
    invoke-direct {p0}, Lcom/google/android/youtube/app/w;->a()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_51

    .line 235
    monitor-exit p0

    return-void

    .line 231
    :cond_35
    :try_start_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError in the feed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 232
    iput-object p1, p0, Lcom/google/android/youtube/app/w;->g:Ljava/lang/Exception;
    :try_end_50
    .catchall {:try_start_35 .. :try_end_50} :catchall_51

    goto :goto_30

    .line 224
    :catchall_51
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/w;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 187
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/w;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method
