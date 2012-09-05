.class Lcom/sec/android/app/twlauncher/AppShortcutZone$1;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;->initApplicationsView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 186
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    .line 187
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    .line 188
    .local v0, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    .line 189
    .local v1, ws:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    .line 191
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 192
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()Z

    .line 205
    :goto_36
    return-void

    .line 195
    :cond_37
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->animateClose()V

    .line 196
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->animateOpen()V

    goto :goto_36

    .line 199
    :cond_3e
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->animateClose()V

    .line 200
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->animateOpen()V

    .line 202
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFocus()Z

    goto :goto_36
.end method
