.class Ljackpal/androidterm/emulatorview/EmulatorView$2;
.super Ljava/lang/Object;
.source "EmulatorView.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/emulatorview/EmulatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/emulatorview/EmulatorView;


# direct methods
.method constructor <init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 3

    .prologue
    .line 215
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$300(Ljackpal/androidterm/emulatorview/EmulatorView;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 216
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$400(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TerminalEmulator;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getScrollCounter()I

    move-result v0

    .line 217
    .local v0, rowShift:I
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-static {v1, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$520(Ljackpal/androidterm/emulatorview/EmulatorView;I)I

    .line 218
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-static {v1, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$620(Ljackpal/androidterm/emulatorview/EmulatorView;I)I

    .line 219
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-static {v1, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$720(Ljackpal/androidterm/emulatorview/EmulatorView;I)I

    .line 221
    .end local v0           #rowShift:I
    :cond_21
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$400(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TerminalEmulator;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->clearScrollCounter()V

    .line 222
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #calls: Ljackpal/androidterm/emulatorview/EmulatorView;->ensureCursorVisible()V
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$800(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    .line 223
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 224
    return-void
.end method
