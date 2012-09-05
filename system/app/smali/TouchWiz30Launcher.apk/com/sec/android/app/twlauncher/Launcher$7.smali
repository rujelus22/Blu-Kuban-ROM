.class Lcom/sec/android/app/twlauncher/Launcher$7;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;

.field final synthetic val$curScreen:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5039
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$7;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iput p2, p0, Lcom/sec/android/app/twlauncher/Launcher$7;->val$curScreen:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 5041
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$7;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher$7;->val$curScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 5042
    return-void
.end method
