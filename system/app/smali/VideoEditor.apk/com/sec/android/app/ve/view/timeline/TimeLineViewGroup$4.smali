.class Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$4;
.super Ljava/lang/Object;
.source "TimeLineViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->showCaptionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 968
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->captionBarOn:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$3(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;Z)V

    .line 969
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->showCaptionBar()V

    .line 971
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v2, 0x7f0b0110

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 972
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v2, 0x7f0b010a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0x35

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 973
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$4;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v2, 0x7f0b0106

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 974
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->update()V

    .line 975
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_4c

    .line 980
    :goto_48
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 981
    return-void

    .line 976
    :catch_4c
    move-exception v0

    .line 977
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method
