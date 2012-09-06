.class public Lcom/google/android/maps/driveabout/app/W;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:Ljava/util/Comparator;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:I

.field private final f:Lo/P;

.field private final g:I

.field private h:F

.field private i:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 210
    new-instance v0, Lcom/google/android/maps/driveabout/app/X;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/X;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/app/W;->j:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(IIZIILo/P;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, -0x4080

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v0, p0, Lcom/google/android/maps/driveabout/app/W;->h:F

    .line 102
    iput v0, p0, Lcom/google/android/maps/driveabout/app/W;->i:F

    .line 118
    iput p1, p0, Lcom/google/android/maps/driveabout/app/W;->a:I

    .line 119
    iput p2, p0, Lcom/google/android/maps/driveabout/app/W;->b:I

    .line 120
    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/app/W;->c:Z

    .line 121
    iput p4, p0, Lcom/google/android/maps/driveabout/app/W;->d:I

    .line 122
    iput p5, p0, Lcom/google/android/maps/driveabout/app/W;->e:I

    .line 123
    iput-object p6, p0, Lcom/google/android/maps/driveabout/app/W;->f:Lo/P;

    .line 124
    iput p7, p0, Lcom/google/android/maps/driveabout/app/W;->g:I

    .line 125
    return-void
.end method

.method static a()Lcom/google/android/maps/driveabout/app/W;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 149
    new-instance v0, Lcom/google/android/maps/driveabout/app/W;

    const/4 v1, 0x4

    const/4 v6, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/W;-><init>(IIZIILo/P;I)V

    return-object v0
.end method

.method static a(I)Lcom/google/android/maps/driveabout/app/W;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 129
    new-instance v0, Lcom/google/android/maps/driveabout/app/W;

    const/4 v1, 0x1

    const/4 v6, 0x0

    move v2, p0

    move v4, v3

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/W;-><init>(IIZIILo/P;I)V

    return-object v0
.end method

.method static a(II)Lcom/google/android/maps/driveabout/app/W;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 139
    new-instance v0, Lcom/google/android/maps/driveabout/app/W;

    const/4 v1, 0x2

    const/4 v6, 0x0

    move v2, p0

    move v4, p1

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/W;-><init>(IIZIILo/P;I)V

    return-object v0
.end method

.method static a(Lo/P;I)Lcom/google/android/maps/driveabout/app/W;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 144
    new-instance v0, Lcom/google/android/maps/driveabout/app/W;

    const/4 v1, 0x3

    move v3, v2

    move v4, v2

    move v5, v2

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/W;-><init>(IIZIILo/P;I)V

    return-object v0
.end method

.method static b(I)Lcom/google/android/maps/driveabout/app/W;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 134
    new-instance v0, Lcom/google/android/maps/driveabout/app/W;

    const/4 v6, 0x0

    move v2, p0

    move v3, v1

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/W;-><init>(IIZIILo/P;I)V

    return-object v0
.end method

.method static c(I)Lcom/google/android/maps/driveabout/app/W;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 154
    new-instance v0, Lcom/google/android/maps/driveabout/app/W;

    const/4 v1, 0x5

    const/4 v6, 0x0

    move v2, p0

    move v4, v3

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/W;-><init>(IIZIILo/P;I)V

    return-object v0
.end method

.method static d(I)Lcom/google/android/maps/driveabout/app/W;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 159
    new-instance v0, Lcom/google/android/maps/driveabout/app/W;

    const/4 v1, 0x6

    const/4 v6, 0x0

    move v3, v2

    move v4, v2

    move v5, p0

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/W;-><init>(IIZIILo/P;I)V

    return-object v0
.end method

.method static synthetic k()Ljava/util/Comparator;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/maps/driveabout/app/W;->j:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .registers 2
    .parameter

    .prologue
    .line 192
    iput p1, p0, Lcom/google/android/maps/driveabout/app/W;->h:F

    .line 193
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Lcom/google/android/maps/driveabout/app/W;->a:I

    return v0
.end method

.method public b(F)V
    .registers 2
    .parameter

    .prologue
    .line 204
    iput p1, p0, Lcom/google/android/maps/driveabout/app/W;->i:F

    .line 205
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/maps/driveabout/app/W;->b:I

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/W;->c:Z

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/maps/driveabout/app/W;->d:I

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/google/android/maps/driveabout/app/W;->e:I

    return v0
.end method

.method public g()Lo/P;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/W;->f:Lo/P;

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/google/android/maps/driveabout/app/W;->g:I

    return v0
.end method

.method public i()F
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/google/android/maps/driveabout/app/W;->h:F

    return v0
.end method

.method public j()F
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lcom/google/android/maps/driveabout/app/W;->i:F

    return v0
.end method
