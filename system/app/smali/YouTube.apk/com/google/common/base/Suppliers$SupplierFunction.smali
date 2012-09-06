.class final enum Lcom/google/common/base/Suppliers$SupplierFunction;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/v;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/Suppliers$SupplierFunction;

.field public static final enum INSTANCE:Lcom/google/common/base/Suppliers$SupplierFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 247
    new-instance v0, Lcom/google/common/base/Suppliers$SupplierFunction;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Suppliers$SupplierFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Suppliers$SupplierFunction;->INSTANCE:Lcom/google/common/base/Suppliers$SupplierFunction;

    .line 246
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/Suppliers$SupplierFunction;

    sget-object v1, Lcom/google/common/base/Suppliers$SupplierFunction;->INSTANCE:Lcom/google/common/base/Suppliers$SupplierFunction;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/base/Suppliers$SupplierFunction;->$VALUES:[Lcom/google/common/base/Suppliers$SupplierFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Suppliers$SupplierFunction;
    .registers 2
    .parameter

    .prologue
    .line 246
    const-class v0, Lcom/google/common/base/Suppliers$SupplierFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Suppliers$SupplierFunction;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/Suppliers$SupplierFunction;
    .registers 1

    .prologue
    .line 246
    sget-object v0, Lcom/google/common/base/Suppliers$SupplierFunction;->$VALUES:[Lcom/google/common/base/Suppliers$SupplierFunction;

    invoke-virtual {v0}, [Lcom/google/common/base/Suppliers$SupplierFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Suppliers$SupplierFunction;

    return-object v0
.end method


# virtual methods
.method public final apply(Lcom/google/common/base/am;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 251
    invoke-interface {p1}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 246
    check-cast p1, Lcom/google/common/base/am;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Suppliers$SupplierFunction;->apply(Lcom/google/common/base/am;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
