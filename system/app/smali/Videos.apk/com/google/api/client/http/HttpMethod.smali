.class public final enum Lcom/google/api/client/http/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/api/client/http/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/http/HttpMethod;

.field public static final enum DELETE:Lcom/google/api/client/http/HttpMethod;

.field public static final enum GET:Lcom/google/api/client/http/HttpMethod;

.field public static final enum HEAD:Lcom/google/api/client/http/HttpMethod;

.field public static final enum PATCH:Lcom/google/api/client/http/HttpMethod;

.field public static final enum POST:Lcom/google/api/client/http/HttpMethod;

.field public static final enum PUT:Lcom/google/api/client/http/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/google/api/client/http/HttpMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/http/HttpMethod;->DELETE:Lcom/google/api/client/http/HttpMethod;

    new-instance v0, Lcom/google/api/client/http/HttpMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    new-instance v0, Lcom/google/api/client/http/HttpMethod;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v5}, Lcom/google/api/client/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/http/HttpMethod;->HEAD:Lcom/google/api/client/http/HttpMethod;

    new-instance v0, Lcom/google/api/client/http/HttpMethod;

    const-string v1, "PATCH"

    invoke-direct {v0, v1, v6}, Lcom/google/api/client/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    new-instance v0, Lcom/google/api/client/http/HttpMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v7}, Lcom/google/api/client/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    new-instance v0, Lcom/google/api/client/http/HttpMethod;

    const-string v1, "POST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/api/client/http/HttpMethod;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->DELETE:Lcom/google/api/client/http/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->HEAD:Lcom/google/api/client/http/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/api/client/http/HttpMethod;->$VALUES:[Lcom/google/api/client/http/HttpMethod;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/http/HttpMethod;
    .registers 2
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/google/api/client/http/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/http/HttpMethod;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->$VALUES:[Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v0}, [Lcom/google/api/client/http/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/http/HttpMethod;

    return-object v0
.end method
