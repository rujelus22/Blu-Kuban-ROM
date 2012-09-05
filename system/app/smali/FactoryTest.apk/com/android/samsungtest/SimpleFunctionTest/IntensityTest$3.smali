.class Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;
.super Ljava/lang/Object;
.source "IntensityTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->isDark(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

.field final synthetic val$dark:Z


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    iput-boolean p2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->val$dark:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 449
    const-string v0, "IntensityTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntensityTimer is running ::: isDark dark : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->val$dark:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changed:Z
    invoke-static {v2}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$1400(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->val$dark:Z

    if-eqz v0, :cond_77

    .line 451
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->changed:Z
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$1400(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 452
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->pass:Z
    invoke-static {v0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$502(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;Z)Z

    .line 453
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    const/4 v1, 0x0

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->pass2:Z
    invoke-static {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$602(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;Z)Z

    .line 454
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$1500(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 455
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$1300(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 456
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mBackgroudLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$1200(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    invoke-virtual {v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 457
    const-string v0, "IntensityTest"

    const-string v1, "IntensityTimer is running changed == false::: isDark"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_76
    :goto_76
    return-void

    .line 460
    :cond_77
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->pass2:Z
    invoke-static {v0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$602(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;Z)Z

    .line 461
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$1500(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 462
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->mBackgroudLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$1200(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    invoke-virtual {v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 463
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$1300(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    invoke-virtual {v1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 464
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;->access$1300(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 465
    const-string v0, "IntensityTest"

    const-string v1, "IntensityTimer is running changed == true::: isDark"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76
.end method
