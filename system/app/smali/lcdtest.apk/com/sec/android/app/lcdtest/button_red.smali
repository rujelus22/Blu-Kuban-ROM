.class public Lcom/sec/android/app/lcdtest/button_red;
.super Landroid/app/Activity;
.source "button_red.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/button_red;->setContentView(I)V

    .line 14
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/button_red;->finish()V

    .line 20
    const/4 v0, 0x1

    return v0
.end method
