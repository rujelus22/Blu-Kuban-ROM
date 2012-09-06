.class public LAi;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/widget/ToggleButton;

.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, LAi;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iput-object p2, p0, LAi;->a:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 701
    iget-object v0, p0, LAi;->a:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 702
    return-void
.end method
