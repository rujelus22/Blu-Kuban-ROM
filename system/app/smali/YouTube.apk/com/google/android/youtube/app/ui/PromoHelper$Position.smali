.class final enum Lcom/google/android/youtube/app/ui/PromoHelper$Position;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/ui/PromoHelper$Position;

.field public static final enum BOTTOM:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

.field public static final enum CENTER:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

.field public static final enum TOP:Lcom/google/android/youtube/app/ui/PromoHelper$Position;


# instance fields
.field public final percentage:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    const-string v1, "TOP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/youtube/app/ui/PromoHelper$Position;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->TOP:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    .line 28
    new-instance v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    const-string v1, "CENTER"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/app/ui/PromoHelper$Position;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->CENTER:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    .line 29
    new-instance v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    const-string v1, "BOTTOM"

    const/16 v2, 0x38

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/app/ui/PromoHelper$Position;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->BOTTOM:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    sget-object v1, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->TOP:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->CENTER:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->BOTTOM:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->$VALUES:[Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->percentage:I

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/ui/PromoHelper$Position;
    .registers 2
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/ui/PromoHelper$Position;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->$VALUES:[Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/ui/PromoHelper$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    return-object v0
.end method
