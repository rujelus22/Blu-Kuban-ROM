.class public Ly/o;
.super Ly/s;


# static fields
.field public static final a:Ly/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/o;

    invoke-direct {v0}, Ly/o;-><init>()V

    sput-object v0, Ly/o;->a:Ly/o;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly/s;-><init>()V

    return-void
.end method


# virtual methods
.method public C()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "START"

    return-object v0
.end method
