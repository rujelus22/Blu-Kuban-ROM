.class Lcom/android/musicfx/ActivityMusic$5;
.super Ljava/lang/Object;
.source "ActivityMusic.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/musicfx/ActivityMusic;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/musicfx/ActivityMusic;


# direct methods
.method constructor <init>(Lcom/android/musicfx/ActivityMusic;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/musicfx/ActivityMusic$5;->this$0:Lcom/android/musicfx/ActivityMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 359
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 360
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic$5;->this$0:Lcom/android/musicfx/ActivityMusic;

    #calls: Lcom/android/musicfx/ActivityMusic;->showHeadsetMsg()V
    invoke-static {v0}, Lcom/android/musicfx/ActivityMusic;->access$600(Lcom/android/musicfx/ActivityMusic;)V

    .line 362
    :cond_c
    const/4 v0, 0x0

    return v0
.end method
