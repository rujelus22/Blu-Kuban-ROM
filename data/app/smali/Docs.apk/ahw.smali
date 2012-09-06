.class public abstract enum Lahw;
.super Ljava/lang/Enum;
.source "RemovalCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lahw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lahw;

.field private static final synthetic a:[Lahw;

.field public static final enum b:Lahw;

.field public static final enum c:Lahw;

.field public static final enum d:Lahw;

.field public static final enum e:Lahw;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lahx;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1, v2}, Lahx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahw;->a:Lahw;

    .line 51
    new-instance v0, Lahy;

    const-string v1, "REPLACED"

    invoke-direct {v0, v1, v3}, Lahy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahw;->b:Lahw;

    .line 63
    new-instance v0, Lahz;

    const-string v1, "COLLECTED"

    invoke-direct {v0, v1, v4}, Lahz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahw;->c:Lahw;

    .line 74
    new-instance v0, LahA;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v5}, LahA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahw;->d:Lahw;

    .line 85
    new-instance v0, LahB;

    const-string v1, "SIZE"

    invoke-direct {v0, v1, v6}, LahB;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahw;->e:Lahw;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lahw;

    sget-object v1, Lahw;->a:Lahw;

    aput-object v1, v0, v2

    sget-object v1, Lahw;->b:Lahw;

    aput-object v1, v0, v3

    sget-object v1, Lahw;->c:Lahw;

    aput-object v1, v0, v4

    sget-object v1, Lahw;->d:Lahw;

    aput-object v1, v0, v5

    sget-object v1, Lahw;->e:Lahw;

    aput-object v1, v0, v6

    sput-object v0, Lahw;->a:[Lahw;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILahx;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lahw;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lahw;
    .registers 2
    .parameter

    .prologue
    .line 31
    const-class v0, Lahw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lahw;

    return-object v0
.end method

.method public static values()[Lahw;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lahw;->a:[Lahw;

    invoke-virtual {v0}, [Lahw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lahw;

    return-object v0
.end method


# virtual methods
.method abstract a()Z
.end method
