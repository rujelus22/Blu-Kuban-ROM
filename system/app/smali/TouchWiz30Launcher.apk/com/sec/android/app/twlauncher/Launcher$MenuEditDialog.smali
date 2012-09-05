.class Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuEditDialog"
.end annotation


# instance fields
.field private mReminder:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 7918
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7918
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7918
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 7923
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7924
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 7926
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030012

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 7927
    .local v3, layout:Landroid/view/View;
    const v4, 0x7f06003e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->mReminder:Landroid/widget/CheckBox;

    .line 7928
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->mReminder:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7933
    const v4, 0x7f080095

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7934
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7935
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7936
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 7937
    const v4, 0x7f080092

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7939
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 7940
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 7941
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7943
    return-object v1
.end method

.method private dismiss()V
    .registers 4

    .prologue
    .line 7948
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 7952
    :goto_7
    return-void

    .line 7949
    :catch_8
    move-exception v0

    .line 7950
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 7968
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->dismiss()V

    .line 7969
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 7974
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 7956
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v3, "launcher"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7958
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "MenuEditDialogOnOff"

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->mReminder:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7959
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7960
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 7964
    return-void
.end method
