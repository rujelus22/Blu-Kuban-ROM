.class Lcom/google/android/finsky/activities/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/activities/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity$4;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$4$1;->this$1:Lcom/google/android/finsky/activities/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$4$1;->this$1:Lcom/google/android/finsky/activities/MainActivity$4;

    iget-object v0, v0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    #calls: Lcom/google/android/finsky/activities/MainActivity;->initializeCarrierBillingParams()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$300(Lcom/google/android/finsky/activities/MainActivity;)V

    .line 314
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$4$1;->this$1:Lcom/google/android/finsky/activities/MainActivity$4;

    iget-object v0, v0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    #calls: Lcom/google/android/finsky/activities/MainActivity;->initializeBillingCountries()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$400(Lcom/google/android/finsky/activities/MainActivity;)V

    .line 316
    return-void
.end method
