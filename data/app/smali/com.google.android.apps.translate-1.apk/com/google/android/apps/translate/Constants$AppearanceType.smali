.class public final enum Lcom/google/android/apps/translate/Constants$AppearanceType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppearanceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/translate/Constants$AppearanceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/translate/Constants$AppearanceType;

.field public static final enum DICTIONARY_RESULT:Lcom/google/android/apps/translate/Constants$AppearanceType;

.field public static final enum ENTRY_SUMMARY:Lcom/google/android/apps/translate/Constants$AppearanceType;

.field public static final enum ENTRY_TITLE:Lcom/google/android/apps/translate/Constants$AppearanceType;

.field public static final enum INPUT_PANEL:Lcom/google/android/apps/translate/Constants$AppearanceType;

.field public static final enum TRANSLATE_TO:Lcom/google/android/apps/translate/Constants$AppearanceType;

.field public static final enum UNCHANGED:Lcom/google/android/apps/translate/Constants$AppearanceType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    new-instance v0, Lcom/google/android/apps/translate/Constants$AppearanceType;

    const-string v1, "ENTRY_TITLE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/translate/Constants$AppearanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/Constants$AppearanceType;->ENTRY_TITLE:Lcom/google/android/apps/translate/Constants$AppearanceType;

    new-instance v0, Lcom/google/android/apps/translate/Constants$AppearanceType;

    const-string v1, "ENTRY_SUMMARY"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/translate/Constants$AppearanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/Constants$AppearanceType;->ENTRY_SUMMARY:Lcom/google/android/apps/translate/Constants$AppearanceType;

    new-instance v0, Lcom/google/android/apps/translate/Constants$AppearanceType;

    const-string v1, "DICTIONARY_RESULT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/translate/Constants$AppearanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/Constants$AppearanceType;->DICTIONARY_RESULT:Lcom/google/android/apps/translate/Constants$AppearanceType;

    new-instance v0, Lcom/google/android/apps/translate/Constants$AppearanceType;

    const-string v1, "INPUT_PANEL"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/translate/Constants$AppearanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/Constants$AppearanceType;->INPUT_PANEL:Lcom/google/android/apps/translate/Constants$AppearanceType;

    new-instance v0, Lcom/google/android/apps/translate/Constants$AppearanceType;

    const-string v1, "TRANSLATE_TO"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/translate/Constants$AppearanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/Constants$AppearanceType;->TRANSLATE_TO:Lcom/google/android/apps/translate/Constants$AppearanceType;

    .line 145
    new-instance v0, Lcom/google/android/apps/translate/Constants$AppearanceType;

    const-string v1, "UNCHANGED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/Constants$AppearanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/Constants$AppearanceType;->UNCHANGED:Lcom/google/android/apps/translate/Constants$AppearanceType;

    .line 143
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/apps/translate/Constants$AppearanceType;

    sget-object v1, Lcom/google/android/apps/translate/Constants$AppearanceType;->ENTRY_TITLE:Lcom/google/android/apps/translate/Constants$AppearanceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/translate/Constants$AppearanceType;->ENTRY_SUMMARY:Lcom/google/android/apps/translate/Constants$AppearanceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/translate/Constants$AppearanceType;->DICTIONARY_RESULT:Lcom/google/android/apps/translate/Constants$AppearanceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/translate/Constants$AppearanceType;->INPUT_PANEL:Lcom/google/android/apps/translate/Constants$AppearanceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/translate/Constants$AppearanceType;->TRANSLATE_TO:Lcom/google/android/apps/translate/Constants$AppearanceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/translate/Constants$AppearanceType;->UNCHANGED:Lcom/google/android/apps/translate/Constants$AppearanceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/translate/Constants$AppearanceType;->$VALUES:[Lcom/google/android/apps/translate/Constants$AppearanceType;

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
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/translate/Constants$AppearanceType;
    .registers 2
    .parameter "name"

    .prologue
    .line 143
    const-class v0, Lcom/google/android/apps/translate/Constants$AppearanceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/Constants$AppearanceType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/translate/Constants$AppearanceType;
    .registers 1

    .prologue
    .line 143
    sget-object v0, Lcom/google/android/apps/translate/Constants$AppearanceType;->$VALUES:[Lcom/google/android/apps/translate/Constants$AppearanceType;

    invoke-virtual {v0}, [Lcom/google/android/apps/translate/Constants$AppearanceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/translate/Constants$AppearanceType;

    return-object v0
.end method
