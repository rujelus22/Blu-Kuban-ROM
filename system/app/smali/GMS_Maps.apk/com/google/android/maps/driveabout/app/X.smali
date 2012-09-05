.class public Lcom/google/android/maps/driveabout/app/X;
.super Ljava/lang/Object;


# static fields
.field private static final h:Lar/d;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lu/P;

.field private final e:I

.field private f:F

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/Y;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/Y;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/app/X;->h:Lar/d;

    return-void
.end method

.method private constructor <init>(IIILu/P;I)V
    .registers 7

    const/high16 v0, -0x4080

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/maps/driveabout/app/X;->f:F

    iput v0, p0, Lcom/google/android/maps/driveabout/app/X;->g:F

    iput p1, p0, Lcom/google/android/maps/driveabout/app/X;->a:I

    iput p2, p0, Lcom/google/android/maps/driveabout/app/X;->b:I

    iput p3, p0, Lcom/google/android/maps/driveabout/app/X;->c:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/X;->d:Lu/P;

    iput p5, p0, Lcom/google/android/maps/driveabout/app/X;->e:I

    return-void
.end method

.method static a()Lcom/google/android/maps/driveabout/app/X;
    .registers 6

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/X;

    const/4 v1, 0x4

    const/4 v4, 0x0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/X;-><init>(IIILu/P;I)V

    return-object v0
.end method

.method static a(I)Lcom/google/android/maps/driveabout/app/X;
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/X;

    const/4 v1, 0x1

    const/4 v4, 0x0

    move v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/X;-><init>(IIILu/P;I)V

    return-object v0
.end method

.method static a(II)Lcom/google/android/maps/driveabout/app/X;
    .registers 8

    new-instance v0, Lcom/google/android/maps/driveabout/app/X;

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/X;-><init>(IIILu/P;I)V

    return-object v0
.end method

.method static a(Lu/P;I)Lcom/google/android/maps/driveabout/app/X;
    .registers 8

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/X;

    const/4 v1, 0x3

    move v3, v2

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/X;-><init>(IIILu/P;I)V

    return-object v0
.end method

.method static b(I)Lcom/google/android/maps/driveabout/app/X;
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/X;

    const/4 v1, 0x5

    const/4 v4, 0x0

    move v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/X;-><init>(IIILu/P;I)V

    return-object v0
.end method

.method static synthetic i()Lar/d;
    .registers 1

    sget-object v0, Lcom/google/android/maps/driveabout/app/X;->h:Lar/d;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/app/X;->f:F

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/X;->a:I

    return v0
.end method

.method public b(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/app/X;->g:F

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/X;->b:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/X;->c:I

    return v0
.end method

.method public e()Lu/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/X;->d:Lu/P;

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/X;->e:I

    return v0
.end method

.method public g()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/X;->f:F

    return v0
.end method

.method public h()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/X;->g:F

    return v0
.end method
