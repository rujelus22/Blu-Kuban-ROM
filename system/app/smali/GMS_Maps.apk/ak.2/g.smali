.class public Lak/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lak/g;


# instance fields
.field private b:Lak/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lak/g;

    invoke-direct {v0}, Lak/g;-><init>()V

    sput-object v0, Lak/g;->a:Lak/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2

    sget-object v0, Lak/g;->a:Lak/g;

    iget-object v0, v0, Lak/g;->b:Lak/h;

    invoke-interface {v0, p0}, Lak/h;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lak/h;)V
    .registers 2

    sget-object v0, Lak/g;->a:Lak/g;

    iput-object p0, v0, Lak/g;->b:Lak/h;

    return-void
.end method
