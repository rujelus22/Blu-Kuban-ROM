.class final enum Lcom/android/i18n/addressinput/LookupKey$KeyType;
.super Ljava/lang/Enum;
.source "LookupKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/LookupKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/addressinput/LookupKey$KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/addressinput/LookupKey$KeyType;

.field public static final enum DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

.field public static final enum EXAMPLES:Lcom/android/i18n/addressinput/LookupKey$KeyType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/android/i18n/addressinput/LookupKey$KeyType;

    const-string v1, "DATA"

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/addressinput/LookupKey$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    .line 51
    new-instance v0, Lcom/android/i18n/addressinput/LookupKey$KeyType;

    const-string v1, "EXAMPLES"

    invoke-direct {v0, v1, v3}, Lcom/android/i18n/addressinput/LookupKey$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/addressinput/LookupKey$KeyType;->EXAMPLES:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/i18n/addressinput/LookupKey$KeyType;

    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$KeyType;->EXAMPLES:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/i18n/addressinput/LookupKey$KeyType;->$VALUES:[Lcom/android/i18n/addressinput/LookupKey$KeyType;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/addressinput/LookupKey$KeyType;
    .registers 2
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/LookupKey$KeyType;

    return-object v0
.end method

.method public static values()[Lcom/android/i18n/addressinput/LookupKey$KeyType;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$KeyType;->$VALUES:[Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-virtual {v0}, [Lcom/android/i18n/addressinput/LookupKey$KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/addressinput/LookupKey$KeyType;

    return-object v0
.end method
