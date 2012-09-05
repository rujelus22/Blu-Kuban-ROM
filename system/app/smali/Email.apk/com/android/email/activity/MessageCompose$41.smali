.class Lcom/android/email/activity/MessageCompose$41;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowSecurityOptionsDialog()V
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
    .line 11567
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$41;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 11570
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$41;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$41;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$12300(Lcom/android/email/activity/MessageCompose;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$41;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$12200(Lcom/android/email/activity/MessageCompose;)Z

    move-result v2

    #calls: Lcom/android/email/activity/MessageCompose;->changeSmimeOptions(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->access$11200(Lcom/android/email/activity/MessageCompose;ZZ)V

    .line 11571
    return-void
.end method
