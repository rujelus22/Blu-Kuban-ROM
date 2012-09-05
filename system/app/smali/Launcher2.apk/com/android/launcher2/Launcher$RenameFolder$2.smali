.class Lcom/android/launcher2/Launcher$RenameFolder$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Launcher$RenameFolder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher$RenameFolder;)V
    .registers 2
    .parameter

    .prologue
    .line 2063
    iput-object p1, p0, Lcom/android/launcher2/Launcher$RenameFolder$2;->this$1:Lcom/android/launcher2/Launcher$RenameFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/launcher2/Launcher$RenameFolder$2;->this$1:Lcom/android/launcher2/Launcher$RenameFolder;

    #calls: Lcom/android/launcher2/Launcher$RenameFolder;->cleanup()V
    invoke-static {v0}, Lcom/android/launcher2/Launcher$RenameFolder;->access$1900(Lcom/android/launcher2/Launcher$RenameFolder;)V

    .line 2066
    return-void
.end method
