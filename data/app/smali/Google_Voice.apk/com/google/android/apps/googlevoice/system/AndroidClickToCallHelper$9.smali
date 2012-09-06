.class Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$9;
.super Ljava/lang/Object;
.source "AndroidClickToCallHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->createClickToCallFailureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$9;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 295
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$9;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    #getter for: Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->access$000(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 297
    return-void
.end method
