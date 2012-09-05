.class public final enum Lcom/vlingo/client/util/ContactUtil$SortType;
.super Ljava/lang/Enum;
.source "ContactUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/util/ContactUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/util/ContactUtil$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/util/ContactUtil$SortType;

.field public static final enum NO_SORT:Lcom/vlingo/client/util/ContactUtil$SortType;

.field public static final enum SORT_BY_LAST_CONTACTED:Lcom/vlingo/client/util/ContactUtil$SortType;

.field public static final enum SORT_BY_NAME:Lcom/vlingo/client/util/ContactUtil$SortType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/vlingo/client/util/ContactUtil$SortType;

    const-string v1, "SORT_BY_NAME"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/util/ContactUtil$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/util/ContactUtil$SortType;->SORT_BY_NAME:Lcom/vlingo/client/util/ContactUtil$SortType;

    new-instance v0, Lcom/vlingo/client/util/ContactUtil$SortType;

    const-string v1, "SORT_BY_LAST_CONTACTED"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/util/ContactUtil$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/util/ContactUtil$SortType;->SORT_BY_LAST_CONTACTED:Lcom/vlingo/client/util/ContactUtil$SortType;

    new-instance v0, Lcom/vlingo/client/util/ContactUtil$SortType;

    const-string v1, "NO_SORT"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/util/ContactUtil$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/util/ContactUtil$SortType;->NO_SORT:Lcom/vlingo/client/util/ContactUtil$SortType;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vlingo/client/util/ContactUtil$SortType;

    sget-object v1, Lcom/vlingo/client/util/ContactUtil$SortType;->SORT_BY_NAME:Lcom/vlingo/client/util/ContactUtil$SortType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/util/ContactUtil$SortType;->SORT_BY_LAST_CONTACTED:Lcom/vlingo/client/util/ContactUtil$SortType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/util/ContactUtil$SortType;->NO_SORT:Lcom/vlingo/client/util/ContactUtil$SortType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vlingo/client/util/ContactUtil$SortType;->$VALUES:[Lcom/vlingo/client/util/ContactUtil$SortType;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/util/ContactUtil$SortType;
    .registers 2
    .parameter "name"

    .prologue
    .line 40
    const-class v0, Lcom/vlingo/client/util/ContactUtil$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/util/ContactUtil$SortType;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/util/ContactUtil$SortType;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/vlingo/client/util/ContactUtil$SortType;->$VALUES:[Lcom/vlingo/client/util/ContactUtil$SortType;

    invoke-virtual {v0}, [Lcom/vlingo/client/util/ContactUtil$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/util/ContactUtil$SortType;

    return-object v0
.end method
