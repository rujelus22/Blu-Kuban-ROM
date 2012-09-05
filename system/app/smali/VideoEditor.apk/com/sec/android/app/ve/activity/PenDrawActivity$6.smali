.class Lcom/sec/android/app/ve/activity/PenDrawActivity$6;
.super Ljava/lang/Object;
.source "PenDrawActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/PenDrawActivity;->showSaveDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$6;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 423
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$6;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 425
    return-void
.end method
