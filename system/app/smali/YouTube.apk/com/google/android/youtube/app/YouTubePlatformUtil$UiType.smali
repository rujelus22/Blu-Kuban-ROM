.class public final enum Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

.field public static final enum ClassicPhone:Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

.field public static final enum Guide:Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

.field public static final enum OriginalTablet:Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    const-string v1, "ClassicPhone"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;->ClassicPhone:Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    .line 14
    new-instance v0, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    const-string v1, "OriginalTablet"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;->OriginalTablet:Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    .line 15
    new-instance v0, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    const-string v1, "Guide"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;->Guide:Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    sget-object v1, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;->ClassicPhone:Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;->OriginalTablet:Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;->Guide:Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;->$VALUES:[Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;
    .registers 2
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;->$VALUES:[Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/YouTubePlatformUtil$UiType;

    return-object v0
.end method
