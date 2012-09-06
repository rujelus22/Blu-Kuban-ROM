.class Lcom/google/android/music/activitymanagement/TopLevelActivity$8;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Lcom/google/android/music/ErrorInfo$OnErrorAlertDismissed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 986
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorAlertDismissed()V
    .registers 3

    .prologue
    .line 988
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/activitymanagement/TopLevelActivity;->mShowingFailureAlert:Z
    invoke-static {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$302(Lcom/google/android/music/activitymanagement/TopLevelActivity;Z)Z

    .line 989
    return-void
.end method
