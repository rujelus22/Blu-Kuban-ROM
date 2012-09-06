.class public Lcom/estrongs/android/pop/app/diskusage/t;
.super Lcom/estrongs/android/widget/ab;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static final g:Ljava/text/DecimalFormat;

.field private static final s:Lcom/estrongs/android/pop/app/diskusage/u;


# instance fields
.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lcom/estrongs/android/util/r;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Ljava/io/File;

.field private n:Lcom/estrongs/android/util/r;

.field private o:Lcom/estrongs/android/util/s;

.field private p:J

.field private q:Landroid/content/ContextWrapper;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/io/File;",
            "Lcom/estrongs/android/util/r;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "fileIcon"

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->a:Ljava/lang/String;

    const-string v0, "fileName"

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->b:Ljava/lang/String;

    const-string v0, "fileSize"

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->c:Ljava/lang/String;

    const-string v0, "fileType"

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->d:Ljava/lang/String;

    const-string v0, "fileNum"

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->e:Ljava/lang/String;

    const-string v0, "fileSizePrecent"

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->f:Ljava/lang/String;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->g:Ljava/text/DecimalFormat;

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/u;-><init>(Lcom/estrongs/android/pop/app/diskusage/u;)V

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->s:Lcom/estrongs/android/pop/app/diskusage/u;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .registers 4

    invoke-direct {p0}, Lcom/estrongs/android/widget/ab;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->l:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->r:Ljava/util/List;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/t;->q:Landroid/content/ContextWrapper;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Lcom/estrongs/android/util/r;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/r;

    return-object v0
.end method

.method protected a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->m:Ljava/io/File;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->m:Ljava/io/File;

    if-eq v0, p1, :cond_15

    :cond_9
    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/t;->m:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/r;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->n:Lcom/estrongs/android/util/r;

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->n:Lcom/estrongs/android/util/r;

    if-nez v0, :cond_1b

    move-object v0, v1

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->q:Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1a

    :cond_32
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".lnk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, ".lnk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1a

    const/4 v1, 0x0

    const-string v2, ".lnk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_5a
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->n:Lcom/estrongs/android/util/r;

    invoke-virtual {v0}, Lcom/estrongs/android/util/r;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_6d
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->e:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/t;->n:Lcom/estrongs/android/util/r;

    invoke-virtual {v1}, Lcom/estrongs/android/util/r;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/t;->n:Lcom/estrongs/android/util/r;

    invoke-virtual {v1}, Lcom/estrongs/android/util/r;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_99
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->f:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/estrongs/android/pop/app/diskusage/t;->g:Ljava/text/DecimalFormat;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/t;->n:Lcom/estrongs/android/util/r;

    invoke-virtual {v2}, Lcom/estrongs/android/util/r;->b()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/t;->p:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a

    :cond_cd
    move-object v0, v1

    goto/16 :goto_1a
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->n:Lcom/estrongs/android/util/r;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->n:Lcom/estrongs/android/util/r;

    invoke-virtual {v0}, Lcom/estrongs/android/util/r;->a()V

    :cond_c
    return-void
.end method

.method public a(I)V
    .registers 5

    const/4 v1, 0x1

    const-string v0, ""

    if-eqz p1, :cond_7

    if-ne v1, p1, :cond_12

    :cond_7
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->b:Ljava/lang/String;

    :cond_9
    :goto_9
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_e

    const/4 v1, 0x0

    :cond_e
    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/diskusage/t;->a(Ljava/lang/String;Z)V

    return-void

    :cond_12
    const/4 v2, 0x2

    if-eq v2, p1, :cond_18

    const/4 v2, 0x3

    if-ne v2, p1, :cond_1b

    :cond_18
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->d:Ljava/lang/String;

    goto :goto_9

    :cond_1b
    const/4 v2, 0x4

    if-eq v2, p1, :cond_21

    const/4 v2, 0x5

    if-ne v2, p1, :cond_9

    :cond_21
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->c:Ljava/lang/String;

    goto :goto_9
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/diskusage/t;->p:J

    return-void
.end method

.method public a(Lcom/estrongs/android/util/s;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/t;->o:Lcom/estrongs/android/util/s;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 6

    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-super {p0}, Lcom/estrongs/android/widget/ab;->d()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    sget-object v0, Lcom/estrongs/android/util/m;->a:Lcom/estrongs/android/util/o;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/util/o;->a(Z)V

    invoke-super {p0}, Lcom/estrongs/android/widget/ab;->d()[Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/util/m;->a:Lcom/estrongs/android/util/o;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_e

    :cond_1e
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/estrongs/android/util/m;->b:Lcom/estrongs/android/util/q;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/util/q;->a(Z)V

    invoke-super {p0}, Lcom/estrongs/android/widget/ab;->d()[Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/util/m;->b:Lcom/estrongs/android/util/q;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_e

    :cond_35
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/t;->s:Lcom/estrongs/android/pop/app/diskusage/u;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/app/diskusage/u;->a(Z)V

    :try_start_42
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->r:Ljava/util/List;

    sget-object v1, Lcom/estrongs/android/pop/app/diskusage/t;->s:Lcom/estrongs/android/pop/app/diskusage/u;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_49} :catch_73

    :goto_49
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/io/File;

    const/4 v0, 0x0

    move v1, v0

    :goto_53
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5f

    invoke-super {p0, v2}, Lcom/estrongs/android/widget/ab;->a([Ljava/io/File;)V

    goto :goto_e

    :cond_5f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53

    :catch_73
    move-exception v0

    goto :goto_49
.end method

.method public a([Ljava/io/File;)V
    .registers 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->k:Z

    if-nez p1, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/diskusage/t;->l:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/t;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_f
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, p1

    move v1, v0

    :goto_16
    if-lt v1, v3, :cond_3b

    :cond_18
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6d

    :cond_2b
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->k:Z

    if-eqz v0, :cond_7d

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_5

    :cond_3b
    aget-object v4, p1, v1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->k:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->h:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    new-instance v0, Lcom/estrongs/android/util/r;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/t;->o:Lcom/estrongs/android/util/s;

    invoke-direct {v0, v5}, Lcom/estrongs/android/util/r;-><init>(Lcom/estrongs/android/util/s;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->n:Lcom/estrongs/android/util/r;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->n:Lcom/estrongs/android/util/r;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/util/r;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->h:Ljava/util/Map;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/t;->n:Lcom/estrongs/android/util/r;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->h:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/r;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_6d
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->k:Z

    if-nez v0, :cond_2b

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/t;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_7d
    invoke-super {p0, p1}, Lcom/estrongs/android/widget/ab;->a([Ljava/io/File;)V

    goto :goto_5
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/t;->k:Z

    return v0
.end method
