.class Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$4;
.super Ljava/lang/Object;
.source "AndroidClickToCallHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->createClickToCallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

.field final synthetic val$forwardingNumberSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;Landroid/widget/Spinner;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$4;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$4;->val$forwardingNumberSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$4;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$4;->val$forwardingNumberSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumber:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$4;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->startClickToCall()V

    .line 183
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 184
    return-void
.end method
