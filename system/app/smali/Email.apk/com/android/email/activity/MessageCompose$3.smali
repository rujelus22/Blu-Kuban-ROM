.class Lcom/android/email/activity/MessageCompose$3;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowAccountCheckDialog()V
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
    .line 1596
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->onAccountSetup()V
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$600(Lcom/android/email/activity/MessageCompose;)V

    .line 1600
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1601
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x0

    #calls: Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;Z)V

    .line 1602
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$3;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1603
    return-void
.end method
