.class public LU/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:LU/g;


# instance fields
.field private b:LU/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LU/g;

    invoke-direct {v0}, LU/g;-><init>()V

    sput-object v0, LU/g;->a:LU/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2

    sget-object v0, LU/g;->a:LU/g;

    iget-object v0, v0, LU/g;->b:LU/h;

    invoke-interface {v0, p0}, LU/h;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(LU/h;)V
    .registers 2

    sget-object v0, LU/g;->a:LU/g;

    iput-object p0, v0, LU/g;->b:LU/h;

    return-void
.end method
