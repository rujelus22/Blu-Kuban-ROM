.class Lcom/google/android/music/activitymanagement/TopLevelActivity$8;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 877
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iput p2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "d"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iget v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->val$id:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->removeDialog(I)V

    .line 880
    return-void
.end method
