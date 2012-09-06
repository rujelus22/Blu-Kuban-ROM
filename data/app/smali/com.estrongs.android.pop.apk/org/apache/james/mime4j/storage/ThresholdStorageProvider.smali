.class public Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;
.super Lorg/apache/james/mime4j/storage/AbstractStorageProvider;


# instance fields
.field private final backend:Lorg/apache/james/mime4j/storage/StorageProvider;

.field private final thresholdSize:I


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .registers 3

    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;-><init>(Lorg/apache/james/mime4j/storage/StorageProvider;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageProvider;I)V
    .registers 4

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/AbstractStorageProvider;-><init>()V

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    const/4 v0, 0x1

    if-ge p2, v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_14
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->backend:Lorg/apache/james/mime4j/storage/StorageProvider;

    iput p2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->thresholdSize:I

    return-void
.end method

.method static synthetic access$000(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->thresholdSize:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)Lorg/apache/james/mime4j/storage/StorageProvider;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->backend:Lorg/apache/james/mime4j/storage/StorageProvider;

    return-object v0
.end method


# virtual methods
.method public createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;
    .registers 2

    new-instance v0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;-><init>(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)V

    return-object v0
.end method
