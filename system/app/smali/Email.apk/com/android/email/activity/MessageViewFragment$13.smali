.class Lcom/android/email/activity/MessageViewFragment$13;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$13;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 1436
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$13;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1437
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$13;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1438
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$13;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1439
    return-void
.end method
