.class public abstract Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;
.super Landroid/support/v4/app/Fragment;
.source "DropDownMenu.java"

# interfaces
.implements LuZ;


# instance fields
.field private a:I

.field private a:Landroid/widget/PopupWindow$OnDismissListener;

.field a:Landroid/widget/PopupWindow;

.field private a:Z

.field private b:I

.field private b:Z

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a()I
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private a(Landroid/view/View;)I
    .registers 4
    .parameter

    .prologue
    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 172
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;)V
    .registers 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->q()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->b:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_38

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->b:I

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_38

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_38

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_38

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private q()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    if-nez v0, :cond_7

    .line 167
    :goto_6
    return-void

    .line 146
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 147
    sget v1, Lup;->dialog_box_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a(Landroid/view/View;)I

    move-result v9

    .line 152
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a()I

    move-result v0

    sub-int/2addr v0, v1

    .line 153
    div-int/lit8 v2, v8, 0x2

    add-int/2addr v2, v9

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    .line 155
    if-le v1, v0, :cond_52

    .line 157
    iput v3, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:I

    move v6, v0

    .line 161
    :goto_34
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->d:Landroid/view/View;

    iget v2, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 163
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 164
    div-int/lit8 v1, v8, 0x2

    add-int/2addr v1, v9

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    sub-int/2addr v0, v6

    .line 165
    invoke-static {v7, v0}, LabE;->a(Landroid/view/View;I)V

    .line 166
    sub-int v0, v9, v6

    iput v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->b:I

    goto :goto_6

    .line 159
    :cond_52
    sub-int v0, v1, v9

    iput v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:I

    move v6, v1

    goto :goto_34
.end method


# virtual methods
.method protected abstract a(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 104
    :cond_f
    :goto_f
    return-object v3

    .line 70
    :cond_10
    sget v0, Luq;->dropdown_popup:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    sget v0, Lup;->dialog_box_content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v2

    .line 74
    invoke-static {v2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, LuV;

    invoke-direct {v2, p0}, LuV;-><init>(Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 84
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    new-instance v1, LuW;

    invoke-direct {v1, p0}, LuW;-><init>(Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Z

    if-eqz v0, :cond_f

    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a()V

    goto :goto_f
.end method

.method public a()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 109
    iput-boolean v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->b:Z

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    if-nez v0, :cond_b

    .line 111
    iput-boolean v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Z

    .line 118
    :cond_a
    :goto_a
    return-void

    .line 112
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    .line 113
    iput-boolean v3, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Z

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 115
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->q()V

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->d:Landroid/view/View;

    iget v2, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_a
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow$OnDismissListener;

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_b

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 134
    :cond_b
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->d:Landroid/view/View;

    .line 50
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->b:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->p()V

    .line 139
    return-void
.end method

.method public p()V
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->b:Z

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_c

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 126
    :cond_c
    return-void
.end method
