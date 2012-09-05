.class final Lcom/sec/android/app/music/AlbumArtLoader$1;
.super Landroid/os/Handler;
.source "AlbumArtLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AlbumArtLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 29
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_56

    .line 30
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;

    .line 31
    .local v0, ai:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;
    iget-object v3, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->iv:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;

    .line 32
    .local v2, args:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;
    iget-wide v3, v2, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->albumId:J

    iget-wide v5, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->albumId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_56

    .line 34
    iget-object v3, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->d:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_26

    .line 35
    iget-object v3, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->context:Landroid/content/Context;

    iget-wide v4, v2, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->albumId:J

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/music/MusicUtils;->getDefaultDrawableImage(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->d:Landroid/graphics/drawable/Drawable;

    .line 37
    :cond_26
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 38
    .local v1, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 39
    iget-object v3, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->iv:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    iget-object v3, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->iv:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_56

    .line 42
    iget-object v3, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->iv:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02013a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .end local v0           #ai:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;
    .end local v1           #anim:Landroid/view/animation/AlphaAnimation;
    .end local v2           #args:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;
    :cond_56
    return-void
.end method
