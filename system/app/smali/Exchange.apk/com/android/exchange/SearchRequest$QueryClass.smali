.class public final enum Lcom/android/exchange/SearchRequest$QueryClass;
.super Ljava/lang/Enum;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/exchange/SearchRequest$QueryClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/exchange/SearchRequest$QueryClass;

.field public static final enum EMAIL:Lcom/android/exchange/SearchRequest$QueryClass;

.field public static final enum INVALID:Lcom/android/exchange/SearchRequest$QueryClass;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/android/exchange/SearchRequest$QueryClass;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SearchRequest$QueryClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$QueryClass;->EMAIL:Lcom/android/exchange/SearchRequest$QueryClass;

    new-instance v0, Lcom/android/exchange/SearchRequest$QueryClass;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/android/exchange/SearchRequest$QueryClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$QueryClass;->INVALID:Lcom/android/exchange/SearchRequest$QueryClass;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/exchange/SearchRequest$QueryClass;

    sget-object v1, Lcom/android/exchange/SearchRequest$QueryClass;->EMAIL:Lcom/android/exchange/SearchRequest$QueryClass;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exchange/SearchRequest$QueryClass;->INVALID:Lcom/android/exchange/SearchRequest$QueryClass;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/exchange/SearchRequest$QueryClass;->$VALUES:[Lcom/android/exchange/SearchRequest$QueryClass;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/exchange/SearchRequest$QueryClass;
    .registers 2
    .parameter

    .prologue
    .line 59
    const-class v0, Lcom/android/exchange/SearchRequest$QueryClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SearchRequest$QueryClass;

    return-object v0
.end method

.method public static values()[Lcom/android/exchange/SearchRequest$QueryClass;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/exchange/SearchRequest$QueryClass;->$VALUES:[Lcom/android/exchange/SearchRequest$QueryClass;

    invoke-virtual {v0}, [Lcom/android/exchange/SearchRequest$QueryClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/exchange/SearchRequest$QueryClass;

    return-object v0
.end method
