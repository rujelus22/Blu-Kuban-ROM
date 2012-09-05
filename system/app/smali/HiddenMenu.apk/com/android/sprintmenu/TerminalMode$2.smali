.class Lcom/android/sprintmenu/TerminalMode$2;
.super Ljava/lang/Object;
.source "TerminalMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sprintmenu/TerminalMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/TerminalMode;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/TerminalMode;)V
    .registers 2
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/sprintmenu/TerminalMode$2;->this$0:Lcom/android/sprintmenu/TerminalMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 711
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, 0x2

    const/16 v4, 0x18

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 717
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode$2;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/sprintmenu/TerminalMode;->access$1500(Lcom/android/sprintmenu/TerminalMode;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sprintmenu/TerminalMode$2;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mDialogText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/sprintmenu/TerminalMode;->access$700(Lcom/android/sprintmenu/TerminalMode;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    iget-object v1, p0, Lcom/android/sprintmenu/TerminalMode$2;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const/4 v2, 0x1

    #setter for: Lcom/android/sprintmenu/TerminalMode;->bAddedView:Z
    invoke-static {v1, v2}, Lcom/android/sprintmenu/TerminalMode;->access$1602(Lcom/android/sprintmenu/TerminalMode;Z)Z

    .line 719
    return-void
.end method
