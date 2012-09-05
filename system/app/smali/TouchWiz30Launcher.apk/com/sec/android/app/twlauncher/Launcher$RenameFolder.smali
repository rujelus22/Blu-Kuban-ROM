.class Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;
.super Lcom/sec/android/app/twlauncher/Launcher$NameFolder;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameFolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 3
    .parameter

    .prologue
    .line 5625
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5625
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method


# virtual methods
.method createRenameFolderDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 5627
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5628
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5629
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->createDialog(Landroid/app/AlertDialog$Builder;I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method
