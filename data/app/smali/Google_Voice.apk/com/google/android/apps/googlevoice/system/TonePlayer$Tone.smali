.class public final enum Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;
.super Ljava/lang/Enum;
.source "TonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/system/TonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tone"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

.field public static final enum END_CALL:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

.field public static final enum RINGBACK:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    const-string v1, "RINGBACK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;->RINGBACK:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    .line 16
    new-instance v0, Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    const-string v1, "END_CALL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;->END_CALL:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    sget-object v1, Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;->RINGBACK:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;->END_CALL:Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;->$VALUES:[Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;
    .registers 2
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;->$VALUES:[Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    invoke-virtual {v0}, [Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/system/TonePlayer$Tone;

    return-object v0
.end method
