.class public LuO;
.super Ljava/lang/Object;
.source "AlignmentPhonePopupMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, LuO;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v3, Lup;->alignment_left_icon:I

    if-ne v0, v3, :cond_33

    move v0, v1

    .line 58
    :goto_b
    iget-object v2, p0, LuO;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;

    invoke-static {v2}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;)I

    move-result v2

    if-eq v1, v2, :cond_2b

    if-nez v0, :cond_2b

    .line 59
    iget-object v2, p0, LuO;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;

    invoke-static {v2, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;I)I

    .line 60
    iget-object v2, p0, LuO;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;

    invoke-static {v2}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;)LuX;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 61
    iget-object v2, p0, LuO;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;

    invoke-static {v2}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;)LuX;

    move-result-object v2

    invoke-interface {v2, v1}, LuX;->a(I)V

    .line 64
    :cond_2b
    if-nez v0, :cond_32

    .line 68
    iget-object v0, p0, LuO;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;)V

    .line 70
    :cond_32
    return-void

    .line 41
    :cond_33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v3, Lup;->alignment_center_icon:I

    if-ne v0, v3, :cond_3e

    move v0, v1

    move v1, v2

    .line 42
    goto :goto_b

    .line 43
    :cond_3e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v3, Lup;->alignment_right_icon:I

    if-ne v0, v3, :cond_4a

    .line 44
    const/4 v2, 0x2

    move v0, v1

    move v1, v2

    goto :goto_b

    .line 45
    :cond_4a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v3, Lup;->alignment_justified_icon:I

    if-ne v0, v3, :cond_56

    .line 46
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    goto :goto_b

    .line 47
    :cond_56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v3, Lup;->back_to_keyboard:I

    if-ne v0, v3, :cond_85

    .line 50
    iget-object v0, p0, LuO;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v3, Lup;->editor:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 52
    iget-object v0, p0, LuO;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v4, "input_method"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 54
    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 56
    iget-object v0, p0, LuO;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentPhonePopupMenu;->p()V

    move v0, v2

    goto :goto_b

    :cond_85
    move v0, v1

    goto :goto_b
.end method
