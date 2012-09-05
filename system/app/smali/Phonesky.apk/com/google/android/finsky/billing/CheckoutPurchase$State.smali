.class public final enum Lcom/google/android/finsky/billing/CheckoutPurchase$State;
.super Ljava/lang/Enum;
.source "CheckoutPurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/CheckoutPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/CheckoutPurchase$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field public static final enum PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 104
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 111
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 118
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "COMPLETING"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 125
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 127
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 95
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->$VALUES:[Lcom/google/android/finsky/billing/CheckoutPurchase$State;

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
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    .registers 2
    .parameter

    .prologue
    .line 95
    const-class v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->$VALUES:[Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    return-object v0
.end method
