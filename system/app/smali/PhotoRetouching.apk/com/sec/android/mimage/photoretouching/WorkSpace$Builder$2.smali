.class Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$2;
.super Ljava/lang/Object;
.source "WorkSpace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->create()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$2;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    const/4 v2, 0x1

    .line 311
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$2;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$0(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Lcom/sec/android/mimage/photoretouching/EffectController;

    move-result-object v0

    if-nez v0, :cond_e

    .line 323
    :cond_d
    :goto_d
    return-void

    .line 313
    :cond_e
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$2;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$0(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Lcom/sec/android/mimage/photoretouching/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking()Z

    move-result v0

    if-nez v0, :cond_d

    .line 316
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$2;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressDone:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$1(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$2;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressCancel:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 317
    const-string v0, "[PhotoEditor_U1ICS_120206]"

    const-string v1, "Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$2;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    #setter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressDone:Z
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$3(Lcom/sec/android/mimage/photoretouching/WorkSpace;Z)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$2;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->ApplyToOriginal()V

    .line 320
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$2;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    #calls: Lcom/sec/android/mimage/photoretouching/WorkSpace;->setClickOK(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$4(Lcom/sec/android/mimage/photoretouching/WorkSpace;Z)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$2;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->mOkCancelListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$0(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_d
.end method
