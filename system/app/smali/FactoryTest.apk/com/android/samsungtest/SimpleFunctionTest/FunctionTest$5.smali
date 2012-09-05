.class Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$5;
.super Ljava/lang/Object;
.source "FunctionTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V
    .registers 2
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$5;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 264
    const-string v1, "Speaker Test"

    const-string v2, "Start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->access$100()Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 267
    invoke-static {}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->access$100()Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 281
    :goto_1a
    return-void

    .line 271
    :cond_1b
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$5;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->audioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->access$200(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 272
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$5;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->audioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->access$200(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$5;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->audioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->access$200(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v3, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 273
    invoke-static {}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->access$100()Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 274
    invoke-static {}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->access$100()Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 276
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$5;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const-string v2, "25"

    const-string v3, "P"

    invoke-virtual {v1, v2, v3}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$5;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const-string v2, "26"

    const-string v3, "P"

    invoke-virtual {v1, v2, v3}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$5;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 279
    .local v0, spk:Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$5;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-virtual {v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1a
.end method
