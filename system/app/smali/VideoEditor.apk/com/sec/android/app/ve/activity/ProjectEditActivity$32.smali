.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$32;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$32;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2181
    const/4 v0, 0x4

    if-ne p2, v0, :cond_10

    .line 2182
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$32;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v1, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2183
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$32;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 2187
    :cond_10
    const/4 v0, 0x0

    return v0
.end method
