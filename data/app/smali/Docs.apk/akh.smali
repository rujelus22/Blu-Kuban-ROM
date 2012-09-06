.class abstract enum Lakh;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lakh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lakh;

.field private static final synthetic a:[Lakh;

.field public static final enum b:Lakh;

.field public static final enum c:Lakh;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    new-instance v0, Laki;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v2}, Laki;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakh;->a:Lakh;

    .line 309
    new-instance v0, Lakj;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Lakj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakh;->b:Lakh;

    .line 322
    new-instance v0, Lakk;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v4}, Lakk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakh;->c:Lakh;

    .line 290
    const/4 v0, 0x3

    new-array v0, v0, [Lakh;

    sget-object v1, Lakh;->a:Lakh;

    aput-object v1, v0, v2

    sget-object v1, Lakh;->b:Lakh;

    aput-object v1, v0, v3

    sget-object v1, Lakh;->c:Lakh;

    aput-object v1, v0, v4

    sput-object v0, Lakh;->a:[Lakh;

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
    .line 290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILajy;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lakh;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lakh;
    .registers 2
    .parameter

    .prologue
    .line 290
    const-class v0, Lakh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lakh;

    return-object v0
.end method

.method public static values()[Lakh;
    .registers 1

    .prologue
    .line 290
    sget-object v0, Lakh;->a:[Lakh;

    invoke-virtual {v0}, [Lakh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lakh;

    return-object v0
.end method


# virtual methods
.method abstract a()LafD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LafD",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract a(Lakb;Laka;Ljava/lang/Object;)Lakr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lakb",
            "<TK;TV;>;",
            "Laka",
            "<TK;TV;>;TV;)",
            "Lakr",
            "<TK;TV;>;"
        }
    .end annotation
.end method
