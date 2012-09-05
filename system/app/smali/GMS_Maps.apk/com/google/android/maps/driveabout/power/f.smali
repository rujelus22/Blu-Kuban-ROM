.class public Lcom/google/android/maps/driveabout/power/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/power/i;

.field private b:Landroid/view/Window;

.field private c:Lcom/google/android/maps/driveabout/power/e;

.field private d:F

.field private e:Ls/o;

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/power/f;->a:Lcom/google/android/maps/driveabout/power/i;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/power/f;->b:Landroid/view/Window;

    new-instance v0, Lcom/google/android/maps/driveabout/power/h;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/power/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/power/f;->c:Lcom/google/android/maps/driveabout/power/e;

    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/google/android/maps/driveabout/power/f;->d:F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/power/f;->e:Ls/o;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/android/maps/driveabout/power/f;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Window;)Lcom/google/android/maps/driveabout/power/f;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/power/f;->b:Landroid/view/Window;

    return-object p0
.end method

.method public a(Lcom/google/android/maps/driveabout/power/e;)Lcom/google/android/maps/driveabout/power/f;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/power/f;->c:Lcom/google/android/maps/driveabout/power/e;

    return-object p0
.end method

.method public a(Lcom/google/android/maps/driveabout/power/i;)Lcom/google/android/maps/driveabout/power/f;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/power/f;->a:Lcom/google/android/maps/driveabout/power/i;

    return-object p0
.end method

.method public a()V
    .registers 9

    new-instance v0, Lcom/google/android/maps/driveabout/power/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/power/f;->a:Lcom/google/android/maps/driveabout/power/i;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/power/f;->b:Landroid/view/Window;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/power/f;->c:Lcom/google/android/maps/driveabout/power/e;

    iget v4, p0, Lcom/google/android/maps/driveabout/power/f;->d:F

    iget-object v5, p0, Lcom/google/android/maps/driveabout/power/f;->e:Ls/o;

    iget v6, p0, Lcom/google/android/maps/driveabout/power/f;->f:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/power/a;-><init>(Lcom/google/android/maps/driveabout/power/i;Landroid/view/Window;Lcom/google/android/maps/driveabout/power/e;FLs/o;ILcom/google/android/maps/driveabout/power/b;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->e(Lcom/google/android/maps/driveabout/power/a;)V

    return-void
.end method
