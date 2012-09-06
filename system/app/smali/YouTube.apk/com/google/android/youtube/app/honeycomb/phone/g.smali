.class public final Lcom/google/android/youtube/app/honeycomb/phone/g;
.super Lcom/google/android/youtube/app/honeycomb/phone/p;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;


# instance fields
.field private final d:Landroid/content/res/Resources;

.field private final e:Landroid/view/LayoutInflater;

.field private final f:Lcom/google/android/youtube/app/YouTubeApplication;

.field private final g:Lcom/google/android/youtube/core/d;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/android/youtube/core/b/aj;

.field private j:Lcom/google/android/youtube/app/ui/br;

.field private k:Landroid/view/View;

.field private l:Lcom/google/android/youtube/core/ui/PagedListView;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0xf

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 41
    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "Autos"

    const v2, 0x7f0b00f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f02007b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "Comedy"

    const v2, 0x7f0b00f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f02007c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "Education"

    const v2, 0x7f0b00f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f02007d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "Entertainment"

    const v2, 0x7f0b00f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f02007e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "Film"

    const v2, 0x7f0b00f7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f02007f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "Games"

    const v2, 0x7f0b00f8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f020080

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "Music"

    const v2, 0x7f0b00f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f020082

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "News"

    const v2, 0x7f0b00fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f020083

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "Nonprofit"

    const v2, 0x7f0b00fb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f020084

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "People"

    const v2, 0x7f0b00fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f020085

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "Animals"

    const v2, 0x7f0b00fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f020086

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "Tech"

    const v2, 0x7f0b00fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f020089

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "Sports"

    const v2, 0x7f0b00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f02008a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "Howto"

    const v2, 0x7f0b0100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f02008b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    const-string v1, "Travel"

    const v2, 0x7f0b0101

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f02008c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 71
    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "Autos"

    sget-object v2, Lcom/google/android/youtube/app/m;->g:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "Comedy"

    sget-object v2, Lcom/google/android/youtube/app/m;->h:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "Education"

    sget-object v2, Lcom/google/android/youtube/app/m;->i:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "Entertainment"

    sget-object v2, Lcom/google/android/youtube/app/m;->j:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "Film"

    sget-object v2, Lcom/google/android/youtube/app/m;->k:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "Games"

    sget-object v2, Lcom/google/android/youtube/app/m;->l:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "Music"

    sget-object v2, Lcom/google/android/youtube/app/m;->m:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "News"

    sget-object v2, Lcom/google/android/youtube/app/m;->n:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "Nonprofit"

    sget-object v2, Lcom/google/android/youtube/app/m;->o:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "People"

    sget-object v2, Lcom/google/android/youtube/app/m;->p:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "Animals"

    sget-object v2, Lcom/google/android/youtube/app/m;->q:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "Tech"

    sget-object v2, Lcom/google/android/youtube/app/m;->r:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "Sports"

    sget-object v2, Lcom/google/android/youtube/app/m;->s:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "Howto"

    sget-object v2, Lcom/google/android/youtube/app/m;->t:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->c:Ljava/util/Map;

    const-string v1, "Travel"

    sget-object v2, Lcom/google/android/youtube/app/m;->u:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/p;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V

    .line 102
    const-string v0, "categoryTerm cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->h:Ljava/lang/String;

    .line 103
    const-string v0, "referrer cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/aj;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->i:Lcom/google/android/youtube/core/b/aj;

    .line 104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->e:Landroid/view/LayoutInflater;

    .line 106
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->f:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->f:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->d:Landroid/content/res/Resources;

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->f:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->g:Lcom/google/android/youtube/core/d;

    .line 109
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->e:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_5b

    const v0, 0x7f040070

    move v1, v0

    :goto_41
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/g;->n()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->k:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->k:Landroid/view/View;

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/PagedListView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->l:Lcom/google/android/youtube/core/ui/PagedListView;

    .line 113
    return-void

    .line 109
    :cond_5b
    const v0, 0x7f040014

    move v1, v0

    goto :goto_41
.end method

.method private a()V
    .registers 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->j:Lcom/google/android/youtube/app/ui/br;

    if-eqz v0, :cond_12

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->j:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->d:Landroid/content/res/Resources;

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 173
    :cond_12
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/p;->a(Landroid/content/res/Configuration;)V

    .line 166
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/g;->a()V

    .line 167
    return-void
.end method

.method public final b()V
    .registers 14

    .prologue
    const v7, 0x7f0a0056

    const/4 v12, 0x0

    .line 117
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/p;->b()V

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->f:Lcom/google/android/youtube/app/YouTubeApplication;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->f:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->f:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->f:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v3}, Lcom/google/android/youtube/app/YouTubeApplication;->n()Lcom/google/android/youtube/core/b/ai;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->f:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->U()Lcom/google/android/youtube/core/utils/k;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->f:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v6}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/youtube/app/adapter/bb;->a(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/utils/k;Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/j;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/google/android/youtube/app/honeycomb/ui/a;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->j:Lcom/google/android/youtube/app/ui/br;

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->j:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->d:Landroid/content/res/Resources;

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->b(I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->j:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->d:Landroid/content/res/Resources;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->d:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->d:Landroid/content/res/Resources;

    const v4, 0x7f0a0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->d:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/br;->a(IIII)V

    .line 136
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/g;->a()V

    .line 138
    new-instance v0, Lcom/google/android/youtube/app/ui/eh;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->l:Lcom/google/android/youtube/core/ui/PagedListView;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->j:Lcom/google/android/youtube/app/ui/br;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->f:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/youtube/core/b/ae;->i()Lcom/google/android/youtube/core/async/ar;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->g:Lcom/google/android/youtube/core/d;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v6}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v7

    iget-object v9, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->i:Lcom/google/android/youtube/core/b/aj;

    iget-object v6, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v6}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->v()Lcom/google/android/youtube/core/Analytics;

    move-result-object v10

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->HomeFeed:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move v6, v12

    move v8, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/ui/eh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    .line 150
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->f:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;->MOST_POPULAR:Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-static {v5}, Lcom/google/android/youtube/core/utils/Util;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/eh;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 156
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 160
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/g;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/g;->h:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
