.class public Lbu;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lbu;


# instance fields
.field private a:I

.field private a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lbu;

    invoke-direct {v0}, Lbu;-><init>()V

    sput-object v0, Lbu;->a:Lbu;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lbu;->a:Ljava/util/Random;

    return-void
.end method

.method public static a()Lbu;
    .registers 1

    sget-object v0, Lbu;->a:Lbu;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lbu;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lbu;->a:I

    iget v0, p0, Lbu;->a:I

    return v0
.end method
