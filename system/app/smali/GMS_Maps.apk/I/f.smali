.class Li/f;
.super Li/a;
.source "SourceFile"


# instance fields
.field private a:Li/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private final d:Landroid/os/Handler;

.field private e:I

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Landroid/os/Handler;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0}, Li/a;-><init>()V

    .line 192
    iput-object p1, p0, Li/f;->f:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Li/f;->b:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Li/f;->c:Ljava/io/File;

    .line 195
    iput-object p4, p0, Li/f;->d:Landroid/os/Handler;

    .line 196
    return-void
.end method

.method static synthetic a(Li/f;Li/a;)Li/a;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Li/f;->a:Li/a;

    return-object p1
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Li/f;->a:Li/a;

    if-eqz v0, :cond_9

    .line 228
    iget-object v0, p0, Li/f;->a:Li/a;

    invoke-virtual {v0}, Li/a;->a()V

    .line 230
    :cond_9
    return-void
.end method

.method public a(Li/b;)V
    .registers 5
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Li/f;->c:Ljava/io/File;

    if-nez v0, :cond_f

    .line 203
    const-string v0, "AlertGenerator"

    const-string v1, "mFile=null"

    invoke-static {v0, v1}, Lh/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-interface {p1, p0}, Li/b;->a(Li/a;)V

    .line 221
    :goto_e
    return-void

    .line 208
    :cond_f
    iget-object v0, p0, Li/f;->f:Landroid/content/Context;

    iget-object v1, p0, Li/f;->c:Ljava/io/File;

    iget-object v2, p0, Li/f;->d:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Li/O;->a(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)Li/a;

    move-result-object v0

    iput-object v0, p0, Li/f;->a:Li/a;

    .line 209
    iget-object v0, p0, Li/f;->a:Li/a;

    if-nez v0, :cond_29

    .line 210
    invoke-interface {p1, p0}, Li/b;->a(Li/a;)V

    .line 220
    :goto_22
    iget v0, p0, Li/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Li/f;->e:I

    goto :goto_e

    .line 212
    :cond_29
    iget-object v0, p0, Li/f;->a:Li/a;

    new-instance v1, Li/g;

    invoke-direct {v1, p0, p1}, Li/g;-><init>(Li/f;Li/b;)V

    invoke-virtual {v0, v1}, Li/a;->a(Li/b;)V

    goto :goto_22
.end method

.method public b()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Li/f;->a:Li/a;

    if-eqz v0, :cond_9

    .line 235
    iget-object v0, p0, Li/f;->a:Li/a;

    invoke-virtual {v0}, Li/a;->b()V

    .line 237
    :cond_9
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Li/f;->c:Ljava/io/File;

    .line 249
    iput-object v0, p0, Li/f;->b:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Li/f;->b:Ljava/lang/String;

    return-object v0
.end method
