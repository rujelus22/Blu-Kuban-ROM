.class public final enum Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;
.super Ljava/lang/Enum;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LicenseAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

.field public static final enum NONE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

.field public static final enum READ:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

.field public static final enum RELEASE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;


# instance fields
.field private final mDbValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2534
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->NONE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    .line 2538
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    const-string v1, "READ"

    const-string v2, "Read"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->READ:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    .line 2543
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    const-string v1, "RELEASE"

    const-string v2, "Release"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->RELEASE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    .line 2529
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->NONE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->READ:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->RELEASE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->$VALUES:[Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "dbValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2547
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2548
    iput-object p3, p0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->mDbValue:Ljava/lang/String;

    .line 2549
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;
    .registers 2
    .parameter

    .prologue
    .line 2529
    const-class v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;
    .registers 1

    .prologue
    .line 2529
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->$VALUES:[Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    return-object v0
.end method


# virtual methods
.method public getDbValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2552
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->mDbValue:Ljava/lang/String;

    return-object v0
.end method
