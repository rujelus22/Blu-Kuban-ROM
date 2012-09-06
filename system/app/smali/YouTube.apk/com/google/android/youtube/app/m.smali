.class public final Lcom/google/android/youtube/app/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lcom/google/android/youtube/core/b/aj;

.field public static final B:Lcom/google/android/youtube/core/b/aj;

.field public static final C:Lcom/google/android/youtube/core/b/aj;

.field public static final D:Lcom/google/android/youtube/core/b/aj;

.field public static final E:Lcom/google/android/youtube/core/b/aj;

.field public static final F:Lcom/google/android/youtube/core/b/aj;

.field public static final G:Lcom/google/android/youtube/core/b/aj;

.field public static final H:Lcom/google/android/youtube/core/b/aj;

.field public static final I:Lcom/google/android/youtube/core/b/aj;

.field public static final J:Lcom/google/android/youtube/core/b/aj;

.field public static final K:Lcom/google/android/youtube/core/b/aj;

.field public static final L:Lcom/google/android/youtube/core/b/aj;

.field public static final M:Lcom/google/android/youtube/core/b/aj;

.field public static final N:Lcom/google/android/youtube/core/b/aj;

.field public static final O:Lcom/google/android/youtube/core/b/aj;

.field public static final P:Lcom/google/android/youtube/core/b/aj;

.field public static final Q:Lcom/google/android/youtube/core/b/aj;

.field public static final R:Lcom/google/android/youtube/core/b/aj;

.field public static final S:Lcom/google/android/youtube/core/b/aj;

.field private static final T:Ljava/util/List;

.field public static final a:Lcom/google/android/youtube/core/b/aj;

.field public static final b:Lcom/google/android/youtube/core/b/aj;

.field public static final c:Lcom/google/android/youtube/core/b/aj;

.field public static final d:Lcom/google/android/youtube/core/b/aj;

.field public static final e:Lcom/google/android/youtube/core/b/aj;

.field public static final f:Lcom/google/android/youtube/core/b/aj;

.field public static final g:Lcom/google/android/youtube/core/b/aj;

.field public static final h:Lcom/google/android/youtube/core/b/aj;

.field public static final i:Lcom/google/android/youtube/core/b/aj;

.field public static final j:Lcom/google/android/youtube/core/b/aj;

.field public static final k:Lcom/google/android/youtube/core/b/aj;

.field public static final l:Lcom/google/android/youtube/core/b/aj;

.field public static final m:Lcom/google/android/youtube/core/b/aj;

.field public static final n:Lcom/google/android/youtube/core/b/aj;

.field public static final o:Lcom/google/android/youtube/core/b/aj;

.field public static final p:Lcom/google/android/youtube/core/b/aj;

.field public static final q:Lcom/google/android/youtube/core/b/aj;

.field public static final r:Lcom/google/android/youtube/core/b/aj;

.field public static final s:Lcom/google/android/youtube/core/b/aj;

.field public static final t:Lcom/google/android/youtube/core/b/aj;

.field public static final u:Lcom/google/android/youtube/core/b/aj;

.field public static final v:Lcom/google/android/youtube/core/b/aj;

.field public static final w:Lcom/google/android/youtube/core/b/aj;

.field public static final x:Lcom/google/android/youtube/core/b/aj;

.field public static final y:Lcom/google/android/youtube/core/b/aj;

.field public static final z:Lcom/google/android/youtube/core/b/aj;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 18
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_subscription_uploads_feed"

    const-string v2, "y"

    const-string v3, "f:g-all-u"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->a:Lcom/google/android/youtube/core/b/aj;

    .line 20
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_subscription_actvity_feed"

    const-string v2, "y"

    const-string v3, "f:g-all-a"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->b:Lcom/google/android/youtube/core/b/aj;

    .line 22
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_user_uploads"

    const-string v2, "y"

    const-string v3, "f:g-user-u"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->c:Lcom/google/android/youtube/core/b/aj;

    .line 24
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_user_activity"

    const-string v2, "y"

    const-string v3, "f:g-user-a"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->d:Lcom/google/android/youtube/core/b/aj;

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_trending"

    const-string v2, "y"

    const-string v3, "f:g-trend"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->e:Lcom/google/android/youtube/core/b/aj;

    .line 28
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_recommended"

    const-string v2, "y"

    const-string v3, "f:g-vrec"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->f:Lcom/google/android/youtube/core/b/aj;

    .line 30
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_autos"

    const-string v2, "y"

    const-string v3, "f:g-auto"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->g:Lcom/google/android/youtube/core/b/aj;

    .line 32
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_comedy"

    const-string v2, "y"

    const-string v3, "f:g-comedy"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->h:Lcom/google/android/youtube/core/b/aj;

    .line 34
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_education"

    const-string v2, "y"

    const-string v3, "f:g-edu"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->i:Lcom/google/android/youtube/core/b/aj;

    .line 36
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_entertainment"

    const-string v2, "y"

    const-string v3, "f:g-ent"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->j:Lcom/google/android/youtube/core/b/aj;

    .line 38
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_film"

    const-string v2, "y"

    const-string v3, "f:g-film"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->k:Lcom/google/android/youtube/core/b/aj;

    .line 40
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_games"

    const-string v2, "y"

    const-string v3, "f:g-games"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->l:Lcom/google/android/youtube/core/b/aj;

    .line 42
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_music"

    const-string v2, "y"

    const-string v3, "f:g-music"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->m:Lcom/google/android/youtube/core/b/aj;

    .line 44
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_news"

    const-string v2, "y"

    const-string v3, "f:g-news"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->n:Lcom/google/android/youtube/core/b/aj;

    .line 46
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_nonprofit"

    const-string v2, "y"

    const-string v3, "f:g-npo"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->o:Lcom/google/android/youtube/core/b/aj;

    .line 48
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_people"

    const-string v2, "y"

    const-string v3, "f:g-people"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->p:Lcom/google/android/youtube/core/b/aj;

    .line 50
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_animals"

    const-string v2, "y"

    const-string v3, "f:g-pets"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->q:Lcom/google/android/youtube/core/b/aj;

    .line 52
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_tech"

    const-string v2, "y"

    const-string v3, "f:g-sci"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->r:Lcom/google/android/youtube/core/b/aj;

    .line 54
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_sports"

    const-string v2, "y"

    const-string v3, "f:g-sports"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->s:Lcom/google/android/youtube/core/b/aj;

    .line 56
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_howto"

    const-string v2, "y"

    const-string v3, "f:g-howto"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->t:Lcom/google/android/youtube/core/b/aj;

    .line 58
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "guide_category_travel"

    const-string v2, "y"

    const-string v3, "f:g-travel"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->u:Lcom/google/android/youtube/core/b/aj;

    .line 62
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "home_featured"

    const-string v2, "y"

    const-string v3, "f:featured"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->v:Lcom/google/android/youtube/core/b/aj;

    .line 64
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "home_most_popular"

    const-string v2, "y"

    const-string v3, "f:topvideos_mp"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->w:Lcom/google/android/youtube/core/b/aj;

    .line 66
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "home_most_discussed"

    const-string v2, "y"

    const-string v3, "f:topvideos_md"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->x:Lcom/google/android/youtube/core/b/aj;

    .line 68
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "home_recommended"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->y:Lcom/google/android/youtube/core/b/aj;

    .line 70
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "home_default"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->z:Lcom/google/android/youtube/core/b/aj;

    .line 72
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "subscriptions"

    const-string v2, "y"

    const-string v3, "f:feedu"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->A:Lcom/google/android/youtube/core/b/aj;

    .line 76
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "watch_related"

    const-string v2, "yw"

    const-string v3, "f:related"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->B:Lcom/google/android/youtube/core/b/aj;

    .line 78
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "watch_related_music_video"

    const-string v2, "yw"

    const-string v3, "f:BFa"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->C:Lcom/google/android/youtube/core/b/aj;

    .line 82
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "channel_activity"

    const-string v2, "y"

    const-string v3, "f:channel_activity"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->D:Lcom/google/android/youtube/core/b/aj;

    .line 84
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "channel_uploads"

    const-string v2, "y"

    const-string v3, "f:channel_uploads"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->E:Lcom/google/android/youtube/core/b/aj;

    .line 86
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "channel_favorites"

    const-string v2, "y"

    const-string v3, "f:channel_favorites"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->F:Lcom/google/android/youtube/core/b/aj;

    .line 90
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "my_uploads"

    const-string v2, "y"

    const-string v3, "f:my_uploads"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->G:Lcom/google/android/youtube/core/b/aj;

    .line 92
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "my_favorites"

    const-string v2, "y"

    const-string v3, "f:my_favorites"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->H:Lcom/google/android/youtube/core/b/aj;

    .line 95
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "youtube_search"

    const-string v2, "ys"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->I:Lcom/google/android/youtube/core/b/aj;

    .line 97
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "youtube_media_play_from_search"

    const-string v2, "r"

    const-string v3, "f:ympfs"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->J:Lcom/google/android/youtube/core/b/aj;

    .line 99
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "browse"

    const-string v2, "y"

    const-string v3, "f:browse"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->K:Lcom/google/android/youtube/core/b/aj;

    .line 101
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "widget"

    const-string v2, "y"

    const-string v3, "f:widget"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->L:Lcom/google/android/youtube/core/b/aj;

    .line 103
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "playlist"

    const-string v2, "y"

    const-string v3, "f:plpp_play_all"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->M:Lcom/google/android/youtube/core/b/aj;

    .line 105
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "live"

    const-string v2, "y"

    const-string v3, "f:lb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->N:Lcom/google/android/youtube/core/b/aj;

    .line 107
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "live_teaser"

    const-string v2, "y"

    const-string v3, "f:live_teaser"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->O:Lcom/google/android/youtube/core/b/aj;

    .line 109
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "watch_later"

    const-string v2, "y"

    const-string v3, "f:watch_later"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->P:Lcom/google/android/youtube/core/b/aj;

    .line 111
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "watch_history"

    const-string v2, "y"

    const-string v3, "f:watch_history"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->Q:Lcom/google/android/youtube/core/b/aj;

    .line 113
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "remote_queue"

    const-string v2, "y"

    const-string v3, "f:remote_queue"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->R:Lcom/google/android/youtube/core/b/aj;

    .line 115
    new-instance v0, Lcom/google/android/youtube/core/b/aj;

    const-string v1, "remote_qr_scan"

    const-string v2, "y"

    const-string v3, "f:remote_qr_scan"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/b/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/app/m;->S:Lcom/google/android/youtube/core/b/aj;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    sget-object v1, Lcom/google/android/youtube/app/m;->a:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lcom/google/android/youtube/app/m;->b:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/google/android/youtube/app/m;->c:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lcom/google/android/youtube/app/m;->d:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Lcom/google/android/youtube/app/m;->e:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v1, Lcom/google/android/youtube/app/m;->f:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v1, Lcom/google/android/youtube/app/m;->g:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v1, Lcom/google/android/youtube/app/m;->h:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v1, Lcom/google/android/youtube/app/m;->i:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v1, Lcom/google/android/youtube/app/m;->j:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v1, Lcom/google/android/youtube/app/m;->k:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v1, Lcom/google/android/youtube/app/m;->l:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v1, Lcom/google/android/youtube/app/m;->m:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v1, Lcom/google/android/youtube/app/m;->n:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v1, Lcom/google/android/youtube/app/m;->o:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v1, Lcom/google/android/youtube/app/m;->p:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v1, Lcom/google/android/youtube/app/m;->q:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v1, Lcom/google/android/youtube/app/m;->r:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v1, Lcom/google/android/youtube/app/m;->s:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v1, Lcom/google/android/youtube/app/m;->t:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v1, Lcom/google/android/youtube/app/m;->u:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v1, Lcom/google/android/youtube/app/m;->v:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v1, Lcom/google/android/youtube/app/m;->w:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v1, Lcom/google/android/youtube/app/m;->x:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v1, Lcom/google/android/youtube/app/m;->y:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v1, Lcom/google/android/youtube/app/m;->z:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v1, Lcom/google/android/youtube/app/m;->A:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v1, Lcom/google/android/youtube/app/m;->B:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v1, Lcom/google/android/youtube/app/m;->C:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v1, Lcom/google/android/youtube/app/m;->D:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v1, Lcom/google/android/youtube/app/m;->E:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v1, Lcom/google/android/youtube/app/m;->F:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v1, Lcom/google/android/youtube/app/m;->G:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v1, Lcom/google/android/youtube/app/m;->H:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v1, Lcom/google/android/youtube/app/m;->I:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v1, Lcom/google/android/youtube/app/m;->K:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v1, Lcom/google/android/youtube/app/m;->L:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v1, Lcom/google/android/youtube/app/m;->M:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v1, Lcom/google/android/youtube/app/m;->N:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v1, Lcom/google/android/youtube/app/m;->O:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v1, Lcom/google/android/youtube/app/m;->P:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v1, Lcom/google/android/youtube/app/m;->Q:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v1, Lcom/google/android/youtube/app/m;->R:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/app/m;->T:Ljava/util/List;

    .line 165
    return-void
.end method

.method public static a()Ljava/util/List;
    .registers 1

    .prologue
    .line 168
    sget-object v0, Lcom/google/android/youtube/app/m;->T:Ljava/util/List;

    return-object v0
.end method
