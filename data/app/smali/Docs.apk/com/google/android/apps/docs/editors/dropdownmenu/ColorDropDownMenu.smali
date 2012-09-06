.class public Lcom/google/android/apps/docs/editors/dropdownmenu/ColorDropDownMenu;
.super Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;
.source "ColorDropDownMenu.java"


# instance fields
.field private a:LuP;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 28
    sget v0, Luq;->color_dropdown:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorDropDownMenu;->a:LuP;

    invoke-virtual {v1, v0}, LuP;->a(Landroid/view/View;)V

    .line 30
    return-object v0
.end method

.method public a()LuP;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorDropDownMenu;->a:LuP;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorDropDownMenu;->a:LuP;

    invoke-virtual {v0}, LuP;->b()V

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorDropDownMenu;->a:LuP;

    invoke-virtual {v0}, LuP;->a()V

    .line 37
    invoke-super {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a()V

    .line 38
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a(Landroid/app/Activity;)V

    .line 23
    new-instance v0, LuP;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LuP;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorDropDownMenu;->a:LuP;

    .line 24
    return-void
.end method
