.class public Lcom/google/googlenav/common/io/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/googlenav/common/io/e;


# instance fields
.field private b:Lcom/google/googlenav/common/io/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/googlenav/common/io/e;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/e;-><init>()V

    sput-object v0, Lcom/google/googlenav/common/io/e;->a:Lcom/google/googlenav/common/io/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2
    .parameter

    .prologue
    .line 45
    sget-object v0, Lcom/google/googlenav/common/io/e;->a:Lcom/google/googlenav/common/io/e;

    iget-object v0, v0, Lcom/google/googlenav/common/io/e;->b:Lcom/google/googlenav/common/io/f;

    invoke-interface {v0, p0}, Lcom/google/googlenav/common/io/f;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/f;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    sget-object v0, Lcom/google/googlenav/common/io/e;->a:Lcom/google/googlenav/common/io/e;

    iput-object p0, v0, Lcom/google/googlenav/common/io/e;->b:Lcom/google/googlenav/common/io/f;

    .line 30
    return-void
.end method
