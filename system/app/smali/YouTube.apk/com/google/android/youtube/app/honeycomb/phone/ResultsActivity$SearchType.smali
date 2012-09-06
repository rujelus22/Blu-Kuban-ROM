.class final enum Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

.field public static final enum CHANNEL:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

.field public static final enum VIDEO:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;


# instance fields
.field public final nameRes:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    const-string v1, "VIDEO"

    const v2, 0x7f0b01a5

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->VIDEO:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    .line 63
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    const-string v1, "CHANNEL"

    const v2, 0x7f0b01a6

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->CHANNEL:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->VIDEO:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->CHANNEL:Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->$VALUES:[Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->nameRes:I

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;
    .registers 2
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->$VALUES:[Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/honeycomb/phone/ResultsActivity$SearchType;

    return-object v0
.end method
