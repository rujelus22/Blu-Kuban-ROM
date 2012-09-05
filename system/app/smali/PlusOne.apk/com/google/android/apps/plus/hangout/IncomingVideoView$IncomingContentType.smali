.class final enum Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;
.super Ljava/lang/Enum;
.source "IncomingVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/IncomingVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IncomingContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

.field public static final enum AVATAR:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

.field public static final enum BLOCKED:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

.field public static final enum NONE:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

.field public static final enum VIDEO:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->NONE:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    .line 130
    new-instance v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->VIDEO:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    .line 131
    new-instance v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    const-string v1, "AVATAR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->AVATAR:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    .line 132
    new-instance v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->BLOCKED:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    .line 128
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->NONE:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->VIDEO:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->AVATAR:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->BLOCKED:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->$VALUES:[Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

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
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;
    .registers 2
    .parameter

    .prologue
    .line 128
    const-class v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->$VALUES:[Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    return-object v0
.end method
