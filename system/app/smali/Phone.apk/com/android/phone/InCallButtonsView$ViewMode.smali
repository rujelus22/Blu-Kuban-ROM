.class final enum Lcom/android/phone/InCallButtonsView$ViewMode;
.super Ljava/lang/Enum;
.source "InCallButtonsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallButtonsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallButtonsView$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallButtonsView$ViewMode;

.field public static final enum LANDSCAPE:Lcom/android/phone/InCallButtonsView$ViewMode;

.field public static final enum ONEHAND:Lcom/android/phone/InCallButtonsView$ViewMode;

.field public static final enum PORTRAIT:Lcom/android/phone/InCallButtonsView$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/android/phone/InCallButtonsView$ViewMode;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallButtonsView$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallButtonsView$ViewMode;->PORTRAIT:Lcom/android/phone/InCallButtonsView$ViewMode;

    new-instance v0, Lcom/android/phone/InCallButtonsView$ViewMode;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InCallButtonsView$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallButtonsView$ViewMode;->LANDSCAPE:Lcom/android/phone/InCallButtonsView$ViewMode;

    new-instance v0, Lcom/android/phone/InCallButtonsView$ViewMode;

    const-string v1, "ONEHAND"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InCallButtonsView$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallButtonsView$ViewMode;->ONEHAND:Lcom/android/phone/InCallButtonsView$ViewMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/InCallButtonsView$ViewMode;

    sget-object v1, Lcom/android/phone/InCallButtonsView$ViewMode;->PORTRAIT:Lcom/android/phone/InCallButtonsView$ViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/InCallButtonsView$ViewMode;->LANDSCAPE:Lcom/android/phone/InCallButtonsView$ViewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InCallButtonsView$ViewMode;->ONEHAND:Lcom/android/phone/InCallButtonsView$ViewMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/InCallButtonsView$ViewMode;->$VALUES:[Lcom/android/phone/InCallButtonsView$ViewMode;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallButtonsView$ViewMode;
    .registers 2
    .parameter

    .prologue
    .line 114
    const-class v0, Lcom/android/phone/InCallButtonsView$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallButtonsView$ViewMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InCallButtonsView$ViewMode;
    .registers 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/phone/InCallButtonsView$ViewMode;->$VALUES:[Lcom/android/phone/InCallButtonsView$ViewMode;

    invoke-virtual {v0}, [Lcom/android/phone/InCallButtonsView$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallButtonsView$ViewMode;

    return-object v0
.end method
