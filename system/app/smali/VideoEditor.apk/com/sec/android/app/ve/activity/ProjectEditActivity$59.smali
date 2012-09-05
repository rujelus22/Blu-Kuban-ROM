.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$59;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->timeLineFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$59;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 3713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 3717
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 3718
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3719
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->setCurrentElement()V

    .line 3721
    :cond_14
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 3722
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCurrentElement()V

    .line 3723
    :cond_21
    return-void
.end method
