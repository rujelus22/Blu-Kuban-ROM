.class public LuY;
.super Ljava/lang/Object;
.source "PhonePopupMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, LuY;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, LuY;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 53
    iget-object v0, p0, LuY;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, LuY;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 55
    iget-object v0, p0, LuY;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/dropdownmenu/PhonePopupMenu;->b(I)V

    .line 57
    :cond_20
    return-void
.end method
