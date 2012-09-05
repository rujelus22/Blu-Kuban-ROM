.class public final enum Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

.field public static final enum IGNORED_VALUE:Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

.field public static final enum NULL:Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;
    .annotation runtime Lcom/google/api/client/util/t;
    .end annotation
.end field

.field public static final enum OTHER_VALUE:Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;
    .annotation runtime Lcom/google/api/client/util/y;
        a = "other"
    .end annotation
.end field

.field public static final enum VALUE:Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;
    .annotation runtime Lcom/google/api/client/util/y;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 853
    new-instance v0, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    const-string v1, "VALUE"

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;->VALUE:Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    .line 855
    new-instance v0, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    const-string v1, "OTHER_VALUE"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;->OTHER_VALUE:Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    .line 857
    new-instance v0, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    const-string v1, "NULL"

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;->NULL:Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    .line 858
    new-instance v0, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    const-string v1, "IGNORED_VALUE"

    invoke-direct {v0, v1, v5}, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;->IGNORED_VALUE:Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    .line 851
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    sget-object v1, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;->VALUE:Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;->OTHER_VALUE:Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;->NULL:Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;->IGNORED_VALUE:Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;->$VALUES:[Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 851
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;
    .registers 2
    .parameter

    .prologue
    .line 851
    const-class v0, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;
    .registers 1

    .prologue
    .line 851
    sget-object v0, Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;->$VALUES:[Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    invoke-virtual {v0}, [Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/testing/json/AbstractJsonParserTest$E;

    return-object v0
.end method
