.class public LAg;
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
    .line 658
    iput-object p1, p0, LAg;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iput-object p2, p0, LAg;->a:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 661
    iget-object v0, p0, LAg;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iget-object v1, p0, LAg;->a:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->d(Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;Landroid/widget/ToggleButton;)V

    .line 662
    return-void
.end method
