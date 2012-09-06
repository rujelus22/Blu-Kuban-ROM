.class abstract Lcom/google/android/maps/driveabout/vector/dk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->b:I

    .line 270
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->c:Ljava/lang/String;

    .line 271
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->d:Z

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->e:Z

    .line 273
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->f:Z

    .line 274
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->g:Z

    .line 277
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/dk;->a:I

    .line 278
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/maps/driveabout/vector/dh;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dk;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/dk;)I
    .registers 2
    .parameter

    .prologue
    .line 267
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->a:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/dk;)I
    .registers 2
    .parameter

    .prologue
    .line 267
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/vector/dk;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/vector/dk;)Z
    .registers 2
    .parameter

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/vector/dk;)Z
    .registers 2
    .parameter

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/vector/dk;)Z
    .registers 2
    .parameter

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/vector/dk;)Z
    .registers 2
    .parameter

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->g:Z

    return v0
.end method


# virtual methods
.method abstract a()Lcom/google/android/maps/driveabout/vector/dg;
.end method

.method a(I)Lcom/google/android/maps/driveabout/vector/dk;
    .registers 2
    .parameter

    .prologue
    .line 281
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/dk;->b:I

    .line 282
    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dk;
    .registers 2
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dk;->c:Ljava/lang/String;

    .line 287
    return-object p0
.end method

.method b(Z)Lcom/google/android/maps/driveabout/vector/dk;
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/dk;->d:Z

    .line 292
    return-object p0
.end method

.method c(Z)Lcom/google/android/maps/driveabout/vector/dk;
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/dk;->e:Z

    .line 297
    return-object p0
.end method

.method d(Z)Lcom/google/android/maps/driveabout/vector/dk;
    .registers 2
    .parameter

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/dk;->f:Z

    .line 302
    return-object p0
.end method

.method e(Z)Lcom/google/android/maps/driveabout/vector/dk;
    .registers 2
    .parameter

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/dk;->g:Z

    .line 307
    return-object p0
.end method
