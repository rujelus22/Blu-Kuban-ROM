.class public Lcom/google/android/apps/docs/view/CustomListView;
.super Landroid/widget/ListView;
.source "CustomListView.java"


# instance fields
.field private a:LsG;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/docs/view/CustomListView;->a:LsG;

    invoke-virtual {v0}, LsG;->a()Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 43
    iget-object v1, p0, Lcom/google/android/apps/docs/view/CustomListView;->a:LsG;

    if-nez v1, :cond_6

    .line 47
    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/CustomListView;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/docs/view/CustomListView;->a:LsG;

    if-eqz v0, :cond_e

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/docs/view/CustomListView;->a:LsG;

    invoke-virtual {v0, p1}, LsG;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 70
    const/4 v0, 0x1

    .line 74
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/CustomListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/docs/view/CustomListView;->a:LsG;

    if-eqz v0, :cond_14

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/docs/view/CustomListView;->a:LsG;

    invoke-virtual {v0, p1}, LsG;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 59
    const/4 v0, 0x1

    .line 63
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public setFastScroller(LsG;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/docs/view/CustomListView;->a:LsG;

    .line 39
    return-void
.end method
