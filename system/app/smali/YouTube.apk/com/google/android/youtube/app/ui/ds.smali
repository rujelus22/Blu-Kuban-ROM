.class public final Lcom/google/android/youtube/app/ui/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/av;


# static fields
.field private static final a:Lcom/google/android/youtube/app/a/y;


# instance fields
.field private final b:Lcom/google/android/youtube/app/ui/cv;

.field private final c:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;

.field private final e:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private f:Lcom/google/android/youtube/core/model/Video;

.field private g:Lcom/google/android/youtube/core/async/GDataRequest;

.field private h:Lcom/google/android/youtube/core/async/GDataRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/youtube/app/a/y;

    const v1, 0x7f0a0159

    sget-object v2, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_RELATED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/a/y;-><init>(ILcom/google/android/youtube/core/client/al;)V

    sput-object v0, Lcom/google/android/youtube/app/ui/ds;->a:Lcom/google/android/youtube/app/a/y;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/GDataRequestFactory;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/e;)V
    .registers 26
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v1, "userAuthorizer cannot be null"

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ds;->c:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 64
    const-string v1, "gdataRequestFactory cannot be null"

    move-object/from16 v0, p8

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ds;->e:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 66
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ds;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ds;->d:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/a/x;->a(Landroid/app/Activity;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/google/android/youtube/app/a/x;

    move-result-object v6

    .line 68
    new-instance v1, Lcom/google/android/youtube/app/ui/dt;

    const/4 v10, 0x0

    sget-object v12, Lcom/google/android/youtube/core/Analytics$VideoCategory;->RelatedVideos:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v13, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_RELATED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p9

    move-object/from16 v14, p10

    invoke-direct/range {v1 .. v14}, Lcom/google/android/youtube/app/ui/dt;-><init>(Lcom/google/android/youtube/app/ui/ds;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ds;->b:Lcom/google/android/youtube/app/ui/cv;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ds;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->h:Lcom/google/android/youtube/core/async/GDataRequest;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/ds;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic c()Lcom/google/android/youtube/app/a/y;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/youtube/app/ui/ds;->a:Lcom/google/android/youtube/app/a/y;

    return-object v0
.end method

.method private d()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->g:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->h:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_1b

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->b:Lcom/google/android/youtube/app/ui/cv;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ds;->h:Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ds;->g:Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 157
    :goto_1a
    return-void

    .line 150
    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->g:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_2b

    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->b:Lcom/google/android/youtube/app/ui/cv;

    new-array v1, v4, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ds;->g:Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_1a

    .line 152
    :cond_2b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->h:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_3b

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->b:Lcom/google/android/youtube/app/ui/cv;

    new-array v1, v4, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ds;->h:Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_1a

    .line 155
    :cond_3b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->b:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->e()V

    goto :goto_1a
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Branding;)V
    .registers 4
    .parameter

    .prologue
    .line 114
    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Branding;->featuredPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->e:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Branding;->featuredPlaylistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->i(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->h:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 118
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->f:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->f:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    if-eqz v0, :cond_20

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->c:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/av;)V

    .line 123
    :goto_1f
    return-void

    .line 121
    :cond_20
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ds;->d()V

    goto :goto_1f
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->f:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_13

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->e:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ds;->f:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->g:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 129
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ds;->d()V

    .line 131
    :cond_13
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 102
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ds;->f:Lcom/google/android/youtube/core/model/Video;

    .line 103
    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->h:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 104
    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->g:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 106
    if-eqz p1, :cond_14

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->b:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->d()V

    .line 111
    :goto_13
    return-void

    .line 109
    :cond_14
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->b:Lcom/google/android/youtube/app/ui/cv;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/cv;->e()V

    goto :goto_13
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->f:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_13

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->e:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ds;->f:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->g:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 136
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ds;->d()V

    .line 138
    :cond_13
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/ds;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 95
    return-void
.end method

.method public final d_()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->f:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_13

    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->e:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ds;->f:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->g:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 143
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ds;->d()V

    .line 145
    :cond_13
    return-void
.end method
