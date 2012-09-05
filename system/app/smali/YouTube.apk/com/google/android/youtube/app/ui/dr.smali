.class final Lcom/google/android/youtube/app/ui/dr;
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
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/dr;-><init>(Lcom/google/android/youtube/app/ui/dm;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/ui/dm;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dr;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    if-eqz p1, :cond_26

    .line 308
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 309
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/ArtistBundle$Related;

    .line 310
    if-eqz v0, :cond_26

    .line 311
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dr;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->j(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/Analytics$VideoCategory;->RelatedArtist:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v1, v2, p3}, Lcom/google/android/youtube/core/Analytics;->a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 312
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dr;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/dm;->k(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/app/o;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/youtube/core/model/ArtistBundle$Related;->id:Ljava/lang/String;

    sget-object v2, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_RELATED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;Lcom/google/android/youtube/core/client/al;)V

    .line 315
    :cond_26
    return-void
.end method
