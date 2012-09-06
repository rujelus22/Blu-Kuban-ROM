.class public abstract Lde/innosystec/unrar/unpack/ppm/d;
.super Ljava/lang/Object;


# static fields
.field static final synthetic e:Z


# instance fields
.field protected c:[B

.field protected d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lde/innosystec/unrar/unpack/ppm/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lde/innosystec/unrar/unpack/ppm/d;->e:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/innosystec/unrar/unpack/ppm/d;->c:[B

    return-void
.end method


# virtual methods
.method public c(I)V
    .registers 3

    sget-boolean v0, Lde/innosystec/unrar/unpack/ppm/d;->e:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/d;->c:[B

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    sget-boolean v0, Lde/innosystec/unrar/unpack/ppm/d;->e:Z

    if-nez v0, :cond_1f

    if-ltz p1, :cond_19

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/d;->c:[B

    array-length v0, v0

    if-lt p1, v0, :cond_1f

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_1f
    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/d;->d:I

    return-void
.end method

.method public e()I
    .registers 2

    sget-boolean v0, Lde/innosystec/unrar/unpack/ppm/d;->e:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/d;->c:[B

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/d;->d:I

    return v0
.end method
