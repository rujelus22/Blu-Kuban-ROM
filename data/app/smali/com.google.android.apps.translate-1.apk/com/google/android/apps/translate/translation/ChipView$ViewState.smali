.class final enum Lcom/google/android/apps/translate/translation/ChipView$ViewState;
.super Ljava/lang/Enum;
.source "ChipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/translation/ChipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/translate/translation/ChipView$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/translate/translation/ChipView$ViewState;

.field public static final enum SELECTED_EXPANDED:Lcom/google/android/apps/translate/translation/ChipView$ViewState;

.field public static final enum UNSELECTED:Lcom/google/android/apps/translate/translation/ChipView$ViewState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    const-string v1, "UNSELECTED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/translation/ChipView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/translation/ChipView$ViewState;->UNSELECTED:Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    .line 70
    new-instance v0, Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    const-string v1, "SELECTED_EXPANDED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/translate/translation/ChipView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/translation/ChipView$ViewState;->SELECTED_EXPANDED:Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView$ViewState;->UNSELECTED:Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/translate/translation/ChipView$ViewState;->SELECTED_EXPANDED:Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/translate/translation/ChipView$ViewState;->$VALUES:[Lcom/google/android/apps/translate/translation/ChipView$ViewState;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/translate/translation/ChipView$ViewState;
    .registers 2
    .parameter "name"

    .prologue
    .line 68
    const-class v0, Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/translate/translation/ChipView$ViewState;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView$ViewState;->$VALUES:[Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    invoke-virtual {v0}, [Lcom/google/android/apps/translate/translation/ChipView$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/translate/translation/ChipView$ViewState;

    return-object v0
.end method
