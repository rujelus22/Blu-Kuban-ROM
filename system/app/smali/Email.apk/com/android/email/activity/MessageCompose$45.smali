.class Lcom/android/email/activity/MessageCompose$45;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowReceiptsOptionsDialog()V
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
    .line 11924
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$45;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 11927
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$45;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$45;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$11500(Lcom/android/email/activity/MessageCompose;)Z

    move-result v1

    #setter for: Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$4702(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 11928
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$45;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$45;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$11600(Lcom/android/email/activity/MessageCompose;)Z

    move-result v1

    #setter for: Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$4802(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 11929
    return-void
.end method
