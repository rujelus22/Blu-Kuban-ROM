.class public abstract enum Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
.super Ljava/lang/Enum;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract$Volumes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Access"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

.field public static final enum FREE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

.field public static final enum NO_VIEW:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

.field public static final enum PURCHASED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

.field public static final enum SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1372
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$1;

    const-string v1, "NO_VIEW"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->NO_VIEW:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 1377
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$2;

    const-string v1, "SAMPLE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 1382
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$3;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->FREE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 1395
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$4;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->PURCHASED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 1370
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->NO_VIEW:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->FREE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->PURCHASED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->$VALUES:[Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

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
    .line 1370
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/apps/books/provider/BooksContract$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1370
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .registers 4
    .parameter "viewability"
    .parameter "openAccess"
    .parameter "buyUrl"

    .prologue
    .line 1407
    const-string v0, "empty viewability"

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkIsGraphic(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1408
    const-string v0, "empty openAccess"

    invoke-static {p1, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkIsGraphic(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1409
    const-string v0, "http://schemas.google.com/books/2008#view_all_pages"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1410
    const-string v0, "http://schemas.google.com/books/2008#enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1411
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->FREE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 1420
    :goto_1c
    return-object v0

    .line 1412
    :cond_1d
    invoke-static {p2}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1413
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->PURCHASED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    goto :goto_1c

    .line 1416
    :cond_26
    const-string v0, "http://schemas.google.com/books/2008#view_unknown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "http://schemas.google.com/books/2008#view_no_pages"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1418
    :cond_36
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->NO_VIEW:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    goto :goto_1c

    .line 1420
    :cond_39
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    goto :goto_1c
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .registers 2
    .parameter

    .prologue
    .line 1370
    const-class v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .registers 1

    .prologue
    .line 1370
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->$VALUES:[Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    return-object v0
.end method


# virtual methods
.method public abstract shouldHonorTransition(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;)Z
.end method
