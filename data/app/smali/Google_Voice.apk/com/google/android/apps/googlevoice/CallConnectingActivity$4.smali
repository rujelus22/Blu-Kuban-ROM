.class Lcom/google/android/apps/googlevoice/CallConnectingActivity$4;
.super Ljava/lang/Object;
.source "CallConnectingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/CallConnectingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$4;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$4;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #calls: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->handleFailedCall(Landroid/content/DialogInterface;I)V
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$900(Lcom/google/android/apps/googlevoice/CallConnectingActivity;Landroid/content/DialogInterface;I)V

    .line 317
    return-void
.end method
