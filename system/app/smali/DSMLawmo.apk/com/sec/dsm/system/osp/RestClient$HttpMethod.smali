.class public final enum Lcom/sec/dsm/system/osp/RestClient$HttpMethod;
.super Ljava/lang/Enum;
.source "RestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dsm/system/osp/RestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/dsm/system/osp/RestClient$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

.field public static final enum DELETE:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

.field public static final enum GET:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

.field public static final enum POST:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

.field public static final enum PUT:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v2}, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->POST:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    .line 53
    new-instance v0, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->GET:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    .line 54
    new-instance v0, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->PUT:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    .line 55
    new-instance v0, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->DELETE:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    sget-object v1, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->POST:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->GET:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->PUT:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->DELETE:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->$VALUES:[Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/dsm/system/osp/RestClient$HttpMethod;
    .registers 2
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/sec/dsm/system/osp/RestClient$HttpMethod;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->$VALUES:[Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    invoke-virtual {v0}, [Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    return-object v0
.end method
