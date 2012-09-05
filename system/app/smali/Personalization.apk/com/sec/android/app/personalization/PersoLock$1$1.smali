.class Lcom/sec/android/app/personalization/PersoLock$1$1;
.super Ljava/lang/Object;
.source "PersoLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/personalization/PersoLock$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/personalization/PersoLock$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/personalization/PersoLock$1;)V
    .registers 2
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/sec/android/app/personalization/PersoLock$1$1;->this$1:Lcom/sec/android/app/personalization/PersoLock$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock$1$1;->this$1:Lcom/sec/android/app/personalization/PersoLock$1;

    iget-object v0, v0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #calls: Lcom/sec/android/app/personalization/PersoLock;->hideAlert()V
    invoke-static {v0}, Lcom/sec/android/app/personalization/PersoLock;->access$200(Lcom/sec/android/app/personalization/PersoLock;)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock$1$1;->this$1:Lcom/sec/android/app/personalization/PersoLock$1;

    iget-object v0, v0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mMccMncEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/personalization/PersoLock;->access$300(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock$1$1;->this$1:Lcom/sec/android/app/personalization/PersoLock$1;

    iget-object v0, v0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mMccMncEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/personalization/PersoLock;->access$300(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock$1$1;->this$1:Lcom/sec/android/app/personalization/PersoLock$1;

    iget-object v0, v0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/personalization/PersoLock;->access$400(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock$1$1;->this$1:Lcom/sec/android/app/personalization/PersoLock$1;

    iget-object v0, v0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mControlKeyEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/personalization/PersoLock;->access$400(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 361
    return-void
.end method
