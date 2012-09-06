.class public final enum Lr/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lr/e;

.field public static final enum b:Lr/e;

.field public static final enum c:Lr/e;

.field public static final enum d:Lr/e;

.field public static final enum e:Lr/e;

.field private static final synthetic g:[Lr/e;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 120
    new-instance v0, Lr/e;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lr/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lr/e;->a:Lr/e;

    .line 126
    new-instance v0, Lr/e;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3, v3}, Lr/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lr/e;->b:Lr/e;

    .line 133
    new-instance v0, Lr/e;

    const-string v1, "PREFETCH_OFFLINE_MAP"

    invoke-direct {v0, v1, v6, v4}, Lr/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lr/e;->c:Lr/e;

    .line 140
    new-instance v0, Lr/e;

    const-string v1, "PREFETCH_ROUTE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lr/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lr/e;->d:Lr/e;

    .line 149
    new-instance v0, Lr/e;

    const-string v1, "PREFETCH_AREA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v4, v2}, Lr/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lr/e;->e:Lr/e;

    .line 119
    const/4 v0, 0x5

    new-array v0, v0, [Lr/e;

    sget-object v1, Lr/e;->a:Lr/e;

    aput-object v1, v0, v5

    sget-object v1, Lr/e;->b:Lr/e;

    aput-object v1, v0, v3

    sget-object v1, Lr/e;->c:Lr/e;

    aput-object v1, v0, v6

    sget-object v1, Lr/e;->d:Lr/e;

    aput-object v1, v0, v7

    sget-object v1, Lr/e;->e:Lr/e;

    aput-object v1, v0, v4

    sput-object v0, Lr/e;->g:[Lr/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput p3, p0, Lr/e;->f:I

    .line 155
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr/e;
    .registers 2
    .parameter

    .prologue
    .line 119
    const-class v0, Lr/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lr/e;

    return-object v0
.end method

.method public static values()[Lr/e;
    .registers 1

    .prologue
    .line 119
    sget-object v0, Lr/e;->g:[Lr/e;

    invoke-virtual {v0}, [Lr/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Lr/e;->f:I

    return v0
.end method
