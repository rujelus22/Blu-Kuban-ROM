.class public LaB/b;
.super LaB/h;


# static fields
.field public static final a:LaB/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaB/b;

    invoke-direct {v0}, LaB/b;-><init>()V

    sput-object v0, LaB/b;->a:LaB/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LaB/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "Josh S., Ronghui Z."

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x5b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x5a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method
