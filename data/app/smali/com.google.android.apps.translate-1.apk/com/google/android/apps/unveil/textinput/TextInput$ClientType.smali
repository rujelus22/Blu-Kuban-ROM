.class public final enum Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;
.super Ljava/lang/Enum;
.source "TextInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/textinput/TextInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

.field public static final enum FELIX_TEXT:Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

.field public static final enum TRANSLATE:Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;


# instance fields
.field public final source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    new-instance v0, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    const-string v1, "FELIX_TEXT"

    sget-object v2, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->FELIX_TEXT:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;-><init>(Ljava/lang/String;ILcom/google/goggles/GogglesProtos$GogglesRequest$Source;)V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;->FELIX_TEXT:Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    .line 97
    new-instance v0, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    const-string v1, "TRANSLATE"

    sget-object v2, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->TRANSLATE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;-><init>(Ljava/lang/String;ILcom/google/goggles/GogglesProtos$GogglesRequest$Source;)V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;->TRANSLATE:Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    sget-object v1, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;->FELIX_TEXT:Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;->TRANSLATE:Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;->$VALUES:[Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/goggles/GogglesProtos$GogglesRequest$Source;)V
    .registers 4
    .parameter
    .parameter
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p3, p0, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 103
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;
    .registers 2
    .parameter "name"

    .prologue
    .line 89
    const-class v0, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;->$VALUES:[Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;

    return-object v0
.end method
