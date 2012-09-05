.class final Lcom/google/android/youtube/core/player/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/ad;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/ad;)V
    .registers 2
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/youtube/core/player/af;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 175
    const-string v0, "error retrieving subtitle tracks"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 175
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/google/android/youtube/core/player/af;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/ad;->e(Lcom/google/android/youtube/core/player/ad;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0028

    invoke-static {v1, v2, v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    :goto_17
    return-void

    :cond_18
    iget-object v1, p0, Lcom/google/android/youtube/core/player/af;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/ad;->f(Lcom/google/android/youtube/core/player/ad;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    if-nez v1, :cond_79

    iget-object v1, p0, Lcom/google/android/youtube/core/player/af;->a:Lcom/google/android/youtube/core/player/ad;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/af;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/ad;->e(Lcom/google/android/youtube/core/player/ad;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090011

    invoke-direct {v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/player/ad;->a(Lcom/google/android/youtube/core/player/ad;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    :goto_33
    iget-object v1, p0, Lcom/google/android/youtube/core/player/af;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/ad;->a(Lcom/google/android/youtube/core/player/ad;)Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lcom/google/android/youtube/core/player/af;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/ad;->f(Lcom/google/android/youtube/core/player/ad;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/model/SubtitleTrack;

    const-string v3, ""

    iget-object v4, p0, Lcom/google/android/youtube/core/player/af;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v4}, Lcom/google/android/youtube/core/player/ad;->e(Lcom/google/android/youtube/core/player/ad;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a0027

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_5a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_5f
    if-ge v1, v2, :cond_83

    iget-object v0, p0, Lcom/google/android/youtube/core/player/af;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ad;->f(Lcom/google/android/youtube/core/player/ad;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/core/model/SubtitleTrack;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleTrack;

    invoke-direct {v4, v0, p1}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5f

    :cond_79
    iget-object v1, p0, Lcom/google/android/youtube/core/player/af;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/ad;->f(Lcom/google/android/youtube/core/player/ad;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    goto :goto_33

    :cond_83
    iget-object v0, p0, Lcom/google/android/youtube/core/player/af;->a:Lcom/google/android/youtube/core/player/ad;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/ad;->a()V

    goto :goto_17
.end method
