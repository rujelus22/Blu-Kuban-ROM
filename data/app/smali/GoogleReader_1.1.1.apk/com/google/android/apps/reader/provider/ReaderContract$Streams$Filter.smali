.class public final enum Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;
.super Ljava/lang/Enum;
.source "ReaderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/provider/ReaderContract$Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

.field public static final enum ACCOUNT:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

.field public static final enum FOLDERS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

.field public static final enum FOLLOWING:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

.field public static final enum LABELS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

.field public static final enum NONE:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

.field public static final enum ROOT:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

.field public static final enum SUBSCRIPTIONS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

.field public static final enum TAGS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1368
    new-instance v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->NONE:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    .line 1372
    new-instance v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    const-string v1, "ROOT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->ROOT:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    .line 1377
    new-instance v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    const-string v1, "ACCOUNT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->ACCOUNT:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    .line 1381
    new-instance v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    const-string v1, "FOLLOWING"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->FOLLOWING:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    .line 1386
    new-instance v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    const-string v1, "FOLDERS"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->FOLDERS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    .line 1390
    new-instance v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    const-string v1, "TAGS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->TAGS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    .line 1394
    new-instance v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    const-string v1, "LABELS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->LABELS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    .line 1398
    new-instance v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    const-string v1, "SUBSCRIPTIONS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->SUBSCRIPTIONS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    .line 1364
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->NONE:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->ROOT:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->ACCOUNT:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->FOLLOWING:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->FOLDERS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->TAGS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->LABELS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->SUBSCRIPTIONS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->$VALUES:[Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

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
    .line 1364
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;
    .registers 2
    .parameter

    .prologue
    .line 1364
    const-class v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;
    .registers 1

    .prologue
    .line 1364
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->$VALUES:[Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    invoke-virtual {v0}, [Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    return-object v0
.end method
