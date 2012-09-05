.class public Lcom/google/android/maps/driveabout/app/aD;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/ArrayList;

.field private final h:Ljava/util/ArrayList;

.field private final i:Ljava/util/ArrayList;

.field private final j:Ljava/util/ArrayList;

.field private final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->j:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aD;->a:Landroid/content/Context;

    const v0, 0x7f0b0027

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imperial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aD;->k:I

    :goto_56
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aD;->a()V

    return-void

    :cond_5a
    const-string v1, "imperial_yards"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aD;->k:I

    goto :goto_56

    :cond_66
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aD;->k:I

    goto :goto_56
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/aD;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/aF;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/aF;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, p2, p3}, Lcom/google/android/maps/driveabout/app/aF;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot format distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    const-string v0, ""

    goto :goto_1a
.end method

.method private a()V
    .registers 14

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aD;->b:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aD;->c:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aD;->d:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_312

    const/4 v0, 0x3

    new-array v3, v0, [I

    fill-array-data v3, :array_31c

    const/4 v0, 0x3

    new-array v4, v0, [I

    fill-array-data v4, :array_326

    const/4 v0, 0x0

    :goto_25
    array-length v5, v1

    if-ge v0, v5, :cond_ec

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aE;

    const/16 v7, 0x5f

    aget v8, v2, v0

    const-string v9, "50"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aE;

    const/16 v7, 0x91

    aget v8, v2, v0

    const-string v9, "100"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aE;

    const/16 v7, 0xbe

    aget v8, v2, v0

    const-string v9, "150"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aE;

    const/16 v7, 0x118

    aget v8, v2, v0

    const-string v9, "200"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aE;

    const/16 v7, 0x172

    aget v8, v2, v0

    const-string v9, "300"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aE;

    const/16 v7, 0x1cc

    aget v8, v2, v0

    const-string v9, "400"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aE;

    const/16 v7, 0x226

    aget v8, v2, v0

    const-string v9, "500"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aE;

    const/16 v7, 0x2ee

    aget v8, v2, v0

    const-string v9, "600"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aE;

    const/16 v7, 0x3b6

    aget v8, v2, v0

    const-string v9, "800"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aG;

    const/16 v7, 0x514

    aget v8, v3, v0

    const/high16 v9, 0x447a

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aG;-><init>(Lcom/google/android/maps/driveabout/app/aD;IIF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aE;

    const/16 v7, 0x73a

    aget v8, v4, v0

    const/4 v9, 0x0

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/app/aG;

    const v7, 0x7fffffff

    aget v8, v3, v0

    const/high16 v9, 0x447a

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/app/aG;-><init>(Lcom/google/android/maps/driveabout/app/aD;IIF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_25

    :cond_ec
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aD;->e:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aD;->f:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aD;->g:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_330

    const/4 v0, 0x3

    new-array v3, v0, [I

    fill-array-data v3, :array_33a

    const/4 v0, 0x3

    new-array v4, v0, [I

    fill-array-data v4, :array_344

    const/4 v0, 0x3

    new-array v5, v0, [I

    fill-array-data v5, :array_34e

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_358

    const/4 v0, 0x3

    new-array v7, v0, [I

    fill-array-data v7, :array_362

    const/4 v0, 0x0

    :goto_123
    array-length v8, v1

    if-ge v0, v8, :cond_238

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x41e7a5e4

    aget v11, v2, v0

    const-string v12, "50"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x4230c8b4

    aget v11, v2, v0

    const-string v12, "100"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x4267a5e4

    aget v11, v2, v0

    const-string v12, "150"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x42aab021

    aget v11, v2, v0

    const-string v12, "200"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x42e18d50

    aget v11, v2, v0

    const-string v12, "300"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x430c3540

    aget v11, v2, v0

    const-string v12, "400"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x4327a3d7

    aget v11, v2, v0

    const-string v12, "500"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x43618d50

    aget v11, v2, v0

    const-string v12, "600"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x4390c7ae

    aget v11, v2, v0

    const-string v12, "800"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x43c61eb8

    aget v11, v2, v0

    const-string v12, "1000"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x44350d1b

    aget v11, v4, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x448cd14e

    aget v11, v5, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x44bf1c0f

    aget v11, v6, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aG;

    const v10, 0x4502c25b

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aG;-><init>(Lcom/google/android/maps/driveabout/app/aD;FIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x45350d1b

    aget v11, v7, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aG;

    const v10, 0x7fffffff

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aG;-><init>(Lcom/google/android/maps/driveabout/app/aD;IIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_123

    :cond_238
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aD;->h:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aD;->i:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aD;->j:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_36c

    const/4 v0, 0x0

    :goto_251
    array-length v8, v1

    if-ge v0, v8, :cond_311

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x42adbc6b

    aget v11, v2, v0

    const-string v12, "50"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x43049688

    aget v11, v2, v0

    const-string v12, "100"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x432dbc6b

    aget v11, v2, v0

    const-string v12, "150"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x43800419

    aget v11, v2, v0

    const-string v12, "200"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x43a929fc

    aget v11, v2, v0

    const-string v12, "300"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x44350d1b

    aget v11, v4, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x448cd14e

    aget v11, v5, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x44bf1c0f

    aget v11, v6, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aG;

    const v10, 0x4502c25b

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aG;-><init>(Lcom/google/android/maps/driveabout/app/aD;FIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aE;

    const v10, 0x45350d1b

    aget v11, v7, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aE;-><init>(Lcom/google/android/maps/driveabout/app/aD;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/app/aG;

    const v10, 0x7fffffff

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/app/aG;-><init>(Lcom/google/android/maps/driveabout/app/aD;IIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_251

    :cond_311
    return-void

    :array_312
    .array-data 0x4
        0x92t 0x0t 0xbt 0x7ft
        0x94t 0x0t 0xbt 0x7ft
        0x96t 0x0t 0xbt 0x7ft
    .end array-data

    :array_31c
    .array-data 0x4
        0x0t 0x0t 0xct 0x7ft
        0x1t 0x0t 0xct 0x7ft
        0x2t 0x0t 0xct 0x7ft
    .end array-data

    :array_326
    .array-data 0x4
        0x93t 0x0t 0xbt 0x7ft
        0x95t 0x0t 0xbt 0x7ft
        0x97t 0x0t 0xbt 0x7ft
    .end array-data

    :array_330
    .array-data 0x4
        0x99t 0x0t 0xbt 0x7ft
        0x9ft 0x0t 0xbt 0x7ft
        0xa5t 0x0t 0xbt 0x7ft
    .end array-data

    :array_33a
    .array-data 0x4
        0x3t 0x0t 0xct 0x7ft
        0x4t 0x0t 0xct 0x7ft
        0x5t 0x0t 0xct 0x7ft
    .end array-data

    :array_344
    .array-data 0x4
        0x9bt 0x0t 0xbt 0x7ft
        0xa1t 0x0t 0xbt 0x7ft
        0xa7t 0x0t 0xbt 0x7ft
    .end array-data

    :array_34e
    .array-data 0x4
        0x9ct 0x0t 0xbt 0x7ft
        0xa2t 0x0t 0xbt 0x7ft
        0xa8t 0x0t 0xbt 0x7ft
    .end array-data

    :array_358
    .array-data 0x4
        0x9dt 0x0t 0xbt 0x7ft
        0xa3t 0x0t 0xbt 0x7ft
        0xa9t 0x0t 0xbt 0x7ft
    .end array-data

    :array_362
    .array-data 0x4
        0x9et 0x0t 0xbt 0x7ft
        0xa4t 0x0t 0xbt 0x7ft
        0xaat 0x0t 0xbt 0x7ft
    .end array-data

    :array_36c
    .array-data 0x4
        0x9at 0x0t 0xbt 0x7ft
        0xa0t 0x0t 0xbt 0x7ft
        0xa6t 0x0t 0xbt 0x7ft
    .end array-data
.end method


# virtual methods
.method public a(II)Lo/R;
    .registers 6

    if-nez p2, :cond_4

    iget p2, p0, Lcom/google/android/maps/driveabout/app/aD;->k:I

    :cond_4
    packed-switch p2, :pswitch_data_20

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->b:Ljava/util/ArrayList;

    :goto_9
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/google/android/maps/driveabout/app/aD;->a(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lo/p;

    invoke-direct {v2, p1, p2}, Lo/p;-><init>(II)V

    invoke-static {v1, v0, v2}, Lo/R;->a(ILjava/lang/CharSequence;Lo/l;)Lo/R;

    move-result-object v0

    return-object v0

    :pswitch_19
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->e:Ljava/util/ArrayList;

    goto :goto_9

    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->h:Ljava/util/ArrayList;

    goto :goto_9

    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_19
        :pswitch_1c
    .end packed-switch
.end method

.method public a(Lu/j;II)Lo/R;
    .registers 7

    invoke-virtual {p1}, Lu/j;->e()Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x0

    move-object v1, v0

    :goto_10
    packed-switch p3, :pswitch_data_48

    if-nez v1, :cond_44

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->c:Ljava/util/ArrayList;

    :goto_17
    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/maps/driveabout/app/aD;->a(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lo/r;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lo/r;-><init>(I)V

    invoke-static {p1, v0, v1}, Lo/R;->a(Lu/j;Ljava/lang/CharSequence;Lo/l;)Lo/R;

    move-result-object v0

    return-object v0

    :cond_27
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/K;

    invoke-virtual {v0}, Lu/K;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_10

    :pswitch_34
    if-nez v1, :cond_39

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->f:Ljava/util/ArrayList;

    goto :goto_17

    :cond_39
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->g:Ljava/util/ArrayList;

    goto :goto_17

    :pswitch_3c
    if-nez v1, :cond_41

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->i:Ljava/util/ArrayList;

    goto :goto_17

    :cond_41
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->j:Ljava/util/ArrayList;

    goto :goto_17

    :cond_44
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aD;->d:Ljava/util/ArrayList;

    goto :goto_17

    nop

    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_34
        :pswitch_3c
    .end packed-switch
.end method
