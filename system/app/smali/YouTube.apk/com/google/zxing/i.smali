.class public final Lcom/google/zxing/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/zxing/i;

.field public static final b:Lcom/google/zxing/i;

.field public static final c:Lcom/google/zxing/i;

.field public static final d:Lcom/google/zxing/i;

.field public static final e:Lcom/google/zxing/i;

.field public static final f:Lcom/google/zxing/i;

.field public static final g:Lcom/google/zxing/i;

.field private static final h:Ljava/util/Hashtable;


# instance fields
.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/zxing/i;->h:Ljava/util/Hashtable;

    .line 38
    new-instance v0, Lcom/google/zxing/i;

    const-string v1, "OTHER"

    invoke-direct {v0, v1}, Lcom/google/zxing/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/i;->a:Lcom/google/zxing/i;

    .line 47
    new-instance v0, Lcom/google/zxing/i;

    const-string v1, "ORIENTATION"

    invoke-direct {v0, v1}, Lcom/google/zxing/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/i;->b:Lcom/google/zxing/i;

    .line 58
    new-instance v0, Lcom/google/zxing/i;

    const-string v1, "BYTE_SEGMENTS"

    invoke-direct {v0, v1}, Lcom/google/zxing/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/i;->c:Lcom/google/zxing/i;

    .line 64
    new-instance v0, Lcom/google/zxing/i;

    const-string v1, "ERROR_CORRECTION_LEVEL"

    invoke-direct {v0, v1}, Lcom/google/zxing/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/i;->d:Lcom/google/zxing/i;

    .line 69
    new-instance v0, Lcom/google/zxing/i;

    const-string v1, "ISSUE_NUMBER"

    invoke-direct {v0, v1}, Lcom/google/zxing/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/i;->e:Lcom/google/zxing/i;

    .line 75
    new-instance v0, Lcom/google/zxing/i;

    const-string v1, "SUGGESTED_PRICE"

    invoke-direct {v0, v1}, Lcom/google/zxing/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/i;->f:Lcom/google/zxing/i;

    .line 81
    new-instance v0, Lcom/google/zxing/i;

    const-string v1, "POSSIBLE_COUNTRY"

    invoke-direct {v0, v1}, Lcom/google/zxing/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/i;->g:Lcom/google/zxing/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/zxing/i;->i:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/google/zxing/i;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/zxing/i;->i:Ljava/lang/String;

    return-object v0
.end method
