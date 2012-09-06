.class public final enum Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;
.super Ljava/lang/Enum;
.source "DeleteConfirmationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/DeleteConfirmationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeletionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

.field public static final enum ALBUM:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

.field public static final enum ALBUM_BY_ARTIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

.field public static final enum ARTIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

.field public static final enum PLAYLIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

.field public static final enum SONG:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    const-string v1, "ARTIST"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->ARTIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    .line 25
    new-instance v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->ALBUM:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    .line 26
    new-instance v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    const-string v1, "ALBUM_BY_ARTIST"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->ALBUM_BY_ARTIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    .line 27
    new-instance v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    const-string v1, "SONG"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->SONG:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    .line 28
    new-instance v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    const-string v1, "PLAYLIST"

    invoke-direct {v0, v1, v6}, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->PLAYLIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    sget-object v1, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->ARTIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->ALBUM:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->ALBUM_BY_ARTIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->SONG:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->PLAYLIST:Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->$VALUES:[Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;
    .registers 2
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->$VALUES:[Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    invoke-virtual {v0}, [Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/DeleteConfirmationDialog$DeletionType;

    return-object v0
.end method
