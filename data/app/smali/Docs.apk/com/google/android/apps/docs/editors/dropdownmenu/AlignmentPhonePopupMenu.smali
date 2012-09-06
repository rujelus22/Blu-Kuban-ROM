.class public Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;
.super Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;
.source "AlignmentPhonePopupMenu.java"


# instance fields
.field private a:I

.field private final a:Landroid/view/View$OnClickListener;

.field private a:LuX;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;-><init>()V

    .line 34
    new-instance v0, LuO;

    invoke-direct {v0, p0}, LuO;-><init>(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;)I
    .registers 2
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;)LuX;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a:LuX;

    return-object v0
.end method

.method private a(II)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 130
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    sget v3, Lum;->toolbar_selected_background:I

    const/4 v4, 0x0

    invoke-static {v1, p2, v2, v3, v4}, LFh;->a(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method private a(III)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a:I

    if-ne p3, v0, :cond_25

    const/4 v0, 0x1

    move v2, v0

    .line 119
    :goto_6
    if-eqz v2, :cond_28

    sget v0, Lum;->toolbar_selected_background:I

    move v1, v0

    .line 120
    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 121
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 122
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->d:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    if-eqz v2, :cond_24

    .line 124
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->requestFocus()Z

    .line 126
    :cond_24
    return-void

    .line 118
    :cond_25
    const/4 v0, 0x0

    move v2, v0

    goto :goto_6

    .line 119
    :cond_28
    const v0, 0x106000c

    move v1, v0

    goto :goto_b
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;)V
    .registers 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->q()V

    return-void
.end method

.method private q()V
    .registers 4

    .prologue
    .line 107
    sget v0, Lup;->alignment_left_icon:I

    sget v1, Lup;->alignment_left_layout:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(III)V

    .line 109
    sget v0, Lup;->alignment_center_icon:I

    sget v1, Lup;->alignment_center_layout:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(III)V

    .line 111
    sget v0, Lup;->alignment_right_icon:I

    sget v1, Lup;->alignment_right_layout:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(III)V

    .line 113
    sget v0, Lup;->alignment_justified_icon:I

    sget v1, Lup;->alignment_justified_layout:I

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(III)V

    .line 115
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    sget v0, Luq;->alignment_popup:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->d:Landroid/view/View;

    .line 77
    invoke-virtual {p0, p2}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->c(Landroid/view/View;)V

    .line 78
    sget v0, Lup;->alignment_left_icon:I

    sget v1, Luo;->action_text_align_left:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(II)V

    .line 79
    sget v0, Lup;->alignment_center_icon:I

    sget v1, Luo;->action_text_align_center:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(II)V

    .line 80
    sget v0, Lup;->alignment_right_icon:I

    sget v1, Luo;->action_text_align_right:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(II)V

    .line 81
    sget v0, Lup;->alignment_justified_icon:I

    sget v1, Luo;->action_text_align_justified:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(II)V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->d:Landroid/view/View;

    sget v1, Lup;->back_to_keyboard:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->d:Landroid/view/View;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a()V

    .line 92
    return-void
.end method

.method public a(LuX;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a:LuX;

    .line 32
    return-void
.end method

.method protected b(I)V
    .registers 2
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->b(I)V

    .line 97
    if-nez p1, :cond_8

    .line 98
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->q()V

    .line 100
    :cond_8
    return-void
.end method

.method public c(I)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput p1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a:I

    .line 104
    return-void
.end method
