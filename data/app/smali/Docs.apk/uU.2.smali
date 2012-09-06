.class public LuU;
.super Ljava/lang/Object;
.source "ColorPhonePopupMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, LuU;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, LuU;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lup;->editor:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 34
    iget-object v0, p0, LuU;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 36
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 37
    iget-object v0, p0, LuU;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;->p()V

    .line 38
    return-void
.end method
