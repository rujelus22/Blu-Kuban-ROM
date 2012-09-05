.class Lcom/sec/android/app/dlna/ui/DLNASettings$11;
.super Ljava/lang/Object;
.source "DLNASettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/DLNASettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V
    .registers 2
    .parameter

    .prologue
    .line 743
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$11;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    .line 745
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    const/16 v1, 0x42f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$11;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #calls: Lcom/sec/android/app/dlna/ui/DLNASettings;->clearPlaylist()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$500(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$11;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$11;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    const-class v3, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->startActivity(Landroid/content/Intent;)V

    .line 749
    return-void
.end method
