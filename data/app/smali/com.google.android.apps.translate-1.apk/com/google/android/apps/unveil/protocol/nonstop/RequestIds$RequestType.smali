.class public final enum Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;
.super Ljava/lang/Enum;
.source "RequestIds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

.field public static final enum CLIENT_ANNOTATION:Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

.field public static final enum IMAGE:Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;


# instance fields
.field public final identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    const-string v1, "IMAGE"

    const-string v2, "i"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;->IMAGE:Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    .line 33
    new-instance v0, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    const-string v1, "CLIENT_ANNOTATION"

    const-string v2, "c"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;->CLIENT_ANNOTATION:Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    sget-object v1, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;->IMAGE:Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;->CLIENT_ANNOTATION:Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;->$VALUES:[Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "identifier"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;->identifier:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;
    .registers 2
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;->$VALUES:[Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds$RequestType;

    return-object v0
.end method
