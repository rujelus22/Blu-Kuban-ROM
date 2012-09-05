.class Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewTypeDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 7979
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7979
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method


# virtual methods
.method createDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const v9, 0x7f0800ae

    const v8, 0x7f0800ad

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7986
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7987
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v4, 0x7f0800ab

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7989
    const/4 v1, 0x0

    .line 7990
    .local v1, checked:I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v3

    packed-switch v3, :pswitch_data_7c

    .line 8002
    :goto_2a
    :pswitch_2a
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    if-eqz v3, :cond_65

    .line 8003
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 8004
    .local v2, items:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 8005
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3, v9}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 8006
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v4, 0x7f0800af

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 8007
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8014
    :goto_4f
    const v3, 0x7f0800ac

    new-instance v4, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8019
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 7992
    .end local v2           #items:[Ljava/lang/CharSequence;
    :pswitch_5f
    const/4 v1, 0x0

    .line 7993
    goto :goto_2a

    .line 7995
    :pswitch_61
    const/4 v1, 0x1

    .line 7996
    goto :goto_2a

    .line 7998
    :pswitch_63
    const/4 v1, 0x2

    goto :goto_2a

    .line 8009
    :cond_65
    new-array v2, v7, [Ljava/lang/CharSequence;

    .line 8010
    .restart local v2       #items:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 8011
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3, v9}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 8012
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_4f

    .line 7990
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_63
        :pswitch_2a
        :pswitch_61
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "arg0"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 8023
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V

    .line 8024
    packed-switch p2, :pswitch_data_40

    .line 8037
    :goto_b
    return-void

    .line 8026
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 8027
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    goto :goto_b

    .line 8030
    :pswitch_21
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 8031
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    goto :goto_b

    .line 8034
    :pswitch_35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    goto :goto_b

    .line 8024
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_c
        :pswitch_21
        :pswitch_35
    .end packed-switch
.end method
