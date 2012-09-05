.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$29;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$29;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 2138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2140
    const/4 v0, 0x4

    if-ne p2, v0, :cond_c

    .line 2141
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$29;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$11(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Lcom/sec/android/app/ve/thread/ExportThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/ExportThread;->stopExport()V

    .line 2143
    :cond_c
    const/4 v0, 0x0

    return v0
.end method
