.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .registers 2
    .parameter

    .prologue
    .line 1893
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    if-ne p1, v0, :cond_c

    .line 1896
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->onClickRecentButton()V

    .line 1907
    :cond_b
    :goto_b
    return-void

    .line 1897
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    if-ne p1, v0, :cond_18

    .line 1898
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->onClickInputMethodSwitchButton()V

    goto :goto_b

    .line 1899
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    if-ne p1, v0, :cond_24

    .line 1900
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->onClickCompatModeButton()V

    goto :goto_b

    .line 1903
    :cond_24
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mScreenCaptureButton:Landroid/view/View;

    if-ne p1, v0, :cond_b

    .line 1904
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->onClickScreenCaptureButton()V

    goto :goto_b
.end method
