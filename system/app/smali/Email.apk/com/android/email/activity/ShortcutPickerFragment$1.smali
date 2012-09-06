.class Lcom/android/email/activity/ShortcutPickerFragment$1;
.super Ljava/lang/Object;
.source "ShortcutPickerFragment.java"

# interfaces
.implements Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ShortcutPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ShortcutPickerFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/ShortcutPickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/email/activity/ShortcutPickerFragment$1;->this$0:Lcom/android/email/activity/ShortcutPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildFilter(Lcom/android/emailcommon/provider/Account;)Ljava/lang/Integer;
    .registers 3
    .parameter "account"

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMissingData(ZZ)V
    .registers 3
    .parameter "missingAccount"
    .parameter "missingMailbox"

    .prologue
    .line 69
    return-void
.end method

.method public onSelected(Lcom/android/emailcommon/provider/Account;J)V
    .registers 5
    .parameter "account"
    .parameter "mailboxId"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$1;->this$0:Lcom/android/email/activity/ShortcutPickerFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/ShortcutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
