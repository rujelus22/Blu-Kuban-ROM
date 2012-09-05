.class public final Ld/Z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ld/w;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field static a:Z

.field static final b:Ljava/util/Map;


# instance fields
.field final c:Ljava/lang/String;

.field final d:Ljava/util/Map;

.field private final e:Ljava/util/Set;

.field private final f:Ld/x;

.field private final g:Ljava/lang/String;

.field private final h:[B

.field private final i:J

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-boolean v0, Ld/Z;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ld/Z;->b:Ljava/util/Map;

    sget-object v0, Ld/Z;->b:Ljava/util/Map;

    sget-object v1, Ld/an;->c:Ld/an;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld/Z;->b:Ljava/util/Map;

    sget-object v1, Ld/an;->d:Ld/an;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld/Z;->b:Ljava/util/Map;

    sget-object v1, Ld/an;->e:Ld/an;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld/Z;->b:Ljava/util/Map;

    sget-object v1, Ld/an;->f:Ld/an;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ld/aa;

    invoke-direct {v0}, Ld/aa;-><init>()V

    sput-object v0, Ld/Z;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    iput v1, p0, Ld/Z;->j:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Ld/Z;->d:Ljava/util/Map;

    iput-boolean v0, p0, Ld/Z;->l:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ld/an;->a(I)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ld/Z;->e:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld/x;->valueOf(Ljava/lang/String;)Ld/x;

    move-result-object v1

    iput-object v1, p0, Ld/Z;->f:Ld/x;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/Z;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Ld/Z;->i:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Ld/Z;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Ld/Z;->d:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Ld/Z;->a(Landroid/os/Bundle;Ljava/util/Map;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/Z;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/Z;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_67

    new-array v1, v1, [B

    iput-object v1, p0, Ld/Z;->h:[B

    iget-object v1, p0, Ld/Z;->h:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    :goto_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_6b

    :goto_64
    iput-boolean v0, p0, Ld/Z;->l:Z

    return-void

    :cond_67
    const/4 v1, 0x0

    iput-object v1, p0, Ld/Z;->h:[B

    goto :goto_5e

    :cond_6b
    const/4 v0, 0x1

    goto :goto_64
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ld/aa;)V
    .registers 3

    invoke-direct {p0, p1}, Ld/Z;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;JLd/x;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Ld/Z;-><init>(Ljava/util/Set;JLd/x;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;JLd/x;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 13

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Ld/Z;->j:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ld/Z;->d:Ljava/util/Map;

    iput-boolean v2, p0, Ld/Z;->l:Z

    sget-object v0, Ld/x;->b:Ld/x;

    if-ne p4, v0, :cond_20

    const-string v0, "dataPath could not be null if you want to write data to local storage"

    invoke-static {p5, v0}, Ld/ax;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    sget-object v0, Ld/x;->a:Ld/x;

    if-ne p4, v0, :cond_8d

    cmp-long v0, p2, v3

    if-lez v0, :cond_8b

    const-wide/32 v3, 0x493e0

    cmp-long v0, p2, v3

    if-gtz v0, :cond_8b

    move v0, v1

    :goto_30
    const-string v3, "Invalid scan duration for MEMORY collection destination."

    invoke-static {v0, v3}, Ld/ax;->a(ZLjava/lang/Object;)V

    :goto_35
    invoke-static {p5}, Ld/ax;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-static {p6}, Ld/ax;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    if-eqz p7, :cond_9a

    :cond_43
    move v0, v1

    :goto_44
    const-string v3, "You must specify a key for encryption when writing data to persistent storage."

    invoke-static {v0, v3}, Ld/ax;->a(ZLjava/lang/Object;)V

    sget-boolean v0, Ld/Z;->a:Z

    if-nez v0, :cond_7e

    if-nez p7, :cond_7e

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_54
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "The key should be in the /data/data partition."

    invoke-static {v3, v4}, Ld/ax;->b(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9c

    :goto_6f
    const-string v0, "%s does not exist."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p6, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ld/ax;->b(ZLjava/lang/Object;)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_7e} :catch_9e

    :cond_7e
    iput-object p6, p0, Ld/Z;->c:Ljava/lang/String;

    iput-object p7, p0, Ld/Z;->h:[B

    iput-object p1, p0, Ld/Z;->e:Ljava/util/Set;

    iput-wide p2, p0, Ld/Z;->i:J

    iput-object p4, p0, Ld/Z;->f:Ld/x;

    iput-object p5, p0, Ld/Z;->g:Ljava/lang/String;

    return-void

    :cond_8b
    move v0, v2

    goto :goto_30

    :cond_8d
    cmp-long v0, p2, v3

    if-ltz v0, :cond_98

    move v0, v1

    :goto_92
    const-string v3, "Scan duration should be >= 0"

    invoke-static {v0, v3}, Ld/ax;->a(ZLjava/lang/Object;)V

    goto :goto_35

    :cond_98
    move v0, v2

    goto :goto_92

    :cond_9a
    move v0, v2

    goto :goto_44

    :cond_9c
    move v1, v2

    goto :goto_6f

    :catch_9e
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to parse the key path."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/util/Map;)Landroid/os/Bundle;
    .registers 6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/an;

    invoke-virtual {v1}, Ld/an;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d

    :cond_35
    return-object v2
.end method

.method private a(Landroid/os/Bundle;Ljava/util/Map;)V
    .registers 6

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ld/an;->b(I)Ld/an;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_2b} :catch_2c

    goto :goto_a

    :catch_2c
    move-exception v0

    goto :goto_a

    :cond_2e
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x80

    new-array v0, v0, [B

    :goto_13
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_13

    :cond_1f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/Z;->k:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ld/an;I)V
    .registers 5

    iget-object v0, p0, Ld/Z;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Ld/Z;->e:Ljava/util/Set;

    return-object v0
.end method

.method public c()Ld/x;
    .registers 2

    iget-object v0, p0, Ld/Z;->f:Ld/x;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/Z;->g:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Ld/Z;->i:J

    return-wide v0
.end method

.method public f()[B
    .registers 2

    iget-object v0, p0, Ld/Z;->h:[B

    return-object v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Ld/Z;->l:Z

    return v0
.end method

.method public h()Ld/w;
    .registers 9

    iget-object v0, p0, Ld/Z;->c:Ljava/lang/String;

    if-eqz v0, :cond_19

    new-instance v0, Ld/Z;

    iget-object v1, p0, Ld/Z;->e:Ljava/util/Set;

    iget-wide v2, p0, Ld/Z;->i:J

    iget-object v4, p0, Ld/Z;->f:Ld/x;

    iget-object v5, p0, Ld/Z;->g:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Ld/Z;->c:Ljava/lang/String;

    invoke-static {v7}, Ld/Z;->a(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ld/Z;-><init>(Ljava/util/Set;JLd/x;Ljava/lang/String;Ljava/lang/String;[B)V

    :goto_18
    return-object v0

    :cond_19
    move-object v0, p0

    goto :goto_18
.end method

.method public i()Ljava/util/Map;
    .registers 6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Ld/Z;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/an;

    sget-object v1, Ld/Z;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Ld/Z;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v4, p0, Ld/Z;->d:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3b

    iget v0, p0, Ld/Z;->j:I

    :goto_33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_3b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_33

    :cond_40
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "Scanner types: %s; Dest: %s; ScanDuration: %d, SensorDelay: %s; Data path: %s; Key path: %s; View opted out WIFI APs: %s"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ld/Z;->e:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ld/Z;->f:Ld/x;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Ld/Z;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Ld/Z;->i()Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Ld/Z;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Ld/Z;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Ld/Z;->l:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Ld/Z;->e:Ljava/util/Set;

    invoke-static {v0}, Ld/an;->a(Ljava/util/Set;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ld/Z;->f:Ld/x;

    invoke-virtual {v0}, Ld/x;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ld/Z;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v2, p0, Ld/Z;->i:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Ld/Z;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ld/Z;->d:Ljava/util/Map;

    invoke-direct {p0, v0}, Ld/Z;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Ld/Z;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ld/Z;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Ld/Z;->h:[B

    if-nez v0, :cond_4d

    move v0, v1

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v0, :cond_44

    iget-object v0, p0, Ld/Z;->h:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_44
    iget-boolean v0, p0, Ld/Z;->l:Z

    if-eqz v0, :cond_49

    const/4 v1, 0x1

    :cond_49
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_4d
    iget-object v0, p0, Ld/Z;->h:[B

    array-length v0, v0

    goto :goto_3a
.end method
