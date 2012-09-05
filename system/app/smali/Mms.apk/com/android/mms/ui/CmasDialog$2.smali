.class Lcom/android/mms/ui/CmasDialog$2;
.super Ljava/lang/Object;
.source "CmasDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CmasDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CmasDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CmasDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/mms/ui/CmasDialog$2;->this$0:Lcom/android/mms/ui/CmasDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/CmasDialog$2;->this$0:Lcom/android/mms/ui/CmasDialog;

    #calls: Lcom/android/mms/ui/CmasDialog;->launchMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/CmasDialog;->access$000(Lcom/android/mms/ui/CmasDialog;)V

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/CmasDialog$2;->this$0:Lcom/android/mms/ui/CmasDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/CmasDialog;->dismissDialogForPriority()V

    .line 124
    return-void
.end method
