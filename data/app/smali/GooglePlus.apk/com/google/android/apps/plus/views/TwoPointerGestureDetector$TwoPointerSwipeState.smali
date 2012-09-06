.class final enum Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;
.super Ljava/lang/Enum;
.source "TwoPointerGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TwoPointerSwipeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

.field public static final enum INITIAL:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

.field public static final enum ONE_DOWN:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

.field public static final enum ONE_UP:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

.field public static final enum TWO_DOWN:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->INITIAL:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    .line 22
    new-instance v0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    const-string v1, "ONE_DOWN"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->ONE_DOWN:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    .line 23
    new-instance v0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    const-string v1, "TWO_DOWN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->TWO_DOWN:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    .line 24
    new-instance v0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    const-string v1, "ONE_UP"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->ONE_UP:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    sget-object v1, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->INITIAL:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->ONE_DOWN:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->TWO_DOWN:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->ONE_UP:Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->$VALUES:[Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;
    .registers 2
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->$VALUES:[Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/views/TwoPointerGestureDetector$TwoPointerSwipeState;

    return-object v0
.end method
