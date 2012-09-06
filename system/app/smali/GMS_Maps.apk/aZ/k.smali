.class Laz/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aF;


# instance fields
.field final synthetic a:Laz/h;

.field final synthetic b:J

.field final synthetic c:Lcom/google/googlenav/ui/android/w;

.field final synthetic d:Laz/j;


# direct methods
.method constructor <init>(Laz/j;Laz/h;JLcom/google/googlenav/ui/android/w;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Laz/k;->d:Laz/j;

    iput-object p2, p0, Laz/k;->a:Laz/h;

    iput-wide p3, p0, Laz/k;->b:J

    iput-object p5, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln/am;ILn/al;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 184
    iget-object v1, p0, Laz/k;->d:Laz/j;

    invoke-static {v1}, Laz/j;->a(Laz/j;)I

    move-result v1

    if-eqz v1, :cond_19

    if-nez p2, :cond_19

    iget-object v1, p0, Laz/k;->d:Laz/j;

    iget-object v1, v1, Laz/j;->a:Laz/h;

    invoke-static {v1}, Laz/h;->a(Laz/h;)J

    move-result-wide v1

    iget-wide v3, p0, Laz/k;->b:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1a

    .line 235
    :cond_19
    :goto_19
    return-void

    .line 188
    :cond_1a
    iget-object v1, p0, Laz/k;->d:Laz/j;

    iget-object v1, v1, Laz/j;->a:Laz/h;

    invoke-static {v1}, Laz/h;->b(Laz/h;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 189
    :try_start_23
    iget-object v1, p0, Laz/k;->d:Laz/j;

    iget-object v1, v1, Laz/j;->a:Laz/h;

    invoke-static {v1}, Laz/h;->a(Laz/h;)J

    move-result-wide v3

    iget-wide v5, p0, Laz/k;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_36

    .line 190
    monitor-exit v2

    goto :goto_19

    .line 234
    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_33

    throw v1

    .line 192
    :cond_36
    :try_start_36
    iget-object v1, p0, Laz/k;->d:Laz/j;

    invoke-static {v1}, Laz/j;->b(Laz/j;)I

    .line 193
    instance-of v1, p3, Ln/aF;

    if-eqz v1, :cond_4f

    .line 194
    move-object v0, p3

    check-cast v0, Ln/aF;

    move-object v1, v0

    invoke-virtual {v1}, Ln/aF;->o()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 195
    iget-object v1, p0, Laz/k;->d:Laz/j;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Laz/j;->a(Laz/j;Z)Z

    .line 200
    :cond_4f
    if-eqz p3, :cond_98

    invoke-interface {p3}, Ln/al;->i()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 201
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    sget-object v3, Lcom/google/googlenav/ui/android/w;->b:[F

    iput-object v3, v1, Lcom/google/googlenav/ui/android/w;->h:[F

    .line 202
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    sget-object v3, Lcom/google/googlenav/ui/android/w;->c:[F

    iput-object v3, v1, Lcom/google/googlenav/ui/android/w;->g:[F

    .line 204
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    const/high16 v3, -0x100

    iput v3, v1, Lcom/google/googlenav/ui/android/w;->f:I

    .line 205
    iget-object v3, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    const/16 v1, 0x33e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v1, p0, Laz/k;->d:Laz/j;

    iget-object v1, v1, Laz/j;->a:Laz/h;

    invoke-static {v1}, Laz/h;->c(Laz/h;)I

    move-result v1

    if-ge v1, v7, :cond_ce

    const-string v1, "<1"

    :goto_81
    aput-object v1, v5, v6

    invoke-static {v4, v5}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/google/googlenav/ui/android/w;->e:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/googlenav/ui/android/w;->j:Z

    .line 209
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/googlenav/ui/android/w;->i:Z

    .line 210
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/w;->a()V

    .line 214
    :cond_98
    iget-object v1, p0, Laz/k;->d:Laz/j;

    invoke-static {v1}, Laz/j;->a(Laz/j;)I

    move-result v1

    if-nez v1, :cond_db

    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    iget-boolean v1, v1, Lcom/google/googlenav/ui/android/w;->i:Z

    if-nez v1, :cond_db

    .line 215
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    const/16 v3, 0x343

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/googlenav/ui/android/w;->e:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    sget-object v3, Lcom/google/googlenav/ui/android/w;->d:[F

    iput-object v3, v1, Lcom/google/googlenav/ui/android/w;->g:[F

    .line 218
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    const/4 v3, -0x1

    iput v3, v1, Lcom/google/googlenav/ui/android/w;->f:I

    .line 219
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    sget-object v3, Lcom/google/googlenav/ui/android/w;->a:[F

    iput-object v3, v1, Lcom/google/googlenav/ui/android/w;->h:[F

    .line 220
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/googlenav/ui/android/w;->j:Z

    .line 221
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/w;->a()V

    .line 234
    :cond_cb
    :goto_cb
    monitor-exit v2

    goto/16 :goto_19

    .line 205
    :cond_ce
    iget-object v1, p0, Laz/k;->d:Laz/j;

    iget-object v1, v1, Laz/j;->a:Laz/h;

    invoke-static {v1}, Laz/h;->c(Laz/h;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_81

    .line 222
    :cond_db
    iget-object v1, p0, Laz/k;->d:Laz/j;

    invoke-static {v1}, Laz/j;->a(Laz/j;)I

    move-result v1

    if-nez v1, :cond_cb

    iget-object v1, p0, Laz/k;->d:Laz/j;

    invoke-static {v1}, Laz/j;->c(Laz/j;)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 225
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    sget-object v3, Lcom/google/googlenav/ui/android/w;->b:[F

    iput-object v3, v1, Lcom/google/googlenav/ui/android/w;->h:[F

    .line 226
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    sget-object v3, Lcom/google/googlenav/ui/android/w;->c:[F

    iput-object v3, v1, Lcom/google/googlenav/ui/android/w;->g:[F

    .line 228
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    const/high16 v3, -0x100

    iput v3, v1, Lcom/google/googlenav/ui/android/w;->f:I

    .line 229
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/googlenav/ui/android/w;->i:Z

    .line 230
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    const/16 v3, 0x345

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/googlenav/ui/android/w;->e:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/googlenav/ui/android/w;->j:Z

    .line 232
    iget-object v1, p0, Laz/k;->c:Lcom/google/googlenav/ui/android/w;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/w;->a()V
    :try_end_116
    .catchall {:try_start_36 .. :try_end_116} :catchall_33

    goto :goto_cb
.end method
