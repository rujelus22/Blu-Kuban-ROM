.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->readCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

.field final synthetic val$comeFrom:[I


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;[I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput-object p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;->val$comeFrom:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    const-string v1, "telling carouselView: new shuffle: "

    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;->val$comeFrom:[I

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->describeShuffle(Ljava/lang/String;[I)V
    invoke-static {v0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$2100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Ljava/lang/String;[I)V

    .line 1185
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;
    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$2200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;->val$comeFrom:[I

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->shuffle([I)V

    .line 1186
    return-void
.end method
