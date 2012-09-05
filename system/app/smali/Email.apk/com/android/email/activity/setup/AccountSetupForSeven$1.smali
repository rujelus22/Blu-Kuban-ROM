.class Lcom/android/email/activity/setup/AccountSetupForSeven$1;
.super Ljava/lang/Object;
.source "AccountSetupForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;->onCloseActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .registers 2
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$1;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$1;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$100(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 483
    :goto_8
    return-void

    .line 482
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$1;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    goto :goto_8
.end method
