.class public final enum Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;
.super Ljava/lang/Enum;
.source "InstructionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/textinput/InstructionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Instruction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

.field public static final enum HOLD_STEADY:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

.field public static final enum NO_TEXT:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

.field public static final enum TAP_TO_READ:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

.field public static final enum USE_FINGER_TO_HIGHLIGHT:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

.field public static final enum USE_TWO_FINGERS_TO_PAN:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;


# instance fields
.field public textId:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    const-string v1, "TAP_TO_READ"

    sget v2, Lcom/google/android/apps/unveil/textinput/R$string;->text_input_tap_to_read:I

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->TAP_TO_READ:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    .line 25
    new-instance v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    const-string v1, "USE_FINGER_TO_HIGHLIGHT"

    sget v2, Lcom/google/android/apps/unveil/textinput/R$string;->text_input_use_finger_to_highlight:I

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->USE_FINGER_TO_HIGHLIGHT:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    .line 26
    new-instance v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    const-string v1, "HOLD_STEADY"

    sget v2, Lcom/google/android/apps/unveil/textinput/R$string;->text_input_hold_steady:I

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->HOLD_STEADY:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    .line 27
    new-instance v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    const-string v1, "NO_TEXT"

    sget v2, Lcom/google/android/apps/unveil/textinput/R$string;->text_input_no_text:I

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->NO_TEXT:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    .line 28
    new-instance v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    const-string v1, "USE_TWO_FINGERS_TO_PAN"

    sget v2, Lcom/google/android/apps/unveil/textinput/R$string;->text_input_use_two_fingers_to_pan:I

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->USE_TWO_FINGERS_TO_PAN:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    sget-object v1, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->TAP_TO_READ:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->USE_FINGER_TO_HIGHLIGHT:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->HOLD_STEADY:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->NO_TEXT:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->USE_TWO_FINGERS_TO_PAN:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->$VALUES:[Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "textId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->textId:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;
    .registers 2
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->$VALUES:[Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    return-object v0
.end method
