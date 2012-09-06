.class public final enum Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;
.super Ljava/lang/Enum;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

.field public static final enum GEST_BACKSPACE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

.field public static final enum GEST_SPACE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

.field public static final enum NOT_A_GESTURE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    const-string v1, "NOT_A_GESTURE"

    invoke-direct {v0, v1, v2}, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->NOT_A_GESTURE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    new-instance v0, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    const-string v1, "GEST_BACKSPACE"

    invoke-direct {v0, v1, v3}, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->GEST_BACKSPACE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    new-instance v0, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    const-string v1, "GEST_SPACE"

    invoke-direct {v0, v1, v4}, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->GEST_SPACE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    sget-object v1, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->NOT_A_GESTURE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->GEST_BACKSPACE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->GEST_SPACE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->$VALUES:[Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;
    .registers 2
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    return-object v0
.end method

.method public static values()[Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->$VALUES:[Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    invoke-virtual {v0}, [Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    return-object v0
.end method
