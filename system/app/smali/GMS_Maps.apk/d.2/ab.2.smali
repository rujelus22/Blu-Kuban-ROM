.class public Ld/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ld/W;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:J

.field private final c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ld/ac;

    invoke-direct {v0}, Ld/ac;-><init>()V

    sput-object v0, Ld/ab;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ld/ab;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ld/an;->a(I)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ld/ab;->a:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Ld/ab;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Ld/ab;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_25

    :goto_22
    iput-boolean v0, p0, Ld/ab;->d:Z

    return-void

    :cond_25
    const/4 v0, 0x1

    goto :goto_22
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ld/ac;)V
    .registers 3

    invoke-direct {p0, p1}, Ld/ab;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;JI)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ld/ab;->d:Z

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_14

    const-wide/32 v1, 0xea60

    cmp-long v1, p2, v1

    if-gtz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    const-string v1, "Invalid scan duration for NONE collection destination."

    invoke-static {v0, v1}, Ld/ax;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Ld/ab;->a:Ljava/util/Set;

    iput-wide p2, p0, Ld/ab;->b:J

    iput p4, p0, Ld/ab;->c:I

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Ld/ab;->b:J

    return-wide v0
.end method

.method public b()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Ld/ab;->a:Ljava/util/Set;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Ld/ab;->d:Z

    return v0
.end method

.method public d()Ljava/util/Map;
    .registers 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Ld/ab;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/an;

    sget-object v3, Ld/Z;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Ld/Z;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget v3, p0, Ld/ab;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_31
    return-object v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "Scanner types: %s; ScanDuration: %d, SensorDelay: %d, viewOptedOutWifiAps: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ld/ab;->a:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Ld/ab;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Ld/ab;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Ld/ab;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Ld/ab;->a:Ljava/util/Set;

    invoke-static {v0}, Ld/an;->a(Ljava/util/Set;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Ld/ab;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Ld/ab;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Ld/ab;->d:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method
