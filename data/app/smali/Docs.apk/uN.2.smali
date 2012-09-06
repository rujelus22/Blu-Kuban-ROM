.class public LuN;
.super Ljava/lang/Object;
.source "AlignmentDropDownMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, LuN;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lup;->alignment_left_icon:I

    if-ne v1, v2, :cond_33

    .line 43
    :cond_9
    :goto_9
    iget-object v1, p0, LuN;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;)I

    move-result v1

    if-eq v0, v1, :cond_2d

    .line 44
    iget-object v1, p0, LuN;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;

    invoke-static {v1, v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;I)I

    .line 45
    iget-object v0, p0, LuN;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;)LuX;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 46
    iget-object v0, p0, LuN;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;)LuX;

    move-result-object v0

    iget-object v1, p0, LuN;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;)I

    move-result v1

    invoke-interface {v0, v1}, LuX;->a(I)V

    .line 52
    :cond_2d
    iget-object v0, p0, LuN;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/AlignmentDropDownMenu;)V

    .line 53
    return-void

    .line 36
    :cond_33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lup;->alignment_center_icon:I

    if-ne v1, v2, :cond_3d

    .line 37
    const/4 v0, 0x1

    goto :goto_9

    .line 38
    :cond_3d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lup;->alignment_right_icon:I

    if-ne v1, v2, :cond_47

    .line 39
    const/4 v0, 0x2

    goto :goto_9

    .line 40
    :cond_47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lup;->alignment_justified_icon:I

    if-ne v1, v2, :cond_9

    .line 41
    const/4 v0, 0x3

    goto :goto_9
.end method
