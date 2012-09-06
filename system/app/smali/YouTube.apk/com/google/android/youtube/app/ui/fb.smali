.class public final Lcom/google/android/youtube/app/ui/fb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private final a:Lcom/google/android/youtube/app/ui/eh;

.field private final b:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final c:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private d:Lcom/google/android/youtube/core/model/Video;

.field private e:Lcom/google/android/youtube/core/async/GDataRequest;

.field private f:Lcom/google/android/youtube/core/async/GDataRequest;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/GDataRequestFactory;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/d;)V
    .registers 23
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
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v1, "userAuthorizer cannot be null"

    move-object/from16 v0, p6

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/fb;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 51
    const-string v1, "gdataRequestFactory cannot be null"

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/fb;->c:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 53
    new-instance v1, Lcom/google/android/youtube/app/ui/eh;

    const/4 v7, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/google/android/youtube/app/m;->B:Lcom/google/android/youtube/core/b/aj;

    sget-object v12, Lcom/google/android/youtube/core/Analytics$VideoCategory;->RelatedVideos:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p9

    move-object/from16 v8, p4

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v12}, Lcom/google/android/youtube/app/ui/eh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/fb;->a:Lcom/google/android/youtube/app/ui/eh;

    .line 65
    return-void
.end method

.method private c()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->e:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->f:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_1b

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->a:Lcom/google/android/youtube/app/ui/eh;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/fb;->f:Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/fb;->e:Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 130
    :goto_1a
    return-void

    .line 123
    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->e:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_2b

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->a:Lcom/google/android/youtube/app/ui/eh;

    new-array v1, v4, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/fb;->e:Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_1a

    .line 125
    :cond_2b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->f:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_3b

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->a:Lcom/google/android/youtube/app/ui/eh;

    new-array v1, v4, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/fb;->f:Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_1a

    .line 128
    :cond_3b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->a:Lcom/google/android/youtube/app/ui/eh;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/eh;->e()V

    goto :goto_1a
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Branding;)V
    .registers 4
    .parameter

    .prologue
    .line 87
    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Branding;->featuredPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->c:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Branding;->featuredPlaylistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->i(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->f:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 91
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->d:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->d:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    if-eqz v0, :cond_20

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 96
    :goto_1f
    return-void

    .line 94
    :cond_20
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/fb;->c()V

    goto :goto_1f
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->d:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_13

    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->c:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/fb;->d:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->e:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 102
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/fb;->c()V

    .line 104
    :cond_13
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 76
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/fb;->d:Lcom/google/android/youtube/core/model/Video;

    .line 77
    iput-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->f:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 78
    iput-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->e:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 79
    if-eqz p1, :cond_f

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->a:Lcom/google/android/youtube/app/ui/eh;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/eh;->d()V

    .line 84
    :goto_e
    return-void

    .line 82
    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->a:Lcom/google/android/youtube/app/ui/eh;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/eh;->e()V

    goto :goto_e
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->d:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_13

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->c:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/fb;->d:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->e:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 109
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/fb;->c()V

    .line 111
    :cond_13
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/fb;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 69
    return-void
.end method

.method public final e_()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->d:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_13

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->c:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/fb;->d:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/fb;->e:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 116
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/fb;->c()V

    .line 118
    :cond_13
    return-void
.end method
