.class Lcom/google/android/apps/googlevoice/CallConnectingActivity$8;
.super Ljava/lang/Object;
.source "CallConnectingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 331
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$8;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$8;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #calls: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->abandonCall()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$200(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    .line 335
    return-void
.end method
