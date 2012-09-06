.class public final enum Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;
.super Ljava/lang/Enum;
.source "PhraseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

.field public static final enum ANTI_DOMINATING_PHRASE:Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

.field public static final enum DOMINATING_PHRASE:Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    const-string v1, "DOMINATING_PHRASE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;->DOMINATING_PHRASE:Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    .line 13
    new-instance v0, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    const-string v1, "ANTI_DOMINATING_PHRASE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;->ANTI_DOMINATING_PHRASE:Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    sget-object v1, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;->DOMINATING_PHRASE:Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;->ANTI_DOMINATING_PHRASE:Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;->$VALUES:[Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;
    .registers 2
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;->$VALUES:[Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    invoke-virtual {v0}, [Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    return-object v0
.end method
