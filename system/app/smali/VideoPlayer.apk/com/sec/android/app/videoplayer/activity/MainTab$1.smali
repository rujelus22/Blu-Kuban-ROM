.class Lcom/sec/android/app/videoplayer/activity/MainTab$1;
.super Ljava/lang/Object;
.source "MainTab.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MainTab;->initLayout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MainTab;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab$1;->this$0:Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method
