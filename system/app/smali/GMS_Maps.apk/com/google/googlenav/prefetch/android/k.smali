.class Lcom/google/googlenav/prefetch/android/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/prefetch/android/y;

.field private b:I

.field private c:I

.field private d:LaD/g;

.field private e:LaD/h;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/googlenav/prefetch/android/y;ILaD/g;LaD/h;J)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/k;->a:Lcom/google/googlenav/prefetch/android/y;

    .line 820
    iput p2, p0, Lcom/google/googlenav/prefetch/android/k;->b:I

    .line 821
    invoke-interface {p1}, Lcom/google/googlenav/prefetch/android/y;->l()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/prefetch/android/k;->c:I

    .line 822
    iput-object p3, p0, Lcom/google/googlenav/prefetch/android/k;->d:LaD/g;

    .line 823
    iput-object p4, p0, Lcom/google/googlenav/prefetch/android/k;->e:LaD/h;

    .line 824
    iput-wide p5, p0, Lcom/google/googlenav/prefetch/android/k;->f:J

    .line 825
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/k;)LaD/g;
    .registers 2
    .parameter

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/k;->d:LaD/g;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/prefetch/android/k;)LaD/h;
    .registers 2
    .parameter

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/k;->e:LaD/h;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/prefetch/android/k;)Lcom/google/googlenav/prefetch/android/y;
    .registers 2
    .parameter

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/k;->a:Lcom/google/googlenav/prefetch/android/y;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/prefetch/android/y;
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/k;->a:Lcom/google/googlenav/prefetch/android/y;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 832
    iget v0, p0, Lcom/google/googlenav/prefetch/android/k;->b:I

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 836
    iget v0, p0, Lcom/google/googlenav/prefetch/android/k;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/k;->b:I

    .line 837
    return-void
.end method

.method public d()LaD/g;
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/k;->d:LaD/g;

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 844
    iget v0, p0, Lcom/google/googlenav/prefetch/android/k;->c:I

    return v0
.end method

.method public f()LaD/h;
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/k;->e:LaD/h;

    return-object v0
.end method

.method public g()J
    .registers 3

    .prologue
    .line 852
    iget-wide v0, p0, Lcom/google/googlenav/prefetch/android/k;->f:J

    return-wide v0
.end method
