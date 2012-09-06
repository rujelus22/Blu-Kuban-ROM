.class public LuV;
.super Ljava/lang/Object;
.source "DropDownMenu.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, LuV;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, LuV;->a:Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;->a(Lcom/google/android/apps/docs/editors/dropdownmenu/DropDownMenu;)V

    .line 80
    const/4 v0, 0x1

    return v0
.end method
