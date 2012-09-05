.class Lcom/google/android/finsky/activities/PurchaseFragment$7;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;->initializeDcbProvisioning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$7;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$7;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->startOrResumePurchase()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$1500(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    .line 668
    return-void
.end method
