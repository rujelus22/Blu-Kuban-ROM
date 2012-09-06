.class Lcom/google/android/apps/plus/phone/SignOnManager$1;
.super Landroid/os/AsyncTask;
.source "SignOnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/SignOnManager;->signOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/SignOnManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/SignOnManager;)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SignOnManager$1;->this$0:Lcom/google/android/apps/plus/phone/SignOnManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 3
    .parameter "params"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager$1;->this$0:Lcom/google/android/apps/plus/phone/SignOnManager;

    #calls: Lcom/google/android/apps/plus/phone/SignOnManager;->getPendingInstantUploadCount()I
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/SignOnManager;->access$000(Lcom/google/android/apps/plus/phone/SignOnManager;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 221
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/SignOnManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 6
    .parameter "pendingInstantUploadCount"

    .prologue
    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/apps/plus/phone/SignOnManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/plus/phone/SignOnManager$1$1;-><init>(Lcom/google/android/apps/plus/phone/SignOnManager$1;Ljava/lang/Integer;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 221
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/SignOnManager$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
