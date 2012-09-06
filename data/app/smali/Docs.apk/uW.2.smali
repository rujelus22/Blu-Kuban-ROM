.class public LuW;
.super Ljava/lang/Object;
.source "DropDownMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, LuW;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    iget-object v0, p0, LuW;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;

    invoke-static {v0, p2}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 94
    iget-object v0, p0, LuW;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->p()V

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
