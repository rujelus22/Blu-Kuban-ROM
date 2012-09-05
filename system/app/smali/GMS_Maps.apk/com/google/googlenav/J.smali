.class public Lcom/google/googlenav/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:Lcom/google/googlenav/ui/D;

.field private f:I

.field private final g:Lcom/google/googlenav/A;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "=@latlon:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/googlenav/J;->b:I

    const-string v0, "..."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/googlenav/J;->c:I

    const-string v0, "&"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/googlenav/J;->d:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/vnd.google.gmm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/vnd.google-earth.kml+xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "application/vnd.google-earth.kmz"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/J;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/D;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/J;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/J;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/googlenav/J;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->ap()Lcom/google/googlenav/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/J;->g:Lcom/google/googlenav/A;

    return-void
.end method

.method static a(Ljava/lang/String;I)Lcom/google/googlenav/c;
    .registers 7

    const/4 v4, 0x3

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_9
    new-instance v0, Lcom/google/googlenav/c;

    invoke-direct {v0, p1}, Lcom/google/googlenav/c;-><init>(I)V

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "@map"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/google/googlenav/c;

    invoke-direct {v0, v4}, Lcom/google/googlenav/c;-><init>(I)V

    goto :goto_e

    :cond_1d
    const-string v0, "@gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Lcom/google/googlenav/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/googlenav/c;-><init>(I)V

    goto :goto_e

    :cond_2c
    const-string v0, "@latlon:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v0, "@latlon:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4d

    new-instance v0, Lcom/google/googlenav/c;

    invoke-direct {v0, v4}, Lcom/google/googlenav/c;-><init>(I)V

    goto :goto_e

    :cond_4d
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :try_start_58
    new-instance v0, Lcom/google/googlenav/c;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Las/b;->b(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v1, v3}, Las/b;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/google/googlenav/c;-><init>(II)V
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_67} :catch_68

    goto :goto_e

    :catch_68
    move-exception v0

    new-instance v0, Lcom/google/googlenav/c;

    invoke-direct {v0, v4}, Lcom/google/googlenav/c;-><init>(I)V

    goto :goto_e

    :cond_6f
    new-instance v0, Lcom/google/googlenav/c;

    invoke-direct {v0, p0}, Lcom/google/googlenav/c;-><init>(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gmm/x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    const-string v2, ".kml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".kmz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".gmml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".kml?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_e

    const-string v2, ".kmz?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_e

    const-string v2, ".gmml?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_e

    const-string v2, ".kml#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_e

    const-string v2, ".kmz#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_e

    const-string v2, ".gmml#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_e

    const-string v2, "http://maps.google.com/maps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string v2, "output=kml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_e

    :cond_67
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private b(Ljava/lang/String;Z)V
    .registers 5

    if-eqz p2, :cond_a

    invoke-direct {p0, p1}, Lcom/google/googlenav/J;->e(Ljava/lang/String;)I

    move-result v0

    :goto_6
    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    :cond_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/googlenav/J;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_6
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    const-string v2, "=@latlon:"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_b

    return-object p0

    :cond_b
    sget v2, Lcom/google/googlenav/J;->b:I

    add-int/2addr v2, v0

    const-string v0, "&"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-lez v3, :cond_49

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_42
    sget v0, Lcom/google/googlenav/J;->c:I

    add-int/2addr v0, v2

    sget v2, Lcom/google/googlenav/J;->d:I

    add-int/2addr v0, v2

    goto :goto_2

    :cond_49
    move-object p0, v0

    goto :goto_42
.end method

.method static d(Ljava/lang/String;)Ljava/util/Map;
    .registers 8

    const/16 v4, 0x3f

    const/4 v1, 0x0

    const/4 v6, -0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v6, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_18

    :cond_17
    :goto_17
    return-object v0

    :cond_18
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x26

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    :goto_28
    :try_start_28
    array-length v3, v2

    if-ge v1, v3, :cond_17

    aget-object v3, v2, v1

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v6, :cond_4b

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lak/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lak/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_4b} :catch_4e

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :catch_4e
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method private e(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/J;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/D;->f(Ljava/lang/String;)V

    const/16 v0, 0x8

    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget v0, p0, Lcom/google/googlenav/J;->f:I

    if-nez v0, :cond_6

    iput p1, p0, Lcom/google/googlenav/J;->f:I

    :cond_6
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5

    const-string v0, "/gmm/x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/googlenav/J;->a(Ljava/lang/String;ZZ)V

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Ljava/lang/String;ZZ)V
    .registers 7

    const/16 v2, 0x34

    if-nez p1, :cond_5

    :goto_4
    return-void

    :cond_5
    if-eqz p3, :cond_22

    invoke-static {p1}, Lcom/google/googlenav/J;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "x"

    invoke-static {v2, v1, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_17
    if-eqz p2, :cond_34

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/googlenav/J;->a(I)V

    const-string v1, "k"

    invoke-static {v2, v1, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_22
    :goto_22
    iput-object p1, p0, Lcom/google/googlenav/J;->h:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/J;->j:Z

    iput-boolean p2, p0, Lcom/google/googlenav/J;->i:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/J;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    goto :goto_4

    :cond_34
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/googlenav/J;->a(I)V

    const-string v1, "u"

    invoke-static {v2, v1, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_22
.end method

.method b(Ljava/lang/String;)I
    .registers 15

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/googlenav/J;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-string v0, "view"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MAPV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v0, p0, Lcom/google/googlenav/J;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/D;->a(I)Z

    :cond_1e
    :goto_1e
    const-string v0, "span"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_120

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v5, :cond_70

    move v4, v5

    :goto_31
    const-string v0, "action"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "BUSI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    const-string v0, "q"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v0, "a"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/google/googlenav/J;->a(Ljava/lang/String;I)Lcom/google/googlenav/c;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/J;->g:Lcom/google/googlenav/A;

    const/4 v2, 0x0

    move v7, v6

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/google/googlenav/A;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;IIZZZ)V

    move v6, v9

    :cond_5e
    :goto_5e
    if-eqz v6, :cond_116

    const/4 v0, 0x5

    :goto_61
    return v0

    :cond_62
    const-string v1, "SATV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/J;->e:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, v9}, Lcom/google/googlenav/ui/D;->a(I)Z

    goto :goto_1e

    :cond_70
    const/4 v3, 0x0

    :try_start_71
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v4}, Las/b;->b(Ljava/lang/String;I)I
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_79} :catch_119

    move-result v4

    add-int/lit8 v1, v1, 0x1

    :try_start_7c
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Las/b;->b(Ljava/lang/String;I)I
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_84} :catch_11d

    move-result v5

    goto :goto_31

    :cond_86
    const-string v1, "LOCN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    const-string v0, "a"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/google/googlenav/J;->a(Ljava/lang/String;I)Lcom/google/googlenav/c;

    move-result-object v7

    const-string v0, "title"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v0, "description"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v0, "phone"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/googlenav/J;->g:Lcom/google/googlenav/A;

    move v11, v4

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/google/googlenav/A;->a(Lcom/google/googlenav/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v6

    goto :goto_5e

    :cond_bb
    const-string v1, "ROUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "start"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/google/googlenav/J;->a(Ljava/lang/String;I)Lcom/google/googlenav/c;

    move-result-object v1

    const-string v0, "end"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/google/googlenav/J;->a(Ljava/lang/String;I)Lcom/google/googlenav/c;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/wizard/bu;->H()I

    move-result v2

    new-instance v3, Lau/j;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->d()Lau/x;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->d()Lau/x;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lau/j;-><init>(Lau/x;Lau/x;)V

    packed-switch v2, :pswitch_data_124

    new-instance v0, Lau/r;

    invoke-direct {v0, v3}, Lau/r;-><init>(Lau/k;)V

    :goto_f4
    iget-object v1, p0, Lcom/google/googlenav/J;->g:Lcom/google/googlenav/A;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/A;->a(Lau/k;)V

    move v6, v9

    goto/16 :goto_5e

    :pswitch_fc
    new-instance v0, Lau/w;

    invoke-direct {v0, v3}, Lau/w;-><init>(Lau/k;)V

    goto :goto_f4

    :pswitch_102
    new-instance v0, Lau/v;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lau/v;-><init>(Lau/k;Lcom/google/googlenav/ui/x;)V

    goto :goto_f4

    :pswitch_110
    new-instance v0, Lau/i;

    invoke-direct {v0, v3}, Lau/i;-><init>(Lau/k;)V

    goto :goto_f4

    :cond_116
    const/4 v0, 0x7

    goto/16 :goto_61

    :catch_119
    move-exception v0

    move v4, v5

    goto/16 :goto_31

    :catch_11d
    move-exception v0

    goto/16 :goto_31

    :cond_120
    move v4, v5

    goto/16 :goto_31

    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_102
        :pswitch_fc
        :pswitch_110
    .end packed-switch
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/J;->h:Ljava/lang/String;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/J;->h:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/googlenav/J;->i:Z

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/J;->b(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/J;->h:Ljava/lang/String;

    goto :goto_4
.end method
