.class final enum Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;
.super Ljava/lang/Enum;
.source "DetailsWishlist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/DetailsWishlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WishlistState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

.field public static final enum IN_WISHLIST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

.field public static final enum LOADING_ADD_REQUEST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

.field public static final enum LOADING_REM_REQUEST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

.field public static final enum NOT_IN_WISHLIST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    const-string v1, "IN_WISHLIST"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->IN_WISHLIST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    .line 46
    new-instance v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    const-string v1, "NOT_IN_WISHLIST"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->NOT_IN_WISHLIST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    .line 47
    new-instance v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    const-string v1, "LOADING_ADD_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->LOADING_ADD_REQUEST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    .line 48
    new-instance v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    const-string v1, "LOADING_REM_REQUEST"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->LOADING_REM_REQUEST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    sget-object v1, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->IN_WISHLIST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->NOT_IN_WISHLIST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->LOADING_ADD_REQUEST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->LOADING_REM_REQUEST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->$VALUES:[Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;
    .registers 2
    .parameter

    .prologue
    .line 44
    const-class v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->$VALUES:[Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    return-object v0
.end method
