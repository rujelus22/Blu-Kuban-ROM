.class public LD/l;
.super Lcom/google/common/collect/dE;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/cW;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;

.field private c:I

.field private d:Z

.field private final e:LD/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, LD/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LD/l;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LH/e;)V
    .registers 4
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/common/collect/dE;-><init>()V

    .line 79
    const/4 v1, 0x0

    .line 81
    :try_start_4
    new-instance v0, LD/n;

    invoke-direct {v0, p1}, LD/n;-><init>(LH/e;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_9} :catch_f

    .line 87
    :goto_9
    iput-object v0, p0, LD/l;->e:LD/n;

    .line 88
    return-void

    .line 82
    :catch_c
    move-exception v0

    move-object v0, v1

    .line 86
    goto :goto_9

    .line 84
    :catch_f
    move-exception v0

    move-object v0, v1

    goto :goto_9
.end method

.method private d()V
    .registers 3

    .prologue
    .line 151
    :try_start_0
    iget-boolean v0, p0, LD/l;->d:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, LD/l;->b:Ljava/util/List;

    if-eqz v0, :cond_12

    iget v0, p0, LD/l;->c:I

    iget-object v1, p0, LD/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1f

    .line 152
    :cond_12
    iget-object v0, p0, LD/l;->e:LD/n;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, LD/n;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LD/l;->b:Ljava/util/List;

    .line 153
    const/4 v0, 0x0

    iput v0, p0, LD/l;->c:I
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 160
    :cond_1f
    :goto_1f
    return-void

    .line 157
    :catch_20
    move-exception v0

    goto :goto_1f

    .line 155
    :catch_22
    move-exception v0

    goto :goto_1f
.end method


# virtual methods
.method public a()LD/g;
    .registers 3

    .prologue
    .line 138
    invoke-virtual {p0}, LD/l;->b()LD/g;

    move-result-object v0

    .line 139
    iget v1, p0, LD/l;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LD/l;->c:I

    .line 140
    return-object v0
.end method

.method public b()LD/g;
    .registers 3

    .prologue
    .line 145
    invoke-direct {p0}, LD/l;->d()V

    .line 146
    iget-object v0, p0, LD/l;->b:Ljava/util/List;

    iget v1, p0, LD/l;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD/g;

    return-object v0
.end method

.method public synthetic c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, LD/l;->b()LD/g;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 124
    iget-boolean v2, p0, LD/l;->d:Z

    if-eqz v2, :cond_7

    .line 132
    :goto_6
    return v0

    .line 127
    :cond_7
    invoke-direct {p0}, LD/l;->d()V

    .line 128
    iget v2, p0, LD/l;->c:I

    iget-object v3, p0, LD/l;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_17

    .line 129
    iput-boolean v1, p0, LD/l;->d:Z

    goto :goto_6

    :cond_17
    move v0, v1

    .line 132
    goto :goto_6
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, LD/l;->a()LD/g;

    move-result-object v0

    return-object v0
.end method
