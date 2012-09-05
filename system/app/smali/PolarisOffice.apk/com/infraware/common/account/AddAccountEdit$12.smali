.class Lcom/infraware/common/account/AddAccountEdit$12;
.super Ljava/lang/Object;
.source "AddAccountEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/AddAccountEdit;->startProgressing(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/AddAccountEdit;


# direct methods
.method constructor <init>(Lcom/infraware/common/account/AddAccountEdit;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/account/AddAccountEdit$12;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 582
    invoke-static {p2}, Lcom/infraware/common/util/Utils;->isSystemKey(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 583
    const/4 v0, 0x0

    .line 591
    :cond_8
    :goto_8
    return v0

    .line 585
    :cond_9
    const/4 v1, 0x4

    if-ne p2, v1, :cond_8

    .line 586
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 587
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit$12;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    invoke-virtual {v1}, Lcom/infraware/common/account/AddAccountEdit;->finish()V

    goto :goto_8
.end method
