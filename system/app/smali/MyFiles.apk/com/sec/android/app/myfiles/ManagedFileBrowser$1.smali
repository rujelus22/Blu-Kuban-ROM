.class Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;
.super Landroid/content/BroadcastReceiver;
.source "ManagedFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setLocaleReceiver()V
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
    .line 220
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setOperationName()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$000(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->initSoftKey()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$100(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setSoftKeyText()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$200(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->updateTitleItem()V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$300(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Lcom/sec/android/app/myfiles/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$300(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Lcom/sec/android/app/myfiles/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->pause()V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setAdapter()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    .line 234
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->operationName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$600(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_86
    return-void
.end method
