.class public final enum LaW/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LaW/f;

.field public static final enum b:LaW/f;

.field private static final synthetic e:[LaW/f;


# instance fields
.field private final c:F

.field private final d:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, LaW/f;

    const-string v1, "WIND_SLOW"

    const/high16 v2, 0x3f80

    const/high16 v3, 0x4000

    invoke-direct {v0, v1, v4, v2, v3}, LaW/f;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, LaW/f;->a:LaW/f;

    .line 12
    new-instance v0, LaW/f;

    const-string v1, "WIND_FAST"

    const/high16 v2, 0x4040

    const/high16 v3, 0x40c0

    invoke-direct {v0, v1, v5, v2, v3}, LaW/f;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, LaW/f;->b:LaW/f;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [LaW/f;

    sget-object v1, LaW/f;->a:LaW/f;

    aput-object v1, v0, v4

    sget-object v1, LaW/f;->b:LaW/f;

    aput-object v1, v0, v5

    sput-object v0, LaW/f;->e:[LaW/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, LaW/f;->c:F

    .line 19
    iput p4, p0, LaW/f;->d:F

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaW/f;
    .registers 2
    .parameter

    .prologue
    .line 10
    const-class v0, LaW/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaW/f;

    return-object v0
.end method

.method public static values()[LaW/f;
    .registers 1

    .prologue
    .line 10
    sget-object v0, LaW/f;->e:[LaW/f;

    invoke-virtual {v0}, [LaW/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaW/f;

    return-object v0
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 23
    iget v0, p0, LaW/f;->c:F

    return v0
.end method

.method public b()F
    .registers 2

    .prologue
    .line 27
    iget v0, p0, LaW/f;->d:F

    return v0
.end method
