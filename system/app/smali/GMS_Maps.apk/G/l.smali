.class public LG/l;
.super LK/cC;

# interfaces
.implements LK/ch;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;

.field private c:I

.field private d:Z

.field private final e:LG/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, LG/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/l;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LL/e;)V
    .registers 4

    invoke-direct {p0}, LK/cC;-><init>()V

    const/4 v1, 0x0

    :try_start_4
    new-instance v0, LG/n;

    invoke-direct {v0, p1}, LG/n;-><init>(LL/e;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_9} :catch_f

    :goto_9
    iput-object v0, p0, LG/l;->e:LG/n;

    return-void

    :catch_c
    move-exception v0

    move-object v0, v1

    goto :goto_9

    :catch_f
    move-exception v0

    move-object v0, v1

    goto :goto_9
.end method

.method private d()V
    .registers 3

    :try_start_0
    iget-boolean v0, p0, LG/l;->d:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, LG/l;->b:Ljava/util/List;

    if-eqz v0, :cond_12

    iget v0, p0, LG/l;->c:I

    iget-object v1, p0, LG/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1f

    :cond_12
    iget-object v0, p0, LG/l;->e:LG/n;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, LG/n;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LG/l;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, LG/l;->c:I
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_1f} :catch_20

    :cond_1f
    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_1f
.end method


# virtual methods
.method public a()LG/g;
    .registers 3

    invoke-virtual {p0}, LG/l;->b()LG/g;

    move-result-object v0

    iget v1, p0, LG/l;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LG/l;->c:I

    return-object v0
.end method

.method public b()LG/g;
    .registers 3

    invoke-direct {p0}, LG/l;->d()V

    iget-object v0, p0, LG/l;->b:Ljava/util/List;

    iget v1, p0, LG/l;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/g;

    return-object v0
.end method

.method public synthetic c()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LG/l;->b()LG/g;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, LG/l;->d:Z

    if-eqz v2, :cond_7

    :goto_6
    return v0

    :cond_7
    invoke-direct {p0}, LG/l;->d()V

    iget v2, p0, LG/l;->c:I

    iget-object v3, p0, LG/l;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_17

    iput-boolean v1, p0, LG/l;->d:Z

    goto :goto_6

    :cond_17
    move v0, v1

    goto :goto_6
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LG/l;->a()LG/g;

    move-result-object v0

    return-object v0
.end method
