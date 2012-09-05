.class final Lcom/google/android/youtube/app/ui/dq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/dm;)V
    .registers 3
    .parameter

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/dq;-><init>(Lcom/google/android/youtube/app/ui/dm;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/ui/dm;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dq;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    if-eqz p1, :cond_27

    .line 321
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 322
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/MusicVideo;

    .line 323
    if-eqz v0, :cond_27

    .line 324
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dq;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->j(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ArtistTracks:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v1, v2, p3}, Lcom/google/android/youtube/core/Analytics;->a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 325
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dq;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->k(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/o;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_RELATED_MUSIC_VIDEO:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/client/al;)V

    .line 328
    :cond_27
    return-void
.end method
