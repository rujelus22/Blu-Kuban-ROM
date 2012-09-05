.class Lcom/android/mms/ui/CmasDialog$1;
.super Ljava/lang/Object;
.source "CmasDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 91
    iput-object p1, p0, Lcom/android/mms/ui/CmasDialog$1;->this$0:Lcom/android/mms/ui/CmasDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x19

    if-eq v2, v3, :cond_18

    :cond_10
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_55

    .line 96
    :cond_18
    const-string v2, "Mms/CMASDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown keycode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/mms/ui/CmasDialog$1;->this$0:Lcom/android/mms/ui/CmasDialog;

    const/high16 v3, 0x4

    iput v3, v2, Lcom/android/mms/ui/CmasDialog;->state:I

    .line 99
    iget-object v2, p0, Lcom/android/mms/ui/CmasDialog$1;->this$0:Lcom/android/mms/ui/CmasDialog;

    iget-object v2, v2, Lcom/android/mms/ui/CmasDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    iget-object v3, p0, Lcom/android/mms/ui/CmasDialog$1;->this$0:Lcom/android/mms/ui/CmasDialog;

    iget v3, v3, Lcom/android/mms/ui/CmasDialog;->state:I

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 100
    iget-object v2, p0, Lcom/android/mms/ui/CmasDialog$1;->this$0:Lcom/android/mms/ui/CmasDialog;

    iput v1, v2, Lcom/android/mms/ui/CmasDialog;->state:I

    .line 101
    iget-object v1, p0, Lcom/android/mms/ui/CmasDialog$1;->this$0:Lcom/android/mms/ui/CmasDialog;

    iget-object v1, v1, Lcom/android/mms/ui/CmasDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    iget-object v2, p0, Lcom/android/mms/ui/CmasDialog$1;->this$0:Lcom/android/mms/ui/CmasDialog;

    iget v2, v2, Lcom/android/mms/ui/CmasDialog;->state:I

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 108
    :cond_54
    :goto_54
    return v0

    .line 103
    :cond_55
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_63

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_54

    :cond_63
    move v0, v1

    .line 108
    goto :goto_54
.end method
