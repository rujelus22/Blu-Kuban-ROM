.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForPlaylist(JLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

.field final synthetic val$id:J

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$playlistType:I


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;JLjava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 743
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput-wide p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->val$id:J

    iput-object p4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->val$name:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->val$playlistType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 745
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget-wide v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->val$id:J

    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->val$name:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->val$playlistType:I

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->openTrackBrowserForPlaylist(JLjava/lang/String;I)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;JLjava/lang/String;I)V

    .line 746
    return-void
.end method
