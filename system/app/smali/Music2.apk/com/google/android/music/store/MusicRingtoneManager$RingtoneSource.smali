.class public final enum Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
.super Ljava/lang/Enum;
.source "MusicRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MusicRingtoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RingtoneSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

.field public static final enum CACHED_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

.field public static final enum KEEPON_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

.field public static final enum RINGTONE_DOWNLOAD:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

.field public static final enum SIDE_LOADED_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;


# instance fields
.field private mNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    const-string v1, "SIDE_LOADED_TRACK"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->SIDE_LOADED_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    .line 74
    new-instance v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    const-string v1, "KEEPON_TRACK"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->KEEPON_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    .line 75
    new-instance v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    const-string v1, "CACHED_TRACK"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->CACHED_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    .line 76
    new-instance v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    const-string v1, "RINGTONE_DOWNLOAD"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->RINGTONE_DOWNLOAD:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    sget-object v1, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->SIDE_LOADED_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->KEEPON_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->CACHED_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->RINGTONE_DOWNLOAD:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->$VALUES:[Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "number"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->mNumber:I

    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    .registers 2
    .parameter

    .prologue
    .line 71
    const-class v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->$VALUES:[Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    invoke-virtual {v0}, [Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->mNumber:I

    return v0
.end method
