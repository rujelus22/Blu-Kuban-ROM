.class public final enum Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;
.super Ljava/lang/Enum;
.source "AppNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/AppNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

.field public static final enum EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

.field public static final enum LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

.field public static final enum QUEUED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

.field public static final enum RECIEVED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

.field public static final enum REQUESTED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 226
    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    const-string v1, "REQUESTED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->REQUESTED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    const-string v1, "RECIEVED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->RECIEVED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    const-string v1, "QUEUED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->QUEUED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    .line 225
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->REQUESTED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->RECIEVED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->QUEUED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->$VALUES:[Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

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
    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;
    .registers 2
    .parameter

    .prologue
    .line 225
    const-class v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;
    .registers 1

    .prologue
    .line 225
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->$VALUES:[Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/exploreactivity/AppNode$ImageState;

    return-object v0
.end method
