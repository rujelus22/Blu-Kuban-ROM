.class Lcom/android/phone/FdnSetting$1$4;
.super Ljava/lang/Object;
.source "FdnSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FdnSetting$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/FdnSetting$1;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting$1;)V
    .registers 2
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1$4;->this$1:Lcom/android/phone/FdnSetting$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/phone/FdnSetting$1$4;->this$1:Lcom/android/phone/FdnSetting$1;

    iget-object v0, v0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v0}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 400
    iget-object v0, p0, Lcom/android/phone/FdnSetting$1$4;->this$1:Lcom/android/phone/FdnSetting$1;

    iget-object v0, v0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v0, v1}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 401
    return-void
.end method