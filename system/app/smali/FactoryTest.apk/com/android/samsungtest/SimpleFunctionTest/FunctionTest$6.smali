.class Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$6;
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
    .line 292
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$6;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 294
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v2, i:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 298
    .local v0, data:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$6;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const-string v4, "27"

    const-string v5, "P"

    invoke-virtual {v3, v4, v5}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$6;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->changeLocalTestResult(I)V

    .line 303
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$6;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-virtual {v3}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->checkSdCard()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 304
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$6;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-virtual {v3}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->makeFile()V

    .line 305
    const-string v3, "file:///data/data/com.android.samsungtest.FactoryTest/files/mp3_1khz.mp3"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 306
    const-string v3, "FactoryTest_Mp3Test"

    const-string v4, "LOCAD_AREA"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_32
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$6;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->audioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->access$200(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 313
    const-string v3, "audio/mp3"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    :try_start_46
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$6;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-virtual {v3, v2}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->startActivity(Landroid/content/Intent;)V
    :try_end_4b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_46 .. :try_end_4b} :catch_5a

    .line 320
    :goto_4b
    return-void

    .line 308
    :cond_4c
    const-string v3, "file:///sdcard/sd/1kHz.mp3"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 309
    const-string v3, "FactoryTest_Mp3Test"

    const-string v4, "SDCARD_AREA"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 317
    :catch_5a
    move-exception v1

    .line 318
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_4b
.end method
