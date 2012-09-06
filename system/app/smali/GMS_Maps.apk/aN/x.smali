.class Lan/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:D

.field c:D

.field d:D

.field e:D

.field f:D

.field g:D

.field h:D


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lan/w;)V
    .registers 2
    .parameter

    .prologue
    .line 282
    invoke-direct {p0}, Lan/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lan/x;->a:I

    .line 294
    iput-wide v1, p0, Lan/x;->b:D

    .line 295
    iput-wide v1, p0, Lan/x;->c:D

    .line 296
    iput-wide v1, p0, Lan/x;->d:D

    .line 297
    iput-wide v1, p0, Lan/x;->e:D

    .line 298
    iput-wide v1, p0, Lan/x;->f:D

    .line 299
    iput-wide v1, p0, Lan/x;->g:D

    .line 300
    iput-wide v1, p0, Lan/x;->h:D

    .line 301
    return-void
.end method
