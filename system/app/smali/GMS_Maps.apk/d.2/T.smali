.class Ld/T;
.super Ljava/lang/Object;

# interfaces
.implements Ld/aB;


# static fields
.field private static final a:Ld/T;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ld/T;

    invoke-direct {v0}, Ld/T;-><init>()V

    sput-object v0, Ld/T;->a:Ld/T;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ld/T;
    .registers 1

    sget-object v0, Ld/T;->a:Ld/T;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 2

    return-void
.end method
