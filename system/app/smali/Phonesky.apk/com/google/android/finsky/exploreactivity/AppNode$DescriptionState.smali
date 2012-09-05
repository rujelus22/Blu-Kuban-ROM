.class final enum Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;
.super Ljava/lang/Enum;
.source "AppNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/AppNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DescriptionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

.field public static final enum EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

.field public static final enum LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

.field public static final enum RECIEVED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

.field public static final enum REQUESTED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    const-string v1, "REQUESTED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->REQUESTED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    const-string v1, "RECIEVED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->RECIEVED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    .line 239
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->EMPTY:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->REQUESTED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->RECIEVED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->LOADED:Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->$VALUES:[Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

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
    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;
    .registers 2
    .parameter

    .prologue
    .line 239
    const-class v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;
    .registers 1

    .prologue
    .line 239
    sget-object v0, Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->$VALUES:[Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/exploreactivity/AppNode$DescriptionState;

    return-object v0
.end method
