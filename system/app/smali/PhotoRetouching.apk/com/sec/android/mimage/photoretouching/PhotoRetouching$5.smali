.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$5;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onResume()V
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
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$5;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 1265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1267
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$5;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1268
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$5;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$35(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1269
    return-void
.end method
