.class public Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;
.super Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;
.source "ColorPhonePopupMenu.java"


# instance fields
.field private a:LuP;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    sget v0, Luq;->color_pallete:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;->a:LuP;

    invoke-virtual {v1, v0}, LuP;->a(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;->c(Landroid/view/View;)V

    .line 48
    return-object v0
.end method

.method public a()LuP;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;->a:LuP;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;->a:LuP;

    invoke-virtual {v0}, LuP;->b()V

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;->a:LuP;

    invoke-virtual {v0}, LuP;->a()V

    .line 55
    invoke-super {p0}, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a()V

    .line 56
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a(Landroid/app/Activity;)V

    .line 27
    new-instance v0, LuP;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LuP;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;->a:LuP;

    .line 28
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;->a:LuP;

    new-instance v1, LuU;

    invoke-direct {v1, p0}, LuU;-><init>(Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;)V

    invoke-virtual {v0, v1}, LuP;->a(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method
