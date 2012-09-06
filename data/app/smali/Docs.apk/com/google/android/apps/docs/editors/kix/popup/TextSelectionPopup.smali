.class public Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;
.super Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;
.source "TextSelectionPopup.java"

# interfaces
.implements LCD;
.implements LCe;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;-><init>()V

    return-void
.end method

.method private a(IZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 153
    if-eqz p2, :cond_12

    const/4 v0, 0x0

    .line 154
    :goto_b
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v0, :cond_15

    .line 159
    :goto_11
    return-void

    .line 153
    :cond_12
    const/16 v0, 0x8

    goto :goto_b

    .line 157
    :cond_15
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a:Z

    goto :goto_11
.end method

.method private a(Landroid/view/View;III)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 101
    new-instance v1, LuL;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const v4, 0x3f19999a

    const/high16 v5, -0x100

    invoke-direct {v1, v2, v3, v4, v5}, LuL;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;FI)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, LCK;->a(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 106
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :goto_31
    return-void

    .line 108
    :cond_32
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31
.end method

.method private u()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Lcom/google/android/apps/docs/editors/kix/KixEditText;

    move-result-object v4

    .line 121
    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    move v0, v1

    .line 122
    :goto_d
    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->h()Z

    move-result v5

    .line 125
    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v3

    if-gtz v3, :cond_84

    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v3, v6, :cond_84

    move v3, v1

    .line 127
    :goto_28
    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v7

    if-eq v6, v7, :cond_86

    if-nez v0, :cond_86

    if-nez v3, :cond_86

    if-nez v5, :cond_86

    .line 130
    :goto_38
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a:Z

    .line 132
    sget v3, Lup;->editPopup:I

    invoke-direct {p0, v3, v5}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(IZ)V

    .line 133
    const v3, 0x102001f

    invoke-direct {p0, v3, v1}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(IZ)V

    .line 134
    const v1, 0x1020020

    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->d()Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(IZ)V

    .line 135
    const v1, 0x1020021

    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->p()Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(IZ)V

    .line 136
    const v1, 0x1020022

    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->e()Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(IZ)V

    .line 137
    sget v1, Lup;->follow_link:I

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(IZ)V

    .line 138
    sget v0, Lup;->comment:I

    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(IZ)V

    .line 144
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a:Z

    if-eqz v0, :cond_81

    .line 145
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->v()V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 147
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a:Z

    .line 149
    :cond_81
    return-void

    :cond_82
    move v0, v2

    .line 121
    goto :goto_d

    :cond_84
    move v3, v2

    .line 125
    goto :goto_28

    :cond_86
    move v1, v2

    .line 127
    goto :goto_38
.end method

.method private v()V
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x8

    const/4 v2, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v6, v2

    move v1, v2

    move-object v4, v5

    .line 165
    :goto_d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v6, v3, :cond_4a

    .line 166
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 167
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_29

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "selection_popup_separator"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 168
    :cond_29
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_48

    .line 169
    const/4 v1, 0x1

    .line 170
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v6, v3, :cond_48

    move-object v3, v5

    .line 165
    :goto_39
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-object v4, v3

    goto :goto_d

    .line 175
    :cond_3e
    if-eqz v1, :cond_45

    .line 177
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    move v1, v2

    .line 178
    goto :goto_39

    .line 180
    :cond_45
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    move-object v3, v4

    goto :goto_39

    .line 185
    :cond_4a
    if-eqz v4, :cond_4f

    .line 186
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_4f
    return-void
.end method


# virtual methods
.method protected a()LAD;
    .registers 4

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LCz;->text_select_handle_middle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 220
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 222
    new-instance v2, LAE;

    invoke-direct {v2, v1, v0}, LAE;-><init>(II)V

    return-object v2
.end method

.method public a()LFt;
    .registers 4

    .prologue
    .line 227
    new-instance v0, LFt;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Lcom/google/android/apps/docs/editors/kix/KixEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Lcom/google/android/apps/docs/editors/kix/KixEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v2

    invoke-direct {v0, v1, v2}, LFt;-><init>(II)V

    return-object v0
.end method

.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 6
    .parameter

    .prologue
    .line 40
    sget v0, Luq;->selection_popup:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 42
    new-instance v1, LAH;

    invoke-direct {v1, p0}, LAH;-><init>(Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;)V

    .line 77
    sget v2, Lup;->editPopup:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v2, 0x102001f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v2, 0x1020020

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v2, 0x1020021

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v2, 0x1020022

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v2, Lup;->follow_link:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v2, Lup;->comment:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget v1, Lup;->editPopup_icon:I

    sget v2, Lup;->editPopup_text:I

    sget v3, Luo;->ic_menu_edit:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(Landroid/view/View;III)V

    .line 86
    sget v1, Lup;->cut_icon:I

    sget v2, Lup;->cut_text:I

    sget v3, LCz;->ic_menu_cut_holo_dark:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(Landroid/view/View;III)V

    .line 88
    sget v1, Lup;->copy_icon:I

    sget v2, Lup;->copy_text:I

    sget v3, LCz;->ic_menu_copy_holo_dark:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(Landroid/view/View;III)V

    .line 90
    sget v1, Lup;->paste_icon:I

    sget v2, Lup;->paste_text:I

    sget v3, LCz;->ic_menu_paste_holo_dark:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(Landroid/view/View;III)V

    .line 92
    sget v1, Lup;->comment_icon:I

    sget v2, Lup;->comment_text:I

    sget v3, Luo;->ic_menu_comments:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(Landroid/view/View;III)V

    .line 95
    return-object v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->g()Z

    move-result v0

    return v0
.end method

.method protected q()V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->u()V

    .line 115
    invoke-super {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->q()V

    .line 116
    return-void
.end method

.method public r()V
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Lcom/google/android/apps/docs/editors/kix/KixEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->s()V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()V

    .line 194
    return-void
.end method

.method public s()V
    .registers 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->p()V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Lcom/google/android/apps/docs/editors/kix/KixEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->t()V

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Lcom/google/android/apps/docs/editors/kix/KixEditText;

    .line 207
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Lcom/google/android/apps/docs/editors/kix/KixEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->u()V

    .line 208
    return-void
.end method

.method public t()V
    .registers 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->p()V

    .line 213
    return-void
.end method
