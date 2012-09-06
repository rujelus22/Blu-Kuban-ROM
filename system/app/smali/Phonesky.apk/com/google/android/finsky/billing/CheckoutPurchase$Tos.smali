.class public Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;
.super Ljava/lang/Object;
.source "CheckoutPurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/CheckoutPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tos"
.end annotation


# instance fields
.field protected mIsAccepted:Z

.field protected mTosLink:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/finsky/billing/CheckoutPurchase;


# direct methods
.method protected constructor <init>(Lcom/google/android/finsky/billing/CheckoutPurchase;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "link"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->this$0:Lcom/google/android/finsky/billing/CheckoutPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->mTosLink:Ljava/lang/String;

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->mIsAccepted:Z

    .line 353
    return-void
.end method


# virtual methods
.method public getAcceptance()Z
    .registers 2

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->mIsAccepted:Z

    return v0
.end method

.method public getShorthand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->mTosLink:Ljava/lang/String;

    return-object v0
.end method

.method public setAcceptance(Z)V
    .registers 2
    .parameter "isAccepted"

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->mIsAccepted:Z

    .line 368
    return-void
.end method
