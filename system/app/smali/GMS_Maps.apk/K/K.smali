.class public abstract Lk/k;
.super LA/f;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Lm/c;

.field private d:Landroid/location/Location;

.field private e:Landroid/location/Location;

.field private f:Landroid/location/Location;

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, LA/f;-><init>(Landroid/content/Context;)V

    .line 73
    const/16 v0, 0x3e8

    iput v0, p0, Lk/k;->g:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lk/k;->h:J

    .line 79
    return-void
.end method

.method static synthetic a(Lk/k;)J
    .registers 3
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lk/k;->h:J

    return-wide v0
.end method

.method static synthetic a(Lk/k;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 57
    iput-wide p1, p0, Lk/k;->h:J

    return-wide p1
.end method

.method static synthetic a(Lk/k;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lk/k;->d:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lk/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lk/k;)I
    .registers 2
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lk/k;->g:I

    return v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lk/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lk/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lk/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Landroid/location/Location;
    .registers 4

    .prologue
    .line 1224
    invoke-virtual {p0}, Lk/k;->a()Ljava/util/List;

    move-result-object v0

    .line 1225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA/j;

    .line 1226
    instance-of v2, v0, Lk/p;

    if-eqz v2, :cond_8

    .line 1227
    check-cast v0, Lk/p;

    .line 1228
    invoke-virtual {v0}, Lk/p;->a()Landroid/location/Location;

    move-result-object v0

    .line 1231
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lk/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()I
    .registers 4

    .prologue
    .line 1239
    invoke-virtual {p0}, Lk/k;->a()Ljava/util/List;

    move-result-object v0

    .line 1240
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA/j;

    .line 1241
    instance-of v2, v0, Lk/A;

    if-eqz v2, :cond_8

    .line 1242
    new-instance v2, Lcom/google/android/maps/driveabout/app/bj;

    check-cast v0, Lk/A;

    invoke-virtual {v0}, Lk/A;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/maps/driveabout/app/bj;-><init>(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bj;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1244
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bj;->e()I

    move-result v0

    .line 1248
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lk/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lk/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lk/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lk/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lk/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lk/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/BufferedWriter;)V
    .registers 4
    .parameter

    .prologue
    .line 1154
    iget-object v0, p0, Lk/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<destination uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/k;->a:Ljava/lang/String;

    invoke-static {v1}, Lk/k;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1157
    :cond_26
    const-string v0, "</event-log>\n"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1158
    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 3
    .parameter

    .prologue
    .line 1170
    iget-object v0, p0, Lk/k;->d:Landroid/location/Location;

    iput-object v0, p0, Lk/k;->f:Landroid/location/Location;

    .line 1171
    invoke-direct {p0}, Lk/k;->e()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lk/k;->e:Landroid/location/Location;

    .line 1172
    invoke-super {p0, p1}, LA/f;->a(Ljava/io/File;)V

    .line 1173
    return-void
.end method

.method public b()Lm/c;
    .registers 2

    .prologue
    .line 1111
    iget-object v0, p0, Lk/k;->b:Lm/c;

    if-nez v0, :cond_b

    .line 1112
    new-instance v0, Lk/l;

    invoke-direct {v0, p0}, Lk/l;-><init>(Lk/k;)V

    iput-object v0, p0, Lk/k;->b:Lm/c;

    .line 1148
    :cond_b
    iget-object v0, p0, Lk/k;->b:Lm/c;

    return-object v0
.end method

.method public b(Ljava/io/File;)V
    .registers 9
    .parameter

    .prologue
    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    .line 1185
    const/4 v5, 0x0

    .line 1186
    invoke-virtual {p0}, Lk/k;->d()Lo/P;

    move-result-object v0

    .line 1187
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lo/P;->c()Ln/s;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 1188
    new-instance v5, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v5, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v0}, Lo/P;->c()Ln/s;

    move-result-object v1

    invoke-virtual {v1}, Ln/s;->a()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-virtual {v5, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 1190
    invoke-virtual {v0}, Lo/P;->c()Ln/s;

    move-result-object v0

    invoke-virtual {v0}, Ln/s;->b()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 1193
    :cond_33
    new-instance v0, LA/b;

    iget-object v1, p0, Lk/k;->c:Landroid/content/Context;

    iget-object v3, p0, Lk/k;->e:Landroid/location/Location;

    iget-object v4, p0, Lk/k;->f:Landroid/location/Location;

    invoke-direct {p0}, Lk/k;->f()I

    move-result v6

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, LA/b;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/location/Location;Landroid/location/Location;Landroid/location/Location;I)V

    .line 1195
    invoke-virtual {v0}, LA/b;->a()V

    .line 1196
    return-void
.end method

.method public c()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 1200
    iget-object v0, p0, Lk/k;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 1201
    const/4 v0, 0x0

    .line 1203
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lk/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5
.end method

.method public d()Lo/P;
    .registers 3

    .prologue
    .line 1208
    iget-object v0, p0, Lk/k;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 1209
    const/4 v0, 0x0

    .line 1212
    :goto_5
    return-object v0

    .line 1211
    :cond_6
    new-instance v0, Lcom/google/android/maps/driveabout/app/bj;

    iget-object v1, p0, Lk/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/bj;-><init>(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bj;->b()Lo/P;

    move-result-object v0

    goto :goto_5
.end method
