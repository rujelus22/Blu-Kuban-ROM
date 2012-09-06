.class public Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;
.super Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;
.source "AlignmentDropDownMenu.java"


# instance fields
.field private a:I

.field private final a:Landroid/view/View$OnClickListener;

.field private a:LuX;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;-><init>()V

    .line 30
    new-instance v0, LuN;

    invoke-direct {v0, p0}, LuN;-><init>(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;)I
    .registers 2
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;)LuX;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a:LuX;

    return-object v0
.end method

.method private a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 94
    iget v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a:I

    if-ne p2, v1, :cond_11

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 95
    return-void

    .line 94
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;)V
    .registers 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->q()V

    return-void
.end method

.method private b(II)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    sget v3, Lum;->toolbar_selected_background:I

    const/4 v4, 0x0

    invoke-static {v1, p2, v2, v3, v4}, LFh;->a(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method private q()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 77
    sget v0, Lup;->alignment_left_icon:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a(II)V

    .line 78
    sget v0, Lup;->alignment_center_icon:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a(II)V

    .line 79
    sget v0, Lup;->alignment_right_icon:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a(II)V

    .line 80
    sget v0, Lup;->alignment_justified_icon:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a(II)V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 82
    sget v1, Lup;->dialog_box_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    iget v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a:I

    if-nez v1, :cond_38

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Luo;->dialog_box_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :goto_37
    return-void

    .line 85
    :cond_38
    iget v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a:I

    if-ne v1, v2, :cond_4a

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Luo;->dialog_box_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_37

    .line 88
    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Luo;->dialog_box:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_37
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 58
    sget v0, Luq;->alignment_dropdown:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->d:Landroid/view/View;

    .line 59
    sget v0, Lup;->alignment_left_icon:I

    sget v1, Luo;->action_text_align_left:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->b(II)V

    .line 60
    sget v0, Lup;->alignment_center_icon:I

    sget v1, Luo;->action_text_align_center:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->b(II)V

    .line 61
    sget v0, Lup;->alignment_right_icon:I

    sget v1, Luo;->action_text_align_right:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->b(II)V

    .line 62
    sget v0, Lup;->alignment_justified_icon:I

    sget v1, Luo;->action_text_align_justified:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->b(II)V

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->d:Landroid/view/View;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->q()V

    .line 69
    invoke-super {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a()V

    .line 70
    return-void
.end method

.method public a(LuX;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a:LuX;

    .line 28
    return-void
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a:I

    .line 74
    return-void
.end method
