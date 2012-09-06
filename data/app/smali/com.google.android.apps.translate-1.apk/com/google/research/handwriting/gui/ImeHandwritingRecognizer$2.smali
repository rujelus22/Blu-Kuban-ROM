.class synthetic Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$2;
.super Ljava/lang/Object;
.source "ImeHandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$research$handwriting$gui$GestureRecognizer$Gesture:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 910
    invoke-static {}, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->values()[Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$2;->$SwitchMap$com$google$research$handwriting$gui$GestureRecognizer$Gesture:[I

    :try_start_9
    sget-object v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$2;->$SwitchMap$com$google$research$handwriting$gui$GestureRecognizer$Gesture:[I

    sget-object v1, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->GEST_BACKSPACE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$2;->$SwitchMap$com$google$research$handwriting$gui$GestureRecognizer$Gesture:[I

    sget-object v1, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->GEST_SPACE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
