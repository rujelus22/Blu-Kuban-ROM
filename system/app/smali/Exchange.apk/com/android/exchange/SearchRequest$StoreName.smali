.class public final enum Lcom/android/exchange/SearchRequest$StoreName;
.super Ljava/lang/Enum;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/exchange/SearchRequest$StoreName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/exchange/SearchRequest$StoreName;

.field public static final enum INVALID:Lcom/android/exchange/SearchRequest$StoreName;

.field public static final enum MAILBOX:Lcom/android/exchange/SearchRequest$StoreName;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/android/exchange/SearchRequest$StoreName;

    const-string v1, "MAILBOX"

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/SearchRequest$StoreName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$StoreName;->MAILBOX:Lcom/android/exchange/SearchRequest$StoreName;

    new-instance v0, Lcom/android/exchange/SearchRequest$StoreName;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/android/exchange/SearchRequest$StoreName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/exchange/SearchRequest$StoreName;->INVALID:Lcom/android/exchange/SearchRequest$StoreName;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/exchange/SearchRequest$StoreName;

    sget-object v1, Lcom/android/exchange/SearchRequest$StoreName;->MAILBOX:Lcom/android/exchange/SearchRequest$StoreName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/exchange/SearchRequest$StoreName;->INVALID:Lcom/android/exchange/SearchRequest$StoreName;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/exchange/SearchRequest$StoreName;->$VALUES:[Lcom/android/exchange/SearchRequest$StoreName;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/exchange/SearchRequest$StoreName;
    .registers 2
    .parameter

    .prologue
    .line 47
    const-class v0, Lcom/android/exchange/SearchRequest$StoreName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SearchRequest$StoreName;

    return-object v0
.end method

.method public static values()[Lcom/android/exchange/SearchRequest$StoreName;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/exchange/SearchRequest$StoreName;->$VALUES:[Lcom/android/exchange/SearchRequest$StoreName;

    invoke-virtual {v0}, [Lcom/android/exchange/SearchRequest$StoreName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/exchange/SearchRequest$StoreName;

    return-object v0
.end method
