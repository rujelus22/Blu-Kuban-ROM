.class Lcom/android/launcher2/Launcher$CreateShortcut;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateShortcut"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/launcher2/AddAdapter;

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 2777
    iput-object p1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2777
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$CreateShortcut;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method

.method private cleanup()V
    .registers 3

    .prologue
    .line 2810
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->dismissDialog(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 2814
    :goto_6
    return-void

    .line 2811
    :catch_7
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 2784
    new-instance v2, Lcom/android/launcher2/AddAdapter;

    iget-object v3, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {v2, v3}, Lcom/android/launcher2/AddAdapter;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher2/AddAdapter;

    .line 2786
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2788
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher2/AddAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2790
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2791
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2792
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2793
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2795
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$2102(Lcom/android/launcher2/Launcher;Z)Z

    .line 2800
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$CreateShortcut;->cleanup()V

    .line 2801
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 2820
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$CreateShortcut;->cleanup()V

    .line 2822
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher2/AddAdapter;

    invoke-virtual {v1, p2}, Lcom/android/launcher2/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AddAdapter$ListItem;

    .line 2823
    .local v0, item:Lcom/android/launcher2/AddAdapter$ListItem;
    iget v1, v0, Lcom/android/launcher2/AddAdapter$ListItem;->actionTag:I

    packed-switch v1, :pswitch_data_46

    .line 2843
    :goto_11
    return-void

    .line 2825
    :pswitch_12
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 2826
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->selectAppsTab()V

    .line 2828
    :cond_23
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    goto :goto_11

    .line 2832
    :pswitch_29
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 2833
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->selectWidgetsTab()V

    .line 2835
    :cond_3a
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    goto :goto_11

    .line 2839
    :pswitch_40
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #calls: Lcom/android/launcher2/Launcher;->startWallpaper()V
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$2800(Lcom/android/launcher2/Launcher;)V

    goto :goto_11

    .line 2823
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_29
        :pswitch_12
        :pswitch_40
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$2102(Lcom/android/launcher2/Launcher;Z)Z

    .line 2805
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$CreateShortcut;->cleanup()V

    .line 2806
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    #setter for: Lcom/android/launcher2/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$2102(Lcom/android/launcher2/Launcher;Z)Z

    .line 2847
    return-void
.end method
