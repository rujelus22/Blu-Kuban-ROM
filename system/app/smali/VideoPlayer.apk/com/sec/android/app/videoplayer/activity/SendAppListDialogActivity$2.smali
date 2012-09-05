.class Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$2;
.super Ljava/lang/Object;
.source "SendAppListDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$2;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 82
    const/4 v1, 0x4

    if-eq p2, v1, :cond_8

    const/16 v1, 0x54

    if-ne p2, v1, :cond_e

    .line 83
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity$2;->this$0:Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;->finish()V

    .line 87
    :cond_d
    :goto_d
    return v0

    .line 85
    :cond_e
    const/16 v1, 0x52

    if-eq p2, v1, :cond_d

    .line 87
    const/4 v0, 0x0

    goto :goto_d
.end method
