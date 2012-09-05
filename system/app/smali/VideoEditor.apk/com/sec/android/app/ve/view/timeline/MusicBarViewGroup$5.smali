.class Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$5;
.super Ljava/lang/Object;
.source "MusicBarViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateMusicTime()V
    .registers 1

    .prologue
    .line 316
    invoke-static {}, Lcom/samsung/app/video/editor/external/TranscodeElement;->updateMusicTime()V

    .line 317
    return-void
.end method


# virtual methods
.method public onAdded(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "addedView"

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$5;->updateMusicTime()V

    .line 336
    return-void
.end method

.method public onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    .line 332
    return-void
.end method

.method public onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 3
    .parameter "element"
    .parameter "added"

    .prologue
    .line 340
    return-void
.end method

.method public onRemoved(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "removedView"

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup$5;->updateMusicTime()V

    .line 328
    return-void
.end method

.method public onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    .registers 4
    .parameter "element"
    .parameter "mSec"
    .parameter "tTime"

    .prologue
    .line 324
    return-void
.end method

.method public onUpdate(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "updatedView"

    .prologue
    .line 320
    return-void
.end method
