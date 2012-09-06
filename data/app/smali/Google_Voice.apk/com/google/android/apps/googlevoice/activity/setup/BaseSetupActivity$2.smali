.class Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$2;
.super Ljava/lang/Object;
.source "BaseSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$2;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$2;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->flow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;->goBack()V

    .line 113
    return-void
.end method
