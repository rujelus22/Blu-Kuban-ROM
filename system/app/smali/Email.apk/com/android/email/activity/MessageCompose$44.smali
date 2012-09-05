.class Lcom/android/email/activity/MessageCompose$44;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 11904
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$44;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 7
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 11907
    const-string v0, "AJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside onClick of dialouge=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11908
    packed-switch p2, :pswitch_data_40

    .line 11921
    :goto_25
    return-void

    .line 11910
    :pswitch_26
    const-string v0, "AJ"

    const-string v1, "inside onClick of dialouge==case 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11911
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$44;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z
    invoke-static {v0, p3}, Lcom/android/email/activity/MessageCompose;->access$11502(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_25

    .line 11915
    :pswitch_33
    const-string v0, "AJ"

    const-string v1, "inside onClick of dialouge==case 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11916
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$44;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z
    invoke-static {v0, p3}, Lcom/android/email/activity/MessageCompose;->access$11602(Lcom/android/email/activity/MessageCompose;Z)Z

    goto :goto_25

    .line 11908
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_26
        :pswitch_33
    .end packed-switch
.end method
