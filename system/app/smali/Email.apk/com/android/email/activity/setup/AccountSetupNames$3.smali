.class Lcom/android/email/activity/setup/AccountSetupNames$3;
.super Ljava/util/TimerTask;
.source "AccountSetupNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupNames;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .registers 2
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$3;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames$3;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupNames;->finish()V

    .line 557
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames$3;->cancel()Z

    .line 558
    return-void
.end method
