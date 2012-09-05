.class public final enum Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;
.super Ljava/lang/Enum;
.source "BillingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/BillingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreateInstrumentUiMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

.field public static final enum EXTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

.field public static final enum INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

.field public static final enum REMINDER:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 38
    new-instance v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->EXTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 39
    new-instance v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    const-string v1, "REMINDER"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->REMINDER:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->EXTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->REMINDER:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->$VALUES:[Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;
    .registers 2
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->$VALUES:[Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    return-object v0
.end method
