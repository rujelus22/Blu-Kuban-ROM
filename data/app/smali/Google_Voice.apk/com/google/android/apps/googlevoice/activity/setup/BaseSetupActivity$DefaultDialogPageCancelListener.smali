.class public Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$DefaultDialogPageCancelListener;
.super Ljava/lang/Object;
.source "BaseSetupActivity.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultDialogPageCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$DefaultDialogPageCancelListener;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogPageCanceled()V
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$DefaultDialogPageCancelListener;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->reloadCurrentPage()V

    .line 304
    return-void
.end method
