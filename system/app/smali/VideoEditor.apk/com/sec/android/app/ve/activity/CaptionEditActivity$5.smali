.class Lcom/sec/android/app/ve/activity/CaptionEditActivity$5;
.super Ljava/lang/Object;
.source "CaptionEditActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/CaptionEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$5;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$5;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mFlingDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->access$3(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
