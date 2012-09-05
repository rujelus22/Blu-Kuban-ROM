.class Lcom/android/samsungtest/DataCopy/DataCopy$2;
.super Ljava/lang/Object;
.source "DataCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/DataCopy/DataCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/DataCopy/DataCopy;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/DataCopy/DataCopy;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$2;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$2;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonToFileCopy:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$100(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$2;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    invoke-virtual {v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/samsungtest/FileCopy/FileCopy;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 295
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$2;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    invoke-virtual {v1, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->startActivity(Landroid/content/Intent;)V

    .line 297
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$2;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    invoke-virtual {v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->finish()V

    .line 298
    return-void
.end method
