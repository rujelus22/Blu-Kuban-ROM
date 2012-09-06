.class public Lcom/google/googlenav/ui/android/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[F

.field public static final b:[F

.field public static final c:[F

.field public static final d:[F


# instance fields
.field public volatile e:Ljava/lang/String;

.field public volatile f:I

.field public volatile g:[F

.field public volatile h:[F

.field public volatile i:Z

.field public volatile j:Z

.field private k:Lcom/google/googlenav/ui/android/r;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 885
    new-array v0, v1, [F

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/google/googlenav/ui/android/w;->a:[F

    .line 886
    new-array v0, v1, [F

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/google/googlenav/ui/android/w;->b:[F

    .line 887
    new-array v0, v1, [F

    fill-array-data v0, :array_36

    sput-object v0, Lcom/google/googlenav/ui/android/w;->c:[F

    .line 888
    new-array v0, v1, [F

    fill-array-data v0, :array_42

    sput-object v0, Lcom/google/googlenav/ui/android/w;->d:[F

    return-void

    .line 885
    :array_1e
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 886
    :array_2a
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 887
    :array_36
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
    .end array-data

    .line 888
    :array_42
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3ft
    .end array-data
.end method

.method private constructor <init>(Lcom/google/googlenav/ui/android/r;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    sget-object v0, Lcom/google/googlenav/ui/android/w;->c:[F

    iput-object v0, p0, Lcom/google/googlenav/ui/android/w;->g:[F

    .line 910
    sget-object v0, Lcom/google/googlenav/ui/android/w;->b:[F

    iput-object v0, p0, Lcom/google/googlenav/ui/android/w;->h:[F

    .line 915
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/w;->i:Z

    .line 920
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/w;->j:Z

    .line 923
    iput-object p1, p0, Lcom/google/googlenav/ui/android/w;->k:Lcom/google/googlenav/ui/android/r;

    .line 924
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/android/r;Lcom/google/googlenav/ui/android/s;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 883
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/w;-><init>(Lcom/google/googlenav/ui/android/r;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/googlenav/ui/android/w;->k:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->q(Lcom/google/googlenav/ui/android/r;)V

    .line 928
    iget-object v0, p0, Lcom/google/googlenav/ui/android/w;->k:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->r(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/AndroidVectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->m()V

    .line 929
    return-void
.end method
