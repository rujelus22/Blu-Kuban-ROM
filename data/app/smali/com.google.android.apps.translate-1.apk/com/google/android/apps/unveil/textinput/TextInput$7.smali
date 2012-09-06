.class Lcom/google/android/apps/unveil/textinput/TextInput$7;
.super Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;
.source "TextInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/textinput/TextInput;->asyncCaptureAndSendFrame(Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/unveil/env/HoneycombAsyncTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

.field final synthetic val$queryListener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/textinput/TextInput;Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$7;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    iput-object p2, p0, Lcom/google/android/apps/unveil/textinput/TextInput$7;->val$queryListener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInput$7;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Void;
    .registers 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInput$7;->this$0:Lcom/google/android/apps/unveil/textinput/TextInput;

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInput$7;->val$queryListener:Lcom/google/android/apps/unveil/textinput/TextQueryListener;

    #calls: Lcom/google/android/apps/unveil/textinput/TextInput;->blockingCaptureAndSendFrame(Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/textinput/TextInput;->access$400(Lcom/google/android/apps/unveil/textinput/TextInput;Lcom/google/android/apps/unveil/textinput/TextQueryListener;)V

    .line 425
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 421
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/textinput/TextInput$7;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 429
    return-void
.end method
