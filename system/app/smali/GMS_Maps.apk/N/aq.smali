.class public abstract enum Ln/aq;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Ln/aq;

.field public static final enum b:Ln/aq;

.field public static final enum c:Ln/aq;

.field public static final enum d:Ln/aq;

.field private static final synthetic e:[Ln/aq;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Ln/ar;

    const-string v1, "SPOTLIGHT"

    invoke-direct {v0, v1, v2}, Ln/ar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln/aq;->a:Ln/aq;

    .line 41
    new-instance v0, Ln/as;

    const-string v1, "HIGHLIGHT"

    invoke-direct {v0, v1, v3}, Ln/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln/aq;->b:Ln/aq;

    .line 52
    new-instance v0, Ln/at;

    const-string v1, "INDOOR"

    invoke-direct {v0, v1, v4}, Ln/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln/aq;->c:Ln/aq;

    .line 65
    new-instance v0, Ln/au;

    const-string v1, "TRANSIT"

    invoke-direct {v0, v1, v5}, Ln/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln/aq;->d:Ln/aq;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Ln/aq;

    sget-object v1, Ln/aq;->a:Ln/aq;

    aput-object v1, v0, v2

    sget-object v1, Ln/aq;->b:Ln/aq;

    aput-object v1, v0, v3

    sget-object v1, Ln/aq;->c:Ln/aq;

    aput-object v1, v0, v4

    sget-object v1, Ln/aq;->d:Ln/aq;

    aput-object v1, v0, v5

    sput-object v0, Ln/aq;->e:[Ln/aq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILn/ap;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ln/aq;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln/aq;
    .registers 2
    .parameter

    .prologue
    .line 28
    const-class v0, Ln/aq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ln/aq;

    return-object v0
.end method

.method public static values()[Ln/aq;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Ln/aq;->e:[Ln/aq;

    invoke-virtual {v0}, [Ln/aq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln/aq;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/ao;
.end method
