.class public final enum Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
.super Ljava/lang/Enum;
.source "VoicePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/VoicePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

.field public static final enum ALL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

.field public static final enum ASK:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

.field public static final enum ASK_INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

.field public static final enum INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

.field public static final enum NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ALL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    .line 112
    new-instance v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    const-string v1, "INTL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    .line 113
    new-instance v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    .line 114
    new-instance v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    const-string v1, "ASK"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    .line 115
    new-instance v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    const-string v1, "ASK_INTL"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK_INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    .line 109
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ALL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->NONE:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->ASK_INTL:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->$VALUES:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    .registers 2
    .parameter "name"

    .prologue
    .line 109
    const-class v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->$VALUES:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    invoke-virtual {v0}, [Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    return-object v0
.end method
