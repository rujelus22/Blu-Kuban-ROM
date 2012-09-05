.class Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5$1;
.super Ljava/lang/Object;
.source "TimeLineViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;

.field private final synthetic val$scrollPos:I

.field private final synthetic val$trimbar:Lcom/sec/android/app/ve/view/trim/TrimBarView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;ILcom/sec/android/app/ve/view/trim/TrimBarView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5$1;->this$1:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;

    iput p2, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5$1;->val$scrollPos:I

    iput-object p3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5$1;->val$trimbar:Lcom/sec/android/app/ve/view/trim/TrimBarView;

    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1130
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5$1;->val$scrollPos:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 1132
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5$1;->val$trimbar:Lcom/sec/android/app/ve/view/trim/TrimBarView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->init()V

    .line 1135
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1136
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 1137
    :cond_1b
    return-void
.end method
