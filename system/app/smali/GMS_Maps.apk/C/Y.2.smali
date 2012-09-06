.class LC/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LC/z;

.field private b:LC/z;

.field private c:LC/z;

.field private d:LC/R;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public a()LC/z;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, LC/Y;->a:LC/z;

    return-object v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 72
    iput-wide p1, p0, LC/Y;->f:J

    .line 73
    return-void
.end method

.method public a(LC/z;)V
    .registers 5
    .parameter

    .prologue
    .line 81
    iget-object v0, p1, LC/z;->a:LC/R;

    .line 82
    iget-object v1, p1, LC/z;->b:LC/A;

    sget-object v2, LC/A;->a:LC/A;

    if-ne v1, v2, :cond_2e

    .line 83
    iput-object v0, p0, LC/Y;->d:LC/R;

    .line 84
    iget-object v1, p0, LC/Y;->b:LC/z;

    if-eqz v1, :cond_1e

    iget-object v1, p0, LC/Y;->b:LC/z;

    iget-object v1, v1, LC/z;->c:LaP/a;

    iget-object v1, v1, LaP/a;->a:LaP/t;

    iget-object v2, p1, LC/z;->c:LaP/a;

    iget-object v2, v2, LaP/a;->a:LaP/t;

    invoke-virtual {v1, v2}, LaP/t;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 86
    :cond_1e
    invoke-virtual {v0}, LC/R;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, LC/Y;->e:J

    .line 88
    :cond_24
    iput-object p1, p0, LC/Y;->b:LC/z;

    .line 89
    invoke-virtual {v0}, LC/R;->b()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 90
    iput-object p1, p0, LC/Y;->c:LC/z;

    .line 93
    :cond_2e
    iput-object p1, p0, LC/Y;->a:LC/z;

    .line 94
    return-void
.end method

.method public b()LC/z;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, LC/Y;->c:LC/z;

    return-object v0
.end method

.method public c()LC/R;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, LC/Y;->d:LC/R;

    return-object v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, LC/Y;->e:J

    return-wide v0
.end method

.method public e()J
    .registers 3

    .prologue
    .line 68
    iget-wide v0, p0, LC/Y;->f:J

    return-wide v0
.end method
