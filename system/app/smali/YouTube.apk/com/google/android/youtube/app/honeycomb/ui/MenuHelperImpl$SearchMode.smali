.class public final enum Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

.field public static final enum CUSTOM:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

.field public static final enum DISABLED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

.field public static final enum EXPANDED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

.field public static final enum ICONIFIED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->DISABLED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    .line 35
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    const-string v1, "ICONIFIED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    .line 36
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->EXPANDED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    .line 37
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->CUSTOM:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->DISABLED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->EXPANDED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->CUSTOM:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->$VALUES:[Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;
    .registers 2
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->$VALUES:[Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    return-object v0
.end method
