.class Lu/d;
.super Lat/a;


# instance fields
.field private a:Ljava/util/Locale;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lat/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu/d;->a:Ljava/util/Locale;

    iput-object p1, p0, Lu/d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x2b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lu/d;->a:Ljava/util/Locale;

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lu/d;->a:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    sget-object v0, LbD/aR;->v:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iget-object v1, p0, Lu/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lu/d;->a:Ljava/util/Locale;

    invoke-static {v2}, Lu/c;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ln/b;->a(Landroid/content/Context;Lam/b;Ljava/lang/String;)Z

    iget-object v1, p0, Lu/d;->a:Ljava/util/Locale;

    invoke-static {v1, v0}, Lu/c;->a(Ljava/util/Locale;Lam/b;)V

    const/4 v0, 0x1

    goto :goto_d
.end method
