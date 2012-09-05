.class Lcom/google/android/finsky/activities/PurchaseFragment$5;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;->initializeBilling()V
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
    .line 641
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$5;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$5;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->initializeDcbParams()V

    .line 645
    return-void
.end method
