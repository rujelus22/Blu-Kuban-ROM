.class Ljackpal/androidterm/emulatorview/TermSession$1;
.super Landroid/os/Handler;
.source "TermSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/emulatorview/TermSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/emulatorview/TermSession;


# direct methods
.method constructor <init>(Ljackpal/androidterm/emulatorview/TermSession;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession$1;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 109
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession$1;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    #getter for: Ljackpal/androidterm/emulatorview/TermSession;->mIsRunning:Z
    invoke-static {v0}, Ljackpal/androidterm/emulatorview/TermSession;->access$000(Ljackpal/androidterm/emulatorview/TermSession;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 115
    :cond_8
    :goto_8
    return-void

    .line 112
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 113
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession$1;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    #calls: Ljackpal/androidterm/emulatorview/TermSession;->readFromProcess()V
    invoke-static {v0}, Ljackpal/androidterm/emulatorview/TermSession;->access$100(Ljackpal/androidterm/emulatorview/TermSession;)V

    goto :goto_8
.end method
