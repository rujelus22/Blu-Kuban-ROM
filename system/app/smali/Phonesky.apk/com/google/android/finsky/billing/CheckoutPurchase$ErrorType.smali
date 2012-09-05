.class public final enum Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;
.super Ljava/lang/Enum;
.source "CheckoutPurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/CheckoutPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum IAB_PERMISSION_ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

.field public static final enum UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 134
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "IAB_PERMISSION_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->IAB_PERMISSION_ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 139
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "NETWORK_OR_SERVER"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 141
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const-string v1, "MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->IAB_PERMISSION_ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->$VALUES:[Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;
    .registers 2
    .parameter

    .prologue
    .line 130
    const-class v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;
    .registers 1

    .prologue
    .line 130
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->$VALUES:[Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    return-object v0
.end method
