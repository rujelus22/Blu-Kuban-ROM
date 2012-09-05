.class public final enum Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;
.super Ljava/lang/Enum;
.source "HeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dsm/system/osp/HeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KindOfSignKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

.field public static final enum ACCESS_TOKEN:Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

.field public static final enum APP_SECRET:Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

.field public static final enum AUTH_TOKEN:Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    const-string v1, "APP_SECRET"

    invoke-direct {v0, v1, v2}, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;->APP_SECRET:Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    .line 17
    new-instance v0, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    const-string v1, "AUTH_TOKEN"

    invoke-direct {v0, v1, v3}, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;->AUTH_TOKEN:Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    .line 18
    new-instance v0, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    const-string v1, "ACCESS_TOKEN"

    invoke-direct {v0, v1, v4}, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;->ACCESS_TOKEN:Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    sget-object v1, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;->APP_SECRET:Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;->AUTH_TOKEN:Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;->ACCESS_TOKEN:Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;->$VALUES:[Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;
    .registers 2
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    return-object v0
.end method

.method public static values()[Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;->$VALUES:[Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    invoke-virtual {v0}, [Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    return-object v0
.end method
