.class Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup$1;
.super Ljava/lang/Object;
.source "PaintEditDurationPopup.java"

# interfaces
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 31
    const/4 v0, 0x4

    if-ne v0, p1, :cond_a

    .line 33
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->dismiss()V

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
