.class final enum Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;
.super Ljava/lang/Enum;
.source "FIFEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

.field public static final enum DONE:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

.field public static final enum FAILED:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

.field public static final enum NOT_READY:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

.field public static final enum READY:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 592
    new-instance v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->READY:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    new-instance v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    new-instance v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->DONE:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    new-instance v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    .line 591
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    sget-object v1, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->READY:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->DONE:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->$VALUES:[Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

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
    .line 591
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;
    .registers 2
    .parameter "name"

    .prologue
    .line 591
    const-class v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;
    .registers 1

    .prologue
    .line 591
    sget-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->$VALUES:[Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    return-object v0
.end method
