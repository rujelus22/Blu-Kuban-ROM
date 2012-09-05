.class Lcom/google/android/finsky/utils/UninstallRefundTracker$1$1;
.super Ljava/lang/Object;
.source "UninstallRefundTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/UninstallRefundTracker$1;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/utils/UninstallRefundTracker$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/UninstallRefundTracker$1;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$1$1;->this$1:Lcom/google/android/finsky/utils/UninstallRefundTracker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$1$1;->this$1:Lcom/google/android/finsky/utils/UninstallRefundTracker$1;

    iget-object v0, v0, Lcom/google/android/finsky/utils/UninstallRefundTracker$1;->this$0:Lcom/google/android/finsky/utils/UninstallRefundTracker;

    #getter for: Lcom/google/android/finsky/utils/UninstallRefundTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/finsky/utils/UninstallRefundTracker;->access$000(Lcom/google/android/finsky/utils/UninstallRefundTracker;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07016a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    return-void
.end method
