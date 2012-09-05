.class public final enum Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/r;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum CLASSICS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum COMEDY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum CRIME:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum DRAMA:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum FAMILY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum FOREIGN:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum HORROR:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum MYSTERY_AND_SUSPENSE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum ROMANCE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum SPORTS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;


# instance fields
.field private final stringId:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "UNSPECIFIED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 156
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "ACTION_AND_ADVENTURE"

    const v2, 0x7f0a0062

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 157
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "ANIMATION_AND_CARTOONS"

    const v2, 0x7f0a0063

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 158
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "COMEDY"

    const v2, 0x7f0a0064

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->COMEDY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 159
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "DRAMA"

    const v2, 0x7f0a0065

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->DRAMA:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 160
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "SPORTS"

    const/4 v2, 0x5

    const v3, 0x7f0a0066

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->SPORTS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 161
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "DOCUMENTARY_AND_BIOGRAPHY"

    const/4 v2, 0x6

    const v3, 0x7f0a0067

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 162
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "SCIENCE_FICTION"

    const/4 v2, 0x7

    const v3, 0x7f0a0068

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 163
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "CLASSICS"

    const/16 v2, 0x8

    const v3, 0x7f0a0069

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->CLASSICS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 164
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "CRIME"

    const/16 v2, 0x9

    const v3, 0x7f0a006a

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->CRIME:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 165
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "FAMILY"

    const/16 v2, 0xa

    const v3, 0x7f0a006b

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->FAMILY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 166
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "FOREIGN"

    const/16 v2, 0xb

    const v3, 0x7f0a006c

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->FOREIGN:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 167
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "HORROR"

    const/16 v2, 0xc

    const v3, 0x7f0a006d

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->HORROR:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 168
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "MYSTERY_AND_SUSPENSE"

    const/16 v2, 0xd

    const v3, 0x7f0a006e

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->MYSTERY_AND_SUSPENSE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 169
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "ROMANCE"

    const/16 v2, 0xe

    const v3, 0x7f0a006f

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ROMANCE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 154
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->COMEDY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->DRAMA:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->SPORTS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->CLASSICS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->CRIME:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->FAMILY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->FOREIGN:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->HORROR:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->MYSTERY_AND_SUSPENSE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ROMANCE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->$VALUES:[Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 178
    iput p3, p0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->stringId:I

    .line 179
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;
    .registers 2
    .parameter

    .prologue
    .line 154
    const-class v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;
    .registers 1

    .prologue
    .line 154
    sget-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->$VALUES:[Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    return-object v0
.end method


# virtual methods
.method public final stringId()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->stringId:I

    return v0
.end method
