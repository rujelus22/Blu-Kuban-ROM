.class final enum Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;
.super Ljava/lang/Enum;
.source "RentalsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/honeycomb/RentalsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HasRentals"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

.field public static final enum LOADING:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

.field public static final enum NO:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

.field public static final enum YES:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->YES:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    .line 56
    new-instance v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->NO:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    .line 57
    new-instance v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->LOADING:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    sget-object v1, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->YES:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->NO:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->LOADING:Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->$VALUES:[Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;
    .registers 2
    .parameter

    .prologue
    .line 54
    const-class v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->$VALUES:[Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    invoke-virtual {v0}, [Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/videos/honeycomb/RentalsController$HasRentals;

    return-object v0
.end method
