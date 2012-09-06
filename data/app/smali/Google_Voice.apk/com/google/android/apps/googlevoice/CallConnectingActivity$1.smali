.class Lcom/google/android/apps/googlevoice/CallConnectingActivity$1;
.super Ljava/lang/Object;
.source "CallConnectingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/CallConnectingActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 143
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$1;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$1;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #getter for: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$100(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    const-string v1, "User clicked \'end call\' button, abandoning call."

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$1;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #calls: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->abandonCall()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$200(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    .line 148
    return-void
.end method
