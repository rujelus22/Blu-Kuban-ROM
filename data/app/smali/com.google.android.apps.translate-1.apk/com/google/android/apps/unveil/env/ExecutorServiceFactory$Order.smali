.class final enum Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;
.super Ljava/lang/Enum;
.source "ExecutorServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/ExecutorServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

.field public static final enum FIFO:Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

.field public static final enum LIFO:Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

    const-string v1, "FIFO"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;->FIFO:Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

    new-instance v0, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

    const-string v1, "LIFO"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;->LIFO:Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

    sget-object v1, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;->FIFO:Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;->LIFO:Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;->$VALUES:[Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;
    .registers 2
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;->$VALUES:[Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

    return-object v0
.end method
