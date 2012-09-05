.class public final enum Lcom/google/android/finsky/navigationmanager/NavigationState;
.super Ljava/lang/Enum;
.source "NavigationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/navigationmanager/NavigationState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/navigationmanager/NavigationState;

.field public static final enum AGGREGATED_HOME:Lcom/google/android/finsky/navigationmanager/NavigationState;

.field public static final enum ALL_REVIEWS:Lcom/google/android/finsky/navigationmanager/NavigationState;

.field public static final enum BROWSE:Lcom/google/android/finsky/navigationmanager/NavigationState;

.field public static final enum CORPUS_HOME:Lcom/google/android/finsky/navigationmanager/NavigationState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/navigationmanager/NavigationState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationState;

.field public static final enum DETAILS_SHIM:Lcom/google/android/finsky/navigationmanager/NavigationState;

.field public static final enum INITIAL:Lcom/google/android/finsky/navigationmanager/NavigationState;

.field public static final enum LINK_RESOLVER:Lcom/google/android/finsky/navigationmanager/NavigationState;

.field public static final enum MY_DOWNLOADS:Lcom/google/android/finsky/navigationmanager/NavigationState;

.field public static final enum SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->INITIAL:Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 12
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    const-string v1, "AGGREGATED_HOME"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->AGGREGATED_HOME:Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 13
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    const-string v1, "CORPUS_HOME"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->CORPUS_HOME:Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 14
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    const-string v1, "MY_DOWNLOADS"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->MY_DOWNLOADS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 15
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    const-string v1, "BROWSE"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->BROWSE:Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 16
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    const-string v1, "DETAILS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 17
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    const-string v1, "DETAILS_SHIM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->DETAILS_SHIM:Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 18
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    const-string v1, "SEARCH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 19
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    const-string v1, "ALL_REVIEWS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->ALL_REVIEWS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 20
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    const-string v1, "LINK_RESOLVER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->LINK_RESOLVER:Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 10
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/finsky/navigationmanager/NavigationState;

    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->INITIAL:Lcom/google/android/finsky/navigationmanager/NavigationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->AGGREGATED_HOME:Lcom/google/android/finsky/navigationmanager/NavigationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->CORPUS_HOME:Lcom/google/android/finsky/navigationmanager/NavigationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->MY_DOWNLOADS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->BROWSE:Lcom/google/android/finsky/navigationmanager/NavigationState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/navigationmanager/NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/navigationmanager/NavigationState;->DETAILS_SHIM:Lcom/google/android/finsky/navigationmanager/NavigationState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/navigationmanager/NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/navigationmanager/NavigationState;->ALL_REVIEWS:Lcom/google/android/finsky/navigationmanager/NavigationState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/finsky/navigationmanager/NavigationState;->LINK_RESOLVER:Lcom/google/android/finsky/navigationmanager/NavigationState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->$VALUES:[Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 32
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationState$1;

    invoke-direct {v0}, Lcom/google/android/finsky/navigationmanager/NavigationState$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/navigationmanager/NavigationState;
    .registers 2
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/navigationmanager/NavigationState;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->$VALUES:[Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/navigationmanager/NavigationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/navigationmanager/NavigationState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    return-void
.end method
