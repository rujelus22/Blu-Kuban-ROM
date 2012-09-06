.class public final Lcom/google/zxing/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/zxing/a;

.field public static final b:Lcom/google/zxing/a;

.field public static final c:Lcom/google/zxing/a;

.field public static final d:Lcom/google/zxing/a;

.field public static final e:Lcom/google/zxing/a;

.field public static final f:Lcom/google/zxing/a;

.field public static final g:Lcom/google/zxing/a;

.field public static final h:Lcom/google/zxing/a;

.field public static final i:Lcom/google/zxing/a;

.field public static final j:Lcom/google/zxing/a;

.field public static final k:Lcom/google/zxing/a;

.field public static final l:Lcom/google/zxing/a;

.field public static final m:Lcom/google/zxing/a;

.field public static final n:Lcom/google/zxing/a;

.field public static final o:Lcom/google/zxing/a;

.field public static final p:Lcom/google/zxing/a;

.field private static final q:Ljava/util/Hashtable;


# instance fields
.field private final r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/zxing/a;->q:Ljava/util/Hashtable;

    .line 33
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "AZTEC"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->a:Lcom/google/zxing/a;

    .line 36
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "CODABAR"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->b:Lcom/google/zxing/a;

    .line 39
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "CODE_39"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->c:Lcom/google/zxing/a;

    .line 42
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "CODE_93"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->d:Lcom/google/zxing/a;

    .line 45
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "CODE_128"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->e:Lcom/google/zxing/a;

    .line 48
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "DATA_MATRIX"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->f:Lcom/google/zxing/a;

    .line 51
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "EAN_8"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->g:Lcom/google/zxing/a;

    .line 54
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "EAN_13"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    .line 57
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "ITF"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->i:Lcom/google/zxing/a;

    .line 60
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "PDF_417"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->j:Lcom/google/zxing/a;

    .line 63
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "QR_CODE"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->k:Lcom/google/zxing/a;

    .line 66
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "RSS_14"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    .line 69
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "RSS_EXPANDED"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->m:Lcom/google/zxing/a;

    .line 72
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "UPC_A"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;

    .line 75
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "UPC_E"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;

    .line 78
    new-instance v0, Lcom/google/zxing/a;

    const-string v1, "UPC_EAN_EXTENSION"

    invoke-direct {v0, v1}, Lcom/google/zxing/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/a;->p:Lcom/google/zxing/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/zxing/a;->r:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/google/zxing/a;->q:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/zxing/a;->r:Ljava/lang/String;

    return-object v0
.end method
