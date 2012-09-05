.class public final enum Lcom/google/android/apps/books/tts/TtsUnit;
.super Ljava/lang/Enum;
.source "TtsUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/tts/TtsUnit$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/tts/TtsUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/tts/TtsUnit;

.field public static final enum CHARACTER:Lcom/google/android/apps/books/tts/TtsUnit;

.field public static final enum SENTENCE:Lcom/google/android/apps/books/tts/TtsUnit;

.field public static final enum WORD:Lcom/google/android/apps/books/tts/TtsUnit;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/google/android/apps/books/tts/TtsUnit;

    const-string v1, "CHARACTER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/tts/TtsUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/tts/TtsUnit;->CHARACTER:Lcom/google/android/apps/books/tts/TtsUnit;

    .line 14
    new-instance v0, Lcom/google/android/apps/books/tts/TtsUnit;

    const-string v1, "WORD"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/books/tts/TtsUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/tts/TtsUnit;->WORD:Lcom/google/android/apps/books/tts/TtsUnit;

    .line 15
    new-instance v0, Lcom/google/android/apps/books/tts/TtsUnit;

    const-string v1, "SENTENCE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/books/tts/TtsUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/tts/TtsUnit;->SENTENCE:Lcom/google/android/apps/books/tts/TtsUnit;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/books/tts/TtsUnit;

    sget-object v1, Lcom/google/android/apps/books/tts/TtsUnit;->CHARACTER:Lcom/google/android/apps/books/tts/TtsUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/books/tts/TtsUnit;->WORD:Lcom/google/android/apps/books/tts/TtsUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/books/tts/TtsUnit;->SENTENCE:Lcom/google/android/apps/books/tts/TtsUnit;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/books/tts/TtsUnit;->$VALUES:[Lcom/google/android/apps/books/tts/TtsUnit;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/tts/TtsUnit;
    .registers 2
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/tts/TtsUnit;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/books/tts/TtsUnit;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/apps/books/tts/TtsUnit;->$VALUES:[Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/tts/TtsUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/tts/TtsUnit;

    return-object v0
.end method


# virtual methods
.method public nextLargerUnit()Lcom/google/android/apps/books/tts/TtsUnit;
    .registers 3

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/apps/books/tts/TtsUnit$1;->$SwitchMap$com$google$android$apps$books$tts$TtsUnit:[I

    invoke-virtual {p0}, Lcom/google/android/apps/books/tts/TtsUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 22
    sget-object v0, Lcom/google/android/apps/books/tts/TtsUnit;->SENTENCE:Lcom/google/android/apps/books/tts/TtsUnit;

    :goto_d
    return-object v0

    .line 20
    :pswitch_e
    sget-object v0, Lcom/google/android/apps/books/tts/TtsUnit;->WORD:Lcom/google/android/apps/books/tts/TtsUnit;

    goto :goto_d

    .line 18
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method

.method public nextSmallerUnit()Lcom/google/android/apps/books/tts/TtsUnit;
    .registers 3

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/apps/books/tts/TtsUnit$1;->$SwitchMap$com$google$android$apps$books$tts$TtsUnit:[I

    invoke-virtual {p0}, Lcom/google/android/apps/books/tts/TtsUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 31
    sget-object v0, Lcom/google/android/apps/books/tts/TtsUnit;->CHARACTER:Lcom/google/android/apps/books/tts/TtsUnit;

    :goto_d
    return-object v0

    .line 29
    :pswitch_e
    sget-object v0, Lcom/google/android/apps/books/tts/TtsUnit;->WORD:Lcom/google/android/apps/books/tts/TtsUnit;

    goto :goto_d

    .line 27
    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_e
    .end packed-switch
.end method
