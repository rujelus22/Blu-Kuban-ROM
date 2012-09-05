.class final enum Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;
.super Ljava/lang/Enum;
.source "ContextMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/ContextMenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextMenuType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

.field public static final enum ALBUM:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

.field public static final enum ARTIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

.field public static final enum GENRE:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

.field public static final enum PLAYLIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

.field public static final enum SONG:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 417
    new-instance v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->ALBUM:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    .line 418
    new-instance v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const-string v1, "ARTIST"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->ARTIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    .line 419
    new-instance v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const-string v1, "PLAYLIST"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->PLAYLIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    .line 420
    new-instance v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const-string v1, "GENRE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->GENRE:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    .line 421
    new-instance v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    const-string v1, "SONG"

    invoke-direct {v0, v1, v6}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->SONG:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    .line 416
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    sget-object v1, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->ALBUM:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->ARTIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->PLAYLIST:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->GENRE:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->SONG:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->$VALUES:[Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

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
    .line 416
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;
    .registers 2
    .parameter

    .prologue
    .line 416
    const-class v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;
    .registers 1

    .prologue
    .line 416
    sget-object v0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->$VALUES:[Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    invoke-virtual {v0}, [Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/utils/ContextMenuManager$ContextMenuType;

    return-object v0
.end method
