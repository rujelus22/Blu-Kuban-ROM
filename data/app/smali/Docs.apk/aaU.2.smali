.class public LaaU;
.super Landroid/widget/FrameLayout;
.source "LinearLayoutListView.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/LinearLayoutListView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/LinearLayoutListView;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, LaaU;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    .line 141
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 142
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_26

    .line 147
    invoke-virtual {p0}, LaaU;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)Lans;

    move-result-object v0

    invoke-virtual {p0}, LaaU;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 148
    invoke-virtual {p0}, LaaU;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 149
    iget-object v1, p0, LaaU;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-static {v1, v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(Lcom/google/android/apps/docs/view/LinearLayoutListView;I)V

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_25
    return v0

    :cond_26
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_25
.end method
