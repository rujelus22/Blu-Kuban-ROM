.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$13;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$13;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$13;->val$cp:Lcom/sec/android/app/ve/ui/CamcoderPopup;

    .line 1517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$13;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->recordFromCamcorder()V

    .line 1521
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$13;->val$cp:Lcom/sec/android/app/ve/ui/CamcoderPopup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/ui/CamcoderPopup;->dismiss()V

    .line 1522
    return-void
.end method
