.class Lcom/sec/android/app/ve/activity/PenDrawActivity$7;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$7;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 434
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$7;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    #calls: Lcom/sec/android/app/ve/activity/PenDrawActivity;->closeActivity()V
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->access$7(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V

    .line 437
    return-void
.end method
