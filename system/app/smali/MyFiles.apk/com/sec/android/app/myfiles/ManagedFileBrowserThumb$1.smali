.class Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;
.super Landroid/content/BroadcastReceiver;
.source "ManagedFileBrowserThumb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setLocaleReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V
    .registers 2
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setOperationName()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$000(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->initSoftKey()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$100(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setSoftKeyText()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$200(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->updateTitleItem()V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$300(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Lcom/sec/android/app/myfiles/ListAdapterThumb;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$300(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Lcom/sec/android/app/myfiles/ListAdapterThumb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->pause()V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setAdapter()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$400(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    .line 212
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->operationName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$600(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_86
    return-void
.end method
