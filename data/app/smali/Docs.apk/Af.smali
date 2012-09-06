.class public LAf;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/ToggleButton;

.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, LAf;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iput-object p2, p0, LAf;->a:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 634
    iget-object v1, p0, LAf;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iget-object v0, p0, LAf;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, LAf;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)LuZ;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorDropDownMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorDropDownMenu;->a()LuP;

    move-result-object v0

    :goto_16
    invoke-static {v1, v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;LuP;)LuP;

    .line 636
    iget-object v0, p0, LAf;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iget-object v1, p0, LAf;->a:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->c(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V

    .line 637
    return-void

    .line 634
    :cond_21
    iget-object v0, p0, LAf;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;)LuZ;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/ColorPhonePopupMenu;->a()LuP;

    move-result-object v0

    goto :goto_16
.end method
