.class Lcom/android/calendar/DayLayout$DayLayoutGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DayLayoutGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayLayout;


# direct methods
.method private constructor <init>(Lcom/android/calendar/DayLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/calendar/DayLayout$DayLayoutGestureListener;->this$0:Lcom/android/calendar/DayLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/DayLayout;Lcom/android/calendar/DayLayout$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/android/calendar/DayLayout$DayLayoutGestureListener;-><init>(Lcom/android/calendar/DayLayout;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/calendar/DayLayout$DayLayoutGestureListener;->this$0:Lcom/android/calendar/DayLayout;

    #calls: Lcom/android/calendar/DayLayout;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/calendar/DayLayout;->access$300(Lcom/android/calendar/DayLayout;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
