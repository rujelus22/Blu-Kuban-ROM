.class Lcom/android/email/activity/MessageViewForSeven$4;
.super Ljava/lang/Object;
.source "MessageViewForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewForSeven;->showReportDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewForSeven;)V
    .registers 2
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$4;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$4;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewForSeven;->mReportDialogShowed:Z

    .line 688
    return-void
.end method
