.class public final enum Lcom/google/android/apps/translate/translation/ChipView$ChipPart;
.super Ljava/lang/Enum;
.source "ChipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/translation/ChipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChipPart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/translate/translation/ChipView$ChipPart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

.field public static final enum ENTIRE_CHIP:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

.field public static final enum INPUT_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

.field public static final enum NONE:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

.field public static final enum TRANSLATION_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->NONE:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    .line 76
    new-instance v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    const-string v1, "ENTIRE_CHIP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->ENTIRE_CHIP:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    .line 77
    new-instance v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    const-string v1, "INPUT_TEXT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->INPUT_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    .line 78
    new-instance v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    const-string v1, "TRANSLATION_TEXT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->TRANSLATION_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->NONE:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->ENTIRE_CHIP:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->INPUT_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->TRANSLATION_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->$VALUES:[Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/translate/translation/ChipView$ChipPart;
    .registers 2
    .parameter "name"

    .prologue
    .line 74
    const-class v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/translate/translation/ChipView$ChipPart;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->$VALUES:[Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-virtual {v0}, [Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    return-object v0
.end method
