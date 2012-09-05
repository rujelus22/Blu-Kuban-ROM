.class Lcom/google/android/finsky/activities/InstrumentActivity$1;
.super Ljava/lang/Object;
.source "InstrumentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/InstrumentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/InstrumentActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/InstrumentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    new-instance v1, Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/InstrumentFactory;-><init>()V

    #setter for: Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/InstrumentActivity;->access$002(Lcom/google/android/finsky/activities/InstrumentActivity;Lcom/google/android/finsky/billing/InstrumentFactory;)Lcom/google/android/finsky/billing/InstrumentFactory;

    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    #getter for: Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;
    invoke-static {v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->access$000(Lcom/google/android/finsky/activities/InstrumentActivity;)Lcom/google/android/finsky/billing/InstrumentFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument;->registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    #getter for: Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;
    invoke-static {v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->access$000(Lcom/google/android/finsky/activities/InstrumentActivity;)Lcom/google/android/finsky/billing/InstrumentFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingInstrument;->registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    iget-object v1, v1, Lcom/google/android/finsky/activities/InstrumentActivity;->mSavedFlowState:Landroid/os/Bundle;

    #calls: Lcom/google/android/finsky/activities/InstrumentActivity;->startOrResumeFlow(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/InstrumentActivity;->access$100(Lcom/google/android/finsky/activities/InstrumentActivity;Landroid/os/Bundle;)V

    .line 182
    return-void
.end method
