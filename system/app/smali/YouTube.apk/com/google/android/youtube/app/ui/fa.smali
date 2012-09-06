.class final Lcom/google/android/youtube/app/ui/fa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ev;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/ev;)V
    .registers 2
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/fa;->a:Lcom/google/android/youtube/app/ui/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/ev;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/fa;-><init>(Lcom/google/android/youtube/app/ui/ev;)V

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
    .line 310
    if-eqz p1, :cond_26

    .line 311
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 312
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/ArtistBundle$Related;

    .line 313
    if-eqz v0, :cond_26

    .line 314
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/fa;->a:Lcom/google/android/youtube/app/ui/ev;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ev;->i(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/core/Analytics$VideoCategory;->RelatedArtist:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v1, v2, p3}, Lcom/google/android/youtube/core/Analytics;->a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 315
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/fa;->a:Lcom/google/android/youtube/app/ui/ev;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ev;->j(Lcom/google/android/youtube/app/ui/ev;)Lcom/google/android/youtube/app/a;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/youtube/core/model/ArtistBundle$Related;->id:Ljava/lang/String;

    sget-object v2, Lcom/google/android/youtube/app/m;->B:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;Lcom/google/android/youtube/core/b/aj;)V

    .line 318
    :cond_26
    return-void
.end method
