.class abstract enum Lajp;
.super Ljava/lang/Enum;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lajp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lajp;

.field private static final synthetic a:[Lajp;

.field public static final enum b:Lajp;

.field public static final enum c:Lajp;

.field public static final enum d:Lajp;

.field public static final enum e:Lajp;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 776
    new-instance v0, Lajq;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1, v2}, Lajq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lajp;->a:Lajp;

    .line 789
    new-instance v0, Lajr;

    const-string v1, "REPLACED"

    invoke-direct {v0, v1, v3}, Lajr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lajp;->b:Lajp;

    .line 801
    new-instance v0, Lajs;

    const-string v1, "COLLECTED"

    invoke-direct {v0, v1, v4}, Lajs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lajp;->c:Lajp;

    .line 812
    new-instance v0, Lajt;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v5}, Lajt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lajp;->d:Lajp;

    .line 823
    new-instance v0, Laju;

    const-string v1, "SIZE"

    invoke-direct {v0, v1, v6}, Laju;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lajp;->e:Lajp;

    .line 771
    const/4 v0, 0x5

    new-array v0, v0, [Lajp;

    sget-object v1, Lajp;->a:Lajp;

    aput-object v1, v0, v2

    sget-object v1, Lajp;->b:Lajp;

    aput-object v1, v0, v3

    sget-object v1, Lajp;->c:Lajp;

    aput-object v1, v0, v4

    sget-object v1, Lajp;->d:Lajp;

    aput-object v1, v0, v5

    sget-object v1, Lajp;->e:Lajp;

    aput-object v1, v0, v6

    sput-object v0, Lajp;->a:[Lajp;

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
    .line 771
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILajm;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 771
    invoke-direct {p0, p1, p2}, Lajp;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lajp;
    .registers 2
    .parameter

    .prologue
    .line 771
    const-class v0, Lajp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lajp;

    return-object v0
.end method

.method public static values()[Lajp;
    .registers 1

    .prologue
    .line 771
    sget-object v0, Lajp;->a:[Lajp;

    invoke-virtual {v0}, [Lajp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lajp;

    return-object v0
.end method
