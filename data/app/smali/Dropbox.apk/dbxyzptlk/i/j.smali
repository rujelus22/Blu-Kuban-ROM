.class public abstract Ldbxyzptlk/i/j;
.super Ldbxyzptlk/i/f;
.source "panda.py"


# instance fields
.field private a:F

.field private b:J

.field private c:Lcom/dropbox/android/taskqueue/m;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 5
    invoke-direct {p0}, Ldbxyzptlk/i/f;-><init>()V

    .line 6
    const/high16 v0, -0x4080

    iput v0, p0, Ldbxyzptlk/i/j;->a:F

    .line 7
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldbxyzptlk/i/j;->b:J

    .line 8
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->a:Lcom/dropbox/android/taskqueue/m;

    iput-object v0, p0, Ldbxyzptlk/i/j;->c:Lcom/dropbox/android/taskqueue/m;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .registers 3
    .parameter

    .prologue
    .line 15
    iput p1, p0, Ldbxyzptlk/i/j;->a:F

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldbxyzptlk/i/j;->dispatchChange(Z)V

    .line 17
    return-void
.end method

.method public final a(J)V
    .registers 3
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Ldbxyzptlk/i/j;->b:J

    .line 25
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/m;)V
    .registers 3
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Ldbxyzptlk/i/j;->c:Lcom/dropbox/android/taskqueue/m;

    if-eq p1, v0, :cond_a

    .line 29
    iput-object p1, p0, Ldbxyzptlk/i/j;->c:Lcom/dropbox/android/taskqueue/m;

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldbxyzptlk/i/j;->dispatchChange(Z)V

    .line 32
    :cond_a
    return-void
.end method

.method public final c()F
    .registers 2

    .prologue
    .line 11
    iget v0, p0, Ldbxyzptlk/i/j;->a:F

    return v0
.end method

.method public final d()J
    .registers 3

    .prologue
    .line 20
    iget-wide v0, p0, Ldbxyzptlk/i/j;->b:J

    return-wide v0
.end method

.method public final e()Lcom/dropbox/android/taskqueue/m;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Ldbxyzptlk/i/j;->c:Lcom/dropbox/android/taskqueue/m;

    return-object v0
.end method
