.class Lcom/sec/android/app/twlauncher/Launcher$8;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;

.field final synthetic val$newScreen:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5067
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$8;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iput p2, p0, Lcom/sec/android/app/twlauncher/Launcher$8;->val$newScreen:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 5069
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$8;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher$8;->val$newScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    .line 5070
    return-void
.end method
