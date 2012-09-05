.class Lu/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(III)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lu/l;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu/l;->a:I

    iput p2, p0, Lu/l;->b:I

    iput-boolean p4, p0, Lu/l;->d:Z

    if-eqz p3, :cond_e

    iput p3, p0, Lu/l;->c:I

    :goto_d
    return-void

    :cond_e
    const v0, 0x7f020140

    iput v0, p0, Lu/l;->c:I

    goto :goto_d
.end method

.method static synthetic a(Lu/l;)I
    .registers 2

    iget v0, p0, Lu/l;->c:I

    return v0
.end method

.method static synthetic b(Lu/l;)Z
    .registers 2

    iget-boolean v0, p0, Lu/l;->d:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Lu/m;

    invoke-direct {v0, p1, p0}, Lu/m;-><init>(Landroid/content/Context;Lu/l;)V

    return-object v0
.end method

.method public a(III)Z
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Lu/l;->a:I

    if-eq v1, p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v1, p0, Lu/l;->b:I

    if-eqz v1, :cond_e

    iget v1, p0, Lu/l;->b:I

    if-ne v1, p2, :cond_5

    :cond_e
    const/4 v0, 0x1

    goto :goto_5
.end method
