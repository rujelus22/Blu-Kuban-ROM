.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;
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
    .line 643
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->openTrackBrowserForShuffleAll()V
    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$500(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    .line 646
    return-void
.end method
