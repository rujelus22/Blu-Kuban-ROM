.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$6;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForAlbum(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

.field final synthetic val$albumId:J


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$6;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput-wide p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$6;->val$albumId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$6;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget-wide v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$6;->val$albumId:J

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->openTrackBrowserForAlbum(J)V
    invoke-static {v0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)V

    .line 738
    return-void
.end method
