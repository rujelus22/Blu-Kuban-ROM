.class final enum Lcom/android/phone/EndCallButtonsView$ViewMode;
.super Ljava/lang/Enum;
.source "EndCallButtonsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EndCallButtonsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/EndCallButtonsView$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/EndCallButtonsView$ViewMode;

.field public static final enum LANDSCAPE:Lcom/android/phone/EndCallButtonsView$ViewMode;

.field public static final enum ONEHAND:Lcom/android/phone/EndCallButtonsView$ViewMode;

.field public static final enum PORTRAIT:Lcom/android/phone/EndCallButtonsView$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/android/phone/EndCallButtonsView$ViewMode;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/EndCallButtonsView$ViewMode;->PORTRAIT:Lcom/android/phone/EndCallButtonsView$ViewMode;

    new-instance v0, Lcom/android/phone/EndCallButtonsView$ViewMode;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/EndCallButtonsView$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/EndCallButtonsView$ViewMode;->LANDSCAPE:Lcom/android/phone/EndCallButtonsView$ViewMode;

    new-instance v0, Lcom/android/phone/EndCallButtonsView$ViewMode;

    const-string v1, "ONEHAND"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/EndCallButtonsView$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/EndCallButtonsView$ViewMode;->ONEHAND:Lcom/android/phone/EndCallButtonsView$ViewMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/EndCallButtonsView$ViewMode;

    sget-object v1, Lcom/android/phone/EndCallButtonsView$ViewMode;->PORTRAIT:Lcom/android/phone/EndCallButtonsView$ViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/EndCallButtonsView$ViewMode;->LANDSCAPE:Lcom/android/phone/EndCallButtonsView$ViewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/EndCallButtonsView$ViewMode;->ONEHAND:Lcom/android/phone/EndCallButtonsView$ViewMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/EndCallButtonsView$ViewMode;->$VALUES:[Lcom/android/phone/EndCallButtonsView$ViewMode;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/EndCallButtonsView$ViewMode;
    .registers 2
    .parameter

    .prologue
    .line 65
    const-class v0, Lcom/android/phone/EndCallButtonsView$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EndCallButtonsView$ViewMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/EndCallButtonsView$ViewMode;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/phone/EndCallButtonsView$ViewMode;->$VALUES:[Lcom/android/phone/EndCallButtonsView$ViewMode;

    invoke-virtual {v0}, [Lcom/android/phone/EndCallButtonsView$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/EndCallButtonsView$ViewMode;

    return-object v0
.end method
