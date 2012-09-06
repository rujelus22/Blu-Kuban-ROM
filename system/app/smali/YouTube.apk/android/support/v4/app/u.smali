.class final Landroid/support/v4/app/u;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static a(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 32
    new-instance v0, Landroid/support/v4/app/u;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/u;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_13

    .line 35
    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    :cond_13
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 39
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {v0, p0}, Landroid/support/v4/app/u;->addView(Landroid/view/View;)V

    .line 41
    return-object v0
.end method


# virtual methods
.method protected final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/v4/app/u;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 62
    return-void
.end method

.method protected final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/support/v4/app/u;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 54
    return-void
.end method
