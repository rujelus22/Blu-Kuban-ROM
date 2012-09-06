.class Lcom/google/android/finsky/activities/PurchaseFragment$14;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$14;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/PurchaseFragment$14;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$14;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$14;->val$data:Landroid/content/Intent;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->onUpdateAddressResult(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$3100(Lcom/google/android/finsky/activities/PurchaseFragment;Landroid/content/Intent;)V

    .line 1346
    return-void
.end method
