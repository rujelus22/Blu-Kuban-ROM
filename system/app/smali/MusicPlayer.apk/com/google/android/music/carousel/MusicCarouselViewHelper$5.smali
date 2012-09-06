.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForShuffleAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->openTrackBrowserForShuffleAll()V
    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1000(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    .line 731
    return-void
.end method
