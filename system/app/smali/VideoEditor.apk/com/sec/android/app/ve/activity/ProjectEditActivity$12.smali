.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$12;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showImageDurationDialog(Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

.field private final synthetic val$cp:Lcom/sec/android/app/ve/ui/CamcoderPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Lcom/sec/android/app/ve/ui/CamcoderPopup;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$12;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$12;->val$cp:Lcom/sec/android/app/ve/ui/CamcoderPopup;

    .line 1504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$12;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->captureFromCamera()V

    .line 1508
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$12;->val$cp:Lcom/sec/android/app/ve/ui/CamcoderPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/ui/CamcoderPopup;->dismiss()V

    .line 1510
    return-void
.end method
