.class public final Lcom/google/android/a/a/a/j;
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
.method synthetic constructor <init>(Ljava/io/ByteArrayOutputStream;ZI[BLjava/util/Map;Ljava/util/Map;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/a/a/a/j;-><init>(Ljava/io/ByteArrayOutputStream;ZI[BLjava/util/Map;Ljava/util/Map;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/ByteArrayOutputStream;ZI[BLjava/util/Map;Ljava/util/Map;B)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/android/a/a/a/j;->c:Ljava/io/ByteArrayOutputStream;

    .line 81
    iput-boolean p2, p0, Lcom/google/android/a/a/a/j;->f:Z

    .line 82
    iput p3, p0, Lcom/google/android/a/a/a/j;->b:I

    .line 83
    iput-object p4, p0, Lcom/google/android/a/a/a/j;->a:[B

    .line 84
    iput-object p5, p0, Lcom/google/android/a/a/a/j;->e:Ljava/util/Map;

    .line 85
    iput-object p6, p0, Lcom/google/android/a/a/a/j;->d:Ljava/util/Map;

    .line 86
    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/a/a/a/j;->a:[B

    return-object v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/a/a/a/j;->b:I

    return v0
.end method
