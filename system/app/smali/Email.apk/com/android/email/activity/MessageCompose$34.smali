.class Lcom/android/email/activity/MessageCompose$34;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 2
    .parameter

    .prologue
    .line 9208
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$34;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 9213
    const/4 v0, 0x4

    if-ne p2, v0, :cond_f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_f

    .line 9216
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$34;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose;->showDialog(I)V

    .line 9220
    :cond_f
    const/4 v0, 0x0

    return v0
.end method
