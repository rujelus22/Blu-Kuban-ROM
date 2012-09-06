.class public abstract Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;
.super Lcom/google/android/apps/docs/view/RoboFragment;
.source "TextPopup.java"


# instance fields
.field private a:LAD;

.field private final a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private a:Landroid/widget/PopupWindow;

.field private a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

.field private a:LuJ;

.field private a:Lyf;

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboFragment;-><init>()V

    .line 28
    new-instance v0, LAF;

    invoke-direct {v0, p0}, LAF;-><init>(Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Z

    return p1
.end method


# virtual methods
.method protected abstract a()LAD;
.end method

.method public abstract a()LFt;
.end method

.method protected abstract a(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 76
    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    .line 79
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 80
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, LAG;

    invoke-direct {v1, p0}, LAG;-><init>(Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a()LAD;

    move-result-object v0

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAD;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:LAD;

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Lcom/google/android/apps/docs/editors/kix/KixEditText;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    return-object v0
.end method

.method public a()LuJ;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:LuJ;

    return-object v0
.end method

.method public a()Lyf;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Lyf;

    return-object v0
.end method

.method public a()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2b

    move v0, v1

    :goto_b
    invoke-static {v0}, LafQ;->b(Z)V

    .line 119
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->b:Z

    if-nez v0, :cond_1f

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 121
    iput-boolean v1, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->b:Z

    .line 124
    :cond_1f
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Z

    if-nez v0, :cond_2d

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 129
    :goto_2a
    return-void

    :cond_2b
    move v0, v2

    .line 117
    goto :goto_b

    .line 127
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->q()V

    goto :goto_2a
.end method

.method public final a(Lcom/google/android/apps/docs/editors/kix/KixEditText;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    .line 46
    return-void
.end method

.method public a(LuJ;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:LuJ;

    .line 62
    return-void
.end method

.method public a(Lyf;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyf;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Lyf;

    .line 54
    return-void
.end method

.method protected final b()Landroid/view/View;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public p()V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1b

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 137
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->b:Z

    if-eqz v0, :cond_1b

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->b:Z

    .line 142
    :cond_1b
    return-void
.end method

.method public q()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x2

    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_47

    move v0, v1

    :goto_c
    invoke-static {v0}, LafQ;->b(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->b()Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:LAD;

    new-instance v3, LAv;

    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-direct {v3, v4}, LAv;-><init>(Lcom/google/android/apps/docs/editors/text/EditText;)V

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a()LFt;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->b()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->b()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-interface {v0, v3, v4, v5, v6}, LAD;->a(LAu;LFt;II)Landroid/graphics/Point;

    move-result-object v0

    .line 158
    if-nez v0, :cond_49

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 174
    :goto_46
    return-void

    :cond_47
    move v0, v2

    .line 151
    goto :goto_c

    .line 163
    :cond_49
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 164
    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getLocationInWindow([I)V

    .line 165
    iget v4, v0, Landroid/graphics/Point;->x:I

    aget v5, v3, v2

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 166
    iget v4, v0, Landroid/graphics/Point;->y:I

    aget v1, v3, v1

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 169
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0, v7, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_46

    .line 172
    :cond_71
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_46
.end method
