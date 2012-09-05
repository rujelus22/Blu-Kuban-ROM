.class Lcom/sec/android/app/twlauncher/Launcher$NameFolder$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->createDialog(Landroid/app/AlertDialog$Builder;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$NameFolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)V
    .registers 2
    .parameter

    .prologue
    .line 5552
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$NameFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5554
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$NameFolder$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$NameFolder;

    #calls: Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->changeFolderName()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher$NameFolder;->access$3100(Lcom/sec/android/app/twlauncher/Launcher$NameFolder;)V

    .line 5555
    return-void
.end method
