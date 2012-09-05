.class Lcom/infraware/polarisoffice/dialog/FileManagerDialog$4;
.super Ljava/lang/Object;
.source "FileManagerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/dialog/FileManagerDialog;->showPromptFileName(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/dialog/FileManagerDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerDialog$4;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerDialog;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 346
    invoke-static {v0}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 347
    packed-switch p2, :pswitch_data_a

    .line 354
    :pswitch_7
    const/4 v0, 0x0

    :pswitch_8
    return v0

    .line 347
    nop

    :pswitch_data_a
    .packed-switch 0x52
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
