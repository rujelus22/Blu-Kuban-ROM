.class public final Lcom/google/android/youtube/core/async/GDataRequestFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field public static final i:Landroid/net/Uri;

.field public static final j:Landroid/net/Uri;

.field public static final k:Landroid/net/Uri;

.field public static final l:Landroid/net/Uri;

.field public static final m:Landroid/net/Uri;

.field public static final n:Landroid/net/Uri;

.field public static final o:Landroid/net/Uri;

.field public static final p:Landroid/net/Uri;

.field public static final q:Ljava/util/Set;

.field private static final r:Landroid/net/Uri;

.field private static final s:Ljava/util/HashSet;


# instance fields
.field private final t:I

.field private final u:Lcom/google/android/youtube/core/utils/SafeSearch;

.field private final v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    .line 65
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "stage.gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c:Landroid/net/Uri;

    .line 72
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dev.gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d:Landroid/net/Uri;

    .line 79
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uploads.gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/resumable/feeds/api/users/default/uploads"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e:Landroid/net/Uri;

    .line 85
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/uploads"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->f:Landroid/net/Uri;

    .line 88
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/favorites"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->g:Landroid/net/Uri;

    .line 91
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/subscriptions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->h:Landroid/net/Uri;

    .line 94
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/subtivity"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->i:Landroid/net/Uri;

    .line 99
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/subtivity"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "highlights"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->j:Landroid/net/Uri;

    .line 105
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/events"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->k:Landroid/net/Uri;

    .line 110
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/watch_later"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->l:Landroid/net/Uri;

    .line 113
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/watch_history"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->m:Landroid/net/Uri;

    .line 118
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/playlists"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->n:Landroid/net/Uri;

    .line 121
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/newsubscriptionvideos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->o:Landroid/net/Uri;

    .line 124
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/recommendations"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->p:Landroid/net/Uri;

    .line 127
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/feeds/api/users/default/suggestion"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "channel"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->r:Landroid/net/Uri;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "zh-TW"

    aput-object v2, v1, v4

    const-string v2, "cs-CZ"

    aput-object v2, v1, v5

    const-string v2, "nl-NL"

    aput-object v2, v1, v6

    const-string v2, "en-GB"

    aput-object v2, v1, v7

    const-string v2, "en-US"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "fr-FR"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "de-DE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "it-IT"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ja-JP"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "ko-KR"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "pl-PL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "pt-BR"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "ru-RU"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "es-ES"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "es-MX"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "sv-SE"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->s:Ljava/util/HashSet;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AR"

    aput-object v2, v1, v4

    const-string v2, "AU"

    aput-object v2, v1, v5

    const-string v2, "BR"

    aput-object v2, v1, v6

    const-string v2, "CA"

    aput-object v2, v1, v7

    const-string v2, "CZ"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "FR"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "GB"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "HK"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "IN"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "IE"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "IL"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "IT"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "JP"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "MX"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "NL"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "NZ"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "PL"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "RU"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "ZA"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "KR"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "ES"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "SE"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "TW"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "US"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->q:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/youtube/core/utils/SafeSearch;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    if-lez p1, :cond_41

    move v0, v1

    :goto_8
    const-string v3, "resultsPerPage must be > 0"

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 348
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1b

    :cond_1a
    move v2, v1

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "countryCodeRestrict must be empty or a two letter country code (given: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 352
    iput p1, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    .line 353
    iput-object p2, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->u:Lcom/google/android/youtube/core/utils/SafeSearch;

    .line 354
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->v:Ljava/lang/String;

    .line 359
    :goto_40
    return-void

    :cond_41
    move v0, v2

    .line 347
    goto :goto_8

    .line 357
    :cond_43
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Util;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->v:Ljava/lang/String;

    goto :goto_40
.end method

.method private a(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1321
    const-string v0, "start-index"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v0, "max-results"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 1323
    :cond_10
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1324
    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 1325
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 1327
    :cond_1c
    return-object p1
.end method

.method public static a()Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2

    .prologue
    .line 421
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "thefeed"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><content>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1f4

    const-string v2, ""

    invoke-static {p2, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</content></entry>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 977
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->h(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><id>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</id></entry>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1077
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->h(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 588
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "charts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "live"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 594
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b(Landroid/net/Uri$Builder;)V

    .line 598
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 985
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "videos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "complaints"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 991
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->toString()Ljava/lang/String;

    move-result-object v0

    .line 992
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><summary>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1f4

    const-string v4, ""

    invoke-static {p3, v3, v4}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</summary><category scheme=\'http://gdata.youtube.com/schemas/2007/complaint-reasons.cat\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "term=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'/></entry>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->h(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 482
    const-string v0, "filename may not be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 483
    const-string v0, "privacy may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 485
    const-string v0, "Slug"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\'1.0\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:media=\'http://search.yahoo.com/mrss/\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\' xmlns:gml=\'http://www.opengis.net/gml\' xmlns:georss=\'http://www.georss.org/georss\'><media:group><media:title type=\'plain\'>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3c

    invoke-static {p3, v2, p0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</media:title>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ca

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "<media:description type=\'plain\'>"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1388

    const-string v4, ""

    invoke-static {p4, v3, v4}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</media:description>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<media:category scheme=\'http://gdata.youtube.com/schemas/2007/categories.cat\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string p5, "People"

    :cond_60
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</media:category><media:keywords>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x1f4

    const-string v3, ""

    invoke-static {p6, v2, v3}, Lcom/google/android/youtube/core/utils/Util;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</media:keywords>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-ne p2, v0, :cond_cd

    const-string v0, "<yt:private/>"

    :goto_82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</media:group>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p7, :cond_ec

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "<georss:where><gml:Point><gml:pos>"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</gml:pos></gml:Point></georss:where>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</entry>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->h(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v2, p1, v1, v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0

    .line 486
    :cond_ca
    const-string v0, ""

    goto :goto_4e

    :cond_cd
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "<yt:accessControl action=\'list\' permission=\'"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/youtube/core/model/Video$Privacy;->PUBLIC:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-ne p2, v0, :cond_e9

    const-string v0, "allowed"

    :goto_da
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'/>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_82

    :cond_e9
    const-string v0, "denied"

    goto :goto_da

    :cond_ec
    const-string v0, ""

    goto :goto_b1
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Z)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 955
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "videos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ratings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><yt:rating value=\'"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_3c

    const-string v0, "like"

    :goto_25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'/></entry>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 966
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->h(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0

    .line 960
    :cond_3c
    const-string v0, "dislike"

    goto :goto_25
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 695
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gdata.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "schemas/2007/categories.cat"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 699
    if-eqz p0, :cond_47

    if-eqz p1, :cond_47

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 701
    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequestFactory;->s:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 702
    const-string v2, "hl"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 705
    :cond_47
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 15
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
    .parameter

    .prologue
    .line 1149
    const-string v0, "editUri cannot be null"

    invoke-static {p9, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:media=\'http://search.yahoo.com/mrss/\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\' xmlns:gd=\'http://schemas.google.com/g/2005\' xmlns:gml=\'http://www.opengis.net/gml\' xmlns:georss=\'http://www.georss.org/georss\'><media:group><media:title type=\'plain\'>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3c

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</media:title><media:description type=\'plain\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1388

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</media:description><media:category label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x64

    const-string v2, ""

    invoke-static {p3, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' scheme=\'http://gdata.youtube.com/schemas/2007/categories.cat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</media:category><media:keywords>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1f4

    const-string v2, ""

    invoke-static {p4, v1, v2}, Lcom/google/android/youtube/core/utils/Util;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</media:keywords>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-ne p5, v0, :cond_db

    const-string v0, "<yt:private/>"

    :goto_6e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</media:group>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1175
    if-nez p6, :cond_83

    .line 1176
    new-instance p6, Ljava/util/LinkedHashMap;

    invoke-direct {p6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1178
    :cond_83
    if-eqz p5, :cond_90

    .line 1179
    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->PUBLIC:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-ne p5, v1, :cond_de

    .line 1180
    const-string v1, "list"

    const-string v2, "allowed"

    invoke-interface {p6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    :cond_90
    :goto_90
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    .line 1186
    :goto_99
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 1187
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<yt:accessControl action=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' permission=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1190
    goto :goto_99

    .line 1151
    :cond_db
    const-string v0, ""

    goto :goto_6e

    .line 1182
    :cond_de
    const-string v1, "list"

    const-string v2, "denied"

    invoke-interface {p6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_90

    .line 1191
    :cond_e6
    if-eqz p7, :cond_140

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<yt:location>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</yt:location>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1194
    :goto_105
    if-eqz p8, :cond_124

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<georss:where><gml:Point><gml:pos>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</gml:pos></gml:Point></georss:where>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1198
    :cond_124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</entry>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1200
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->h(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p9, p10, v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0

    :cond_140
    move-object v0, v2

    goto :goto_105
.end method

.method private a(Landroid/net/Uri$Builder;)V
    .registers 3
    .parameter

    .prologue
    .line 1299
    iget v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;I)V

    .line 1300
    return-void
.end method

.method private a(Landroid/net/Uri$Builder;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1292
    const-string v0, "format"

    const-string v1, "2,3,8,9"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1293
    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 1294
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Landroid/net/Uri$Builder;)V

    .line 1295
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Landroid/net/Uri$Builder;)V

    .line 1296
    return-void
.end method

.method private static a(Landroid/net/Uri$Builder;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1336
    const-string v0, "start-index"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1337
    const-string v0, "max-results"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1338
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 538
    const-string v0, "videoId cannot be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 539
    const-string v0, "userAuth cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->f:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/net/Uri$Builder;)V
    .registers 4
    .parameter

    .prologue
    .line 1313
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    invoke-static {p1, v0, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 1314
    return-void
.end method

.method public static c(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2
    .parameter

    .prologue
    .line 457
    const-string v0, "uri cannot be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1006
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\'><id>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</id></entry>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->h(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/net/Uri$Builder;)V
    .registers 4
    .parameter

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->u:Lcom/google/android/youtube/core/utils/SafeSearch;

    if-eqz v0, :cond_17

    .line 1342
    const-string v0, "safeSearch"

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->u:Lcom/google/android/youtube/core/utils/SafeSearch;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/SafeSearch;->a()Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1345
    :cond_17
    return-void
.end method

.method public static d(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1050
    const-string v0, "editUri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1020
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "watch_later"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><id>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</id></entry>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1031
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->h(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/net/Uri$Builder;)V
    .registers 4
    .parameter

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->v:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1349
    const-string v0, "restriction"

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1351
    :cond_b
    return-void
.end method

.method public static e(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter

    .prologue
    .line 602
    const-string v0, "uri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v0, "true"

    const-string v1, "inline"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 604
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 606
    :cond_23
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1055
    const-string v0, "editUri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1035
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "watch_history"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><id>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</id></entry>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1046
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->h(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1060
    const-string v0, "editUri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1204
    const-string v0, "username can\'t be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1205
    const-string v0, "userAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "subscriptions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><category scheme=\'http://gdata.youtube.com/schemas/2007/subscriptiontypes.cat\' term=\'user\'/><yt:username>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</yt:username></entry>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1219
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->h(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1065
    const-string v0, "editUri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1259
    const-string v0, "username can\'t be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1260
    const-string v0, "userAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><yt:username>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</yt:username></entry>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1272
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->h(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1085
    const-string v0, "editUri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private i(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter

    .prologue
    .line 761
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 762
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 763
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static i(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1118
    const-string v0, "editUri cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private j(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 1332
    iget v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1242
    const-string v0, "subscription editUri may not be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 942
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 943
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "partners"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "branding"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 948
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter

    .prologue
    .line 1247
    const-string v0, "hint can\'t be empty"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1248
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "suggest"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "fields"

    const-string v2, "entry/title"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "hint"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1255
    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private static l(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 374
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "videos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static m(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 467
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 434
    const-string v0, "uri cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->j(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 442
    const-string v0, "uri cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->j(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter

    .prologue
    .line 568
    invoke-virtual {p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory$LiveFeed;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 923
    iget v1, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "standardfeeds"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Util;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/android/youtube/core/async/GDataRequestFactory;->q:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    :goto_2a
    if-eqz v0, :cond_2f

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_38
    if-eqz p4, :cond_43

    const-string v0, "time"

    invoke-virtual {p4}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_43
    invoke-direct {p0, v3, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;I)V

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0

    :cond_4f
    const/4 v0, 0x0

    goto :goto_2a

    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_38
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 414
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->r:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 415
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b(Landroid/net/Uri$Builder;)V

    .line 416
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 545
    const-string v0, "userAuth cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->f:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 547
    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 548
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 839
    const-string v0, "userAuth cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    const-string v0, "userId cannot be empty"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 841
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->h:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "fields"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "entry[yt:username=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\']"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 846
    const/4 v1, 0x1

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 847
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 362
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->l(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;I)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 719
    const-string v0, "username cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "playlists"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 724
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "uri cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 378
    const-string v0, "query cannot be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 379
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "videos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 382
    if-eqz p2, :cond_22

    .line 383
    const-string v1, "time"

    invoke-virtual {p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 385
    :cond_22
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;)V

    .line 386
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 368
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->l(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ZLcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1091
    const-string v0, ""

    const-string v1, "title cannot be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "description cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "users"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "playlists"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'><title type=\'text\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3c

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</title><summary>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1388

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</summary>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_6e

    const-string v0, "<yt:private/>"

    :goto_57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</entry>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->h(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, p3, v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0

    :cond_6e
    const-string v0, ""

    goto :goto_57
.end method

.method public final b()Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3

    .prologue
    .line 572
    const-string v0, "featured"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->j(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->i(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter

    .prologue
    .line 427
    iget v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    const-string v1, "userAuth cannot be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory;->o:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;I)V

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 627
    const-string v0, "userAuth cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 629
    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 630
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter

    .prologue
    .line 403
    const-string v0, "query cannot be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 404
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "channels"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 407
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 408
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Landroid/net/Uri$Builder;)V

    .line 409
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Landroid/net/Uri$Builder;)V

    .line 410
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3

    .prologue
    .line 576
    const-string v0, "live_now"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 821
    iget v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    const-string v1, "playlistUri cannot be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 462
    const-string v0, "userAuth cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v0, "default"

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->m(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 638
    const-string v0, "userAuth cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->l:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 640
    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 641
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 452
    const-string v0, "username cannot be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 453
    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->m(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3

    .prologue
    .line 584
    const-string v0, "recently_broadcasted"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter

    .prologue
    .line 531
    const-string v0, "uri cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 533
    iget v1, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 534
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 552
    iget v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 649
    const-string v0, "userAuth cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->m:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 651
    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 652
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 522
    const-string v0, "username cannot be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 523
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uploads"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 634
    iget v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 739
    const-string v0, "userAuth cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->n:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 741
    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 742
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 611
    const-string v0, "username cannot be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 612
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "uri cannot be empty"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final f(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter

    .prologue
    .line 684
    const-string v0, "uri cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 687
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b(Landroid/net/Uri$Builder;)V

    .line 688
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 645
    iget v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 661
    const-string v0, "Username cannot be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 662
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "author"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inline"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "uri cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b(Landroid/net/Uri$Builder;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final g(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->i(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 656
    iget v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 710
    iget v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final h(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter

    .prologue
    .line 804
    iget v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    const-string v1, "playlistUri cannot be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 735
    iget v0, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->e(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter

    .prologue
    .line 773
    const-string v0, "playlistId cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "playlists"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 777
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    .line 778
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 833
    const-string v0, "userAuth cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->h:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->j(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter

    .prologue
    .line 788
    const-string v0, "playlistId cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "playlists"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->t:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;II)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final j(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 869
    const-string v0, "userAuth cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->j:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 871
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;)V

    .line 872
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    .line 883
    const-string v0, "userAuth cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->p:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 885
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Landroid/net/Uri$Builder;)V

    .line 886
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method
