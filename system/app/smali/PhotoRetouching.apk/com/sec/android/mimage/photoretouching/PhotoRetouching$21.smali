.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$21;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILandroid/os/Message;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$21;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 2516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2518
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$21;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2519
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$21;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$35(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2520
    return-void
.end method
