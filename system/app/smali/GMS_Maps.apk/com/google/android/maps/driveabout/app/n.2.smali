.class public Lcom/google/android/maps/driveabout/app/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1297
    iput p1, p0, Lcom/google/android/maps/driveabout/app/N;->a:I

    .line 1298
    iput p2, p0, Lcom/google/android/maps/driveabout/app/N;->b:I

    .line 1299
    iput p3, p0, Lcom/google/android/maps/driveabout/app/N;->c:I

    .line 1300
    iput p4, p0, Lcom/google/android/maps/driveabout/app/N;->d:I

    .line 1301
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/N;)I
    .registers 2
    .parameter

    .prologue
    .line 1290
    iget v0, p0, Lcom/google/android/maps/driveabout/app/N;->d:I

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1313
    iget v0, p0, Lcom/google/android/maps/driveabout/app/N;->c:I

    return v0
.end method

.method public a(Lcom/google/googlenav/j;Lat/B;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1305
    iget v1, p0, Lcom/google/android/maps/driveabout/app/N;->c:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    invoke-static {}, Lo/O;->a()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1308
    :cond_c
    :goto_c
    return v0

    :cond_d
    iget v1, p0, Lcom/google/android/maps/driveabout/app/N;->d:I

    invoke-virtual {p1, v1, p2, v0}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    goto :goto_c
.end method

.method public b()I
    .registers 2

    .prologue
    .line 1317
    iget v0, p0, Lcom/google/android/maps/driveabout/app/N;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 1321
    iget v0, p0, Lcom/google/android/maps/driveabout/app/N;->b:I

    return v0
.end method
