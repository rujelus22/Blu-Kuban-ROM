.class Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddInstrumentButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$400(Lcom/google/android/finsky/activities/PurchaseFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 173
    const-string v0, "No add instrument item selected."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_11
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedAddInstrumentFamily:I
    invoke-static {v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$400(Lcom/google/android/finsky/activities/PurchaseFragment;)I

    move-result v1

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->showAddInstrumentScreen(I)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$500(Lcom/google/android/finsky/activities/PurchaseFragment;I)V

    .line 176
    return-void
.end method
