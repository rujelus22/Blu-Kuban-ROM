.class public final enum Lcom/swype/android/widget/InputWindow$KeyboardDisplay;
.super Ljava/lang/Enum;
.source "InputWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/widget/InputWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyboardDisplay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/widget/InputWindow$KeyboardDisplay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

.field public static final enum LARGE_DISPLAY:Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

.field public static final enum SMALL_DISPLAY:Lcom/swype/android/widget/InputWindow$KeyboardDisplay;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 289
    new-instance v0, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

    const-string v1, "SMALL_DISPLAY"

    invoke-direct {v0, v1, v2}, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;->SMALL_DISPLAY:Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

    new-instance v0, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

    const-string v1, "LARGE_DISPLAY"

    invoke-direct {v0, v1, v3}, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;->LARGE_DISPLAY:Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

    .line 288
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

    sget-object v1, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;->SMALL_DISPLAY:Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

    aput-object v1, v0, v2

    sget-object v1, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;->LARGE_DISPLAY:Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

    aput-object v1, v0, v3

    sput-object v0, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;->$VALUES:[Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

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
    .line 288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/widget/InputWindow$KeyboardDisplay;
    .registers 2
    .parameter

    .prologue
    .line 288
    const-class v0, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/widget/InputWindow$KeyboardDisplay;
    .registers 1

    .prologue
    .line 288
    sget-object v0, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;->$VALUES:[Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

    invoke-virtual {v0}, [Lcom/swype/android/widget/InputWindow$KeyboardDisplay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

    return-object v0
.end method
