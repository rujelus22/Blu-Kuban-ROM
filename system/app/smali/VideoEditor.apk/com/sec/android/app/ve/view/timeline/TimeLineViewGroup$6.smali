.class Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$6;
.super Ljava/lang/Object;
.source "TimeLineViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeMode(I)V
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
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$6;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$6;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    iget-object v0, v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpElement:Lcom/samsung/app/video/editor/external/Element;

    if-eqz v0, :cond_19

    .line 1187
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$6;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    iget-object v1, v1, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpElement:Lcom/samsung/app/video/editor/external/Element;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$6;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    iget v2, v2, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->currentbackUpTime:F

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updatePosition(Lcom/samsung/app/video/editor/external/Element;J)V

    .line 1188
    :cond_19
    return-void
.end method
