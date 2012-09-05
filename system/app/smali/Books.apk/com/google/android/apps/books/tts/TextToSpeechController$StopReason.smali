.class public final enum Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;
.super Ljava/lang/Enum;
.source "TextToSpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/tts/TextToSpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StopReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

.field public static final enum COMPLETED_ITEM:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

.field public static final enum CONTENT_ERROR:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

.field public static final enum END_OF_BOOK:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

.field public static final enum OTHER_ERROR:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    const-string v1, "END_OF_BOOK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->END_OF_BOOK:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    .line 92
    new-instance v0, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    const-string v1, "COMPLETED_ITEM"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->COMPLETED_ITEM:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    .line 97
    new-instance v0, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    const-string v1, "CONTENT_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->CONTENT_ERROR:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    .line 102
    new-instance v0, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    const-string v1, "OTHER_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->OTHER_ERROR:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    sget-object v1, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->END_OF_BOOK:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->COMPLETED_ITEM:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->CONTENT_ERROR:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->OTHER_ERROR:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->$VALUES:[Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;
    .registers 2
    .parameter

    .prologue
    .line 81
    const-class v0, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->$VALUES:[Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    return-object v0
.end method
