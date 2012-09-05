.class Lcom/android/calendar/EventInfoActivity$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$1;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 694
    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    :cond_6
    move v2, v3

    .line 713
    :goto_7
    return v2

    .line 697
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 698
    .local v0, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 701
    .local v1, distanceY:I
    invoke-static {}, Lcom/android/calendar/EventInfoActivity;->access$100()I

    move-result v4

    if-lt v0, v4, :cond_2e

    if-ge v0, v1, :cond_30

    :cond_2e
    move v2, v3

    .line 702
    goto :goto_7

    .line 705
    :cond_30
    const/4 v4, 0x0

    cmpg-float v4, p3, v4

    if-gez v4, :cond_3b

    .line 707
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity$1;->this$0:Lcom/android/calendar/EventInfoActivity;

    #calls: Lcom/android/calendar/EventInfoActivity;->goTo(Z)V
    invoke-static {v3, v2}, Lcom/android/calendar/EventInfoActivity;->access$200(Lcom/android/calendar/EventInfoActivity;Z)V

    goto :goto_7

    .line 710
    :cond_3b
    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity$1;->this$0:Lcom/android/calendar/EventInfoActivity;

    #calls: Lcom/android/calendar/EventInfoActivity;->goTo(Z)V
    invoke-static {v4, v3}, Lcom/android/calendar/EventInfoActivity;->access$200(Lcom/android/calendar/EventInfoActivity;Z)V

    goto :goto_7
.end method
