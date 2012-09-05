.class final Lcom/android/sprintmenu/TerminalMode$RemoveWindow;
.super Ljava/lang/Object;
.source "TerminalMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/TerminalMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoveWindow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/TerminalMode;


# direct methods
.method private constructor <init>(Lcom/android/sprintmenu/TerminalMode;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/sprintmenu/TerminalMode$RemoveWindow;->this$0:Lcom/android/sprintmenu/TerminalMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/sprintmenu/TerminalMode;Lcom/android/sprintmenu/TerminalMode$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/TerminalMode$RemoveWindow;-><init>(Lcom/android/sprintmenu/TerminalMode;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode$RemoveWindow;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #calls: Lcom/android/sprintmenu/TerminalMode;->removeWindow()V
    invoke-static {v0}, Lcom/android/sprintmenu/TerminalMode;->access$100(Lcom/android/sprintmenu/TerminalMode;)V

    .line 132
    return-void
.end method
