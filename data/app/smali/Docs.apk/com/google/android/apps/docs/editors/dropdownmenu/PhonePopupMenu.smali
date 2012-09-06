.class public abstract Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;
.super Landroid/support/v4/app/Fragment;
.source "PhonePopupMenu.java"

# interfaces
.implements LuZ;


# instance fields
.field private final a:Landroid/os/Handler;

.field private a:Landroid/widget/PopupWindow$OnDismissListener;

.field private a:Z

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->d:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;)Z
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a:Z

    return v0
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a:Z

    if-eqz v0, :cond_5

    .line 59
    :goto_4
    return-void

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 44
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a:Z

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a:Landroid/os/Handler;

    new-instance v1, LuY;

    invoke-direct {v1, p0}, LuY;-><init>(Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a:Landroid/widget/PopupWindow$OnDismissListener;

    .line 82
    return-void
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 62
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->d:Landroid/view/View;

    .line 35
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a:Z

    return v0
.end method

.method public p()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->b(I)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a:Z

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_16

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 72
    :cond_16
    return-void
.end method
