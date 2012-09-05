.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$2;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubs.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 242
    .local v0, y:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_10

    .line 243
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mLastMotionY:I
    invoke-static {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$302(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;I)I

    .line 245
    :cond_10
    const/4 v1, 0x0

    return v1
.end method
