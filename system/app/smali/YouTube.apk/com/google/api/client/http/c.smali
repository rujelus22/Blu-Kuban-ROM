.class public final Lcom/google/api/client/http/c;
.super Lcom/google/api/client/http/b;
.source "SourceFile"


# static fields
.field private static final d:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/api/client/http/c;->d:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lcom/google/api/client/http/c;->d:[B

    invoke-direct {p0, v0}, Lcom/google/api/client/http/c;-><init>([B)V

    .line 83
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/api/client/http/b;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {p2}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/api/client/http/c;->c:[B

    .line 93
    return-void
.end method

.method private constructor <init>([B)V
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/api/client/http/c;-><init>(Ljava/lang/String;[B)V

    .line 60
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/c;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 115
    new-instance v0, Lcom/google/api/client/http/c;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/api/client/util/u;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/c;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->a(Ljava/lang/String;)Lcom/google/api/client/http/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/c;

    return-object v0
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/api/client/http/c;->c:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method protected final d()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 128
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/c;->c:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
