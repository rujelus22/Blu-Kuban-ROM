.class public final enum Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;
.super Ljava/lang/Enum;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

.field public static final enum CHOSE_BOOKMARK:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

.field public static final enum NEXT_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

.field public static final enum PREV_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

.field public static final enum SCROLL_TO_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

.field public static final enum SEARCH_WITHIN_BOOK:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

.field public static final enum SELECT_CHAPTER:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

.field public static final enum TRANSIENT:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;


# instance fields
.field private final mOceanName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2494
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    const-string v1, "CHOSE_BOOKMARK"

    const-string v2, "ChoseBookmark"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->CHOSE_BOOKMARK:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    .line 2495
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    const-string v1, "NEXT_PAGE"

    const-string v2, "NextPage"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->NEXT_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    .line 2496
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    const-string v1, "PREV_PAGE"

    const-string v2, "PrevPage"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->PREV_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    .line 2497
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    const-string v1, "SCROLL_TO_PAGE"

    const-string v2, "ScrollToPage"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->SCROLL_TO_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    .line 2498
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    const-string v1, "SEARCH_WITHIN_BOOK"

    const-string v2, "SearchWithinBook"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->SEARCH_WITHIN_BOOK:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    .line 2499
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    const-string v1, "SELECT_CHAPTER"

    const/4 v2, 0x5

    const-string v3, "SelectChapter"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->SELECT_CHAPTER:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    .line 2505
    new-instance v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    const-string v1, "TRANSIENT"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->TRANSIENT:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    .line 2492
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->CHOSE_BOOKMARK:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->NEXT_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->PREV_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->SCROLL_TO_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->SEARCH_WITHIN_BOOK:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->SELECT_CHAPTER:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->TRANSIENT:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->$VALUES:[Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "oceanName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2509
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2510
    iput-object p3, p0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->mOceanName:Ljava/lang/String;

    .line 2511
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;
    .registers 2
    .parameter

    .prologue
    .line 2492
    const-class v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;
    .registers 1

    .prologue
    .line 2492
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->$VALUES:[Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    return-object v0
.end method


# virtual methods
.method public getOceanName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->mOceanName:Ljava/lang/String;

    return-object v0
.end method
