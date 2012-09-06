.class public final Lcom/google/android/ytremote/backend/browserchannel/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:Ljava/io/ByteArrayOutputStream;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Z


# direct methods
.method constructor <init>(Ljava/io/ByteArrayOutputStream;ZI[BLjava/util/Map;Ljava/util/Map;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/google/android/ytremote/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/h;->c:Ljava/io/ByteArrayOutputStream;

    .line 84
    iput-boolean p2, p0, Lcom/google/android/ytremote/backend/browserchannel/h;->f:Z

    .line 85
    iput p3, p0, Lcom/google/android/ytremote/backend/browserchannel/h;->b:I

    .line 86
    iput-object p4, p0, Lcom/google/android/ytremote/backend/browserchannel/h;->a:[B

    .line 87
    iput-object p5, p0, Lcom/google/android/ytremote/backend/browserchannel/h;->e:Ljava/util/Map;

    .line 88
    iput-object p6, p0, Lcom/google/android/ytremote/backend/browserchannel/h;->d:Ljava/util/Map;

    .line 89
    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/h;->a:[B

    return-object v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/google/android/ytremote/backend/browserchannel/h;->b:I

    return v0
.end method
