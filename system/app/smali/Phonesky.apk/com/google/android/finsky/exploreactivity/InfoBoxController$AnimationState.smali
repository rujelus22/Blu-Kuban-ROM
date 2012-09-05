.class final enum Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;
.super Ljava/lang/Enum;
.source "InfoBoxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/InfoBoxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

.field public static final enum ANIMATE_DONE:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

.field public static final enum ANIMATE_IN:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

.field public static final enum ANIMATE_NONE:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

.field public static final enum ANIMATE_OUT:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    const-string v1, "ANIMATE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_NONE:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    new-instance v0, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    const-string v1, "ANIMATE_IN"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_IN:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    new-instance v0, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    const-string v1, "ANIMATE_DONE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_DONE:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    new-instance v0, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    const-string v1, "ANIMATE_OUT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_OUT:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_NONE:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_IN:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_DONE:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->ANIMATE_OUT:Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->$VALUES:[Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;
    .registers 2
    .parameter

    .prologue
    .line 67
    const-class v0, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->$VALUES:[Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/exploreactivity/InfoBoxController$AnimationState;

    return-object v0
.end method
