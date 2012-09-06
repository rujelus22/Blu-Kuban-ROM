.class public final enum LaW/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LaW/e;

.field public static final enum b:LaW/e;

.field public static final enum c:LaW/e;

.field public static final enum d:LaW/e;

.field private static final synthetic g:[LaW/e;


# instance fields
.field private final e:F

.field private final f:F


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x3f4ccccd

    .line 12
    new-instance v0, LaW/e;

    const-string v1, "LIGHTNING_FREQUENT"

    const v2, 0x3f7d70a4

    invoke-direct {v0, v1, v4, v2, v3}, LaW/e;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, LaW/e;->a:LaW/e;

    .line 13
    new-instance v0, LaW/e;

    const-string v1, "LIGHTNING_NORMAL"

    const v2, 0x3f7fbe77

    invoke-direct {v0, v1, v5, v2, v3}, LaW/e;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, LaW/e;->b:LaW/e;

    .line 14
    new-instance v0, LaW/e;

    const-string v1, "LIGHTNING_RARE"

    const v2, 0x3f7ff972

    invoke-direct {v0, v1, v6, v2, v3}, LaW/e;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, LaW/e;->c:LaW/e;

    .line 17
    new-instance v0, LaW/e;

    const-string v1, "LIGHTNING_NONE"

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v1, v7, v2, v3}, LaW/e;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, LaW/e;->d:LaW/e;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [LaW/e;

    sget-object v1, LaW/e;->a:LaW/e;

    aput-object v1, v0, v4

    sget-object v1, LaW/e;->b:LaW/e;

    aput-object v1, v0, v5

    sget-object v1, LaW/e;->c:LaW/e;

    aput-object v1, v0, v6

    sget-object v1, LaW/e;->d:LaW/e;

    aput-object v1, v0, v7

    sput-object v0, LaW/e;->g:[LaW/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p4, p0, LaW/e;->f:F

    .line 30
    iput p3, p0, LaW/e;->e:F

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaW/e;
    .registers 2
    .parameter

    .prologue
    .line 10
    const-class v0, LaW/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaW/e;

    return-object v0
.end method

.method public static values()[LaW/e;
    .registers 1

    .prologue
    .line 10
    sget-object v0, LaW/e;->g:[LaW/e;

    invoke-virtual {v0}, [LaW/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaW/e;

    return-object v0
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 38
    iget v0, p0, LaW/e;->f:F

    return v0
.end method
