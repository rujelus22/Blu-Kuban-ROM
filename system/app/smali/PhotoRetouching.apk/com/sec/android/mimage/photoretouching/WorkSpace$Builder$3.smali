.class Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$3;
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
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$3;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$3;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressDone:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$1(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$3;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressCancel:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 329
    const-string v0, "[PhotoEditor_U1ICS_120206]"

    const-string v1, "Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$3;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressCancel:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$5(Lcom/sec/android/mimage/photoretouching/WorkSpace;Z)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$3;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    const/4 v1, 0x0

    #calls: Lcom/sec/android/mimage/photoretouching/WorkSpace;->setClickOK(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$4(Lcom/sec/android/mimage/photoretouching/WorkSpace;Z)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$3;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->mOkCancelListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$0(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 334
    :cond_3c
    return-void
.end method
