.class Lcom/sec/android/app/myfiles/ManagedFileBrowser$8;
.super Ljava/lang/Object;
.source "ManagedFileBrowser.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$8;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 794
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$8;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 795
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$8;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$8;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$8;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 799
    :cond_2c
    return v3
.end method
