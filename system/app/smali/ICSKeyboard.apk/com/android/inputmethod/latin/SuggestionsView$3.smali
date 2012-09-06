.class Lcom/android/inputmethod/latin/SuggestionsView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/SuggestionsView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/SuggestionsView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestionsView$3;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    .line 796
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .parameter "down"
    .parameter "me"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x0

    .line 799
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v0, v1, v2

    .line 800
    .local v0, dy:F
    cmpl-float v1, p4, v3

    if-lez v1, :cond_1a

    cmpg-float v1, v0, v3

    if-gez v1, :cond_1a

    .line 801
    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestionsView$3;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->showMoreSuggestions()Z
    invoke-static {v1}, Lcom/android/inputmethod/latin/SuggestionsView;->access$3(Lcom/android/inputmethod/latin/SuggestionsView;)Z

    move-result v1

    .line 803
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method
