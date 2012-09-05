.class public final enum Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;
.super Ljava/lang/Enum;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract$Volumes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TtsPermission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

.field public static final enum ALLOWED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

.field public static final enum ALLOWED_FOR_ACCESSIBILITY:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

.field public static final enum NOT_ALLOWED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

.field public static final enum UNKNOWN:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1443
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    const-string v1, "ALLOWED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->ALLOWED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    .line 1445
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    const-string v1, "ALLOWED_FOR_ACCESSIBILITY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->ALLOWED_FOR_ACCESSIBILITY:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    .line 1447
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    const-string v1, "NOT_ALLOWED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->NOT_ALLOWED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    .line 1449
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->UNKNOWN:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    .line 1441
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->ALLOWED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->ALLOWED_FOR_ACCESSIBILITY:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->NOT_ALLOWED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->UNKNOWN:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->$VALUES:[Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

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
    .line 1441
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;
    .registers 2
    .parameter

    .prologue
    .line 1441
    const-class v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;
    .registers 1

    .prologue
    .line 1441
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->$VALUES:[Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    return-object v0
.end method
