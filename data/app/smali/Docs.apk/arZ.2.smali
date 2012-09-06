.class public LarZ;
.super LarK;
.source "HttpException.java"


# instance fields
.field private final a:I

.field private a:J

.field private final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/io/InputStream;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, LarK;-><init>(Ljava/lang/String;)V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LarZ;->a:J

    .line 68
    iput p2, p0, LarZ;->a:I

    .line 69
    iput-object p3, p0, LarZ;->a:Ljava/io/InputStream;

    .line 70
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, LarZ;->a:I

    return v0
.end method

.method public a()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, LarZ;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 52
    iput-wide p1, p0, LarZ;->a:J

    .line 53
    return-void
.end method
