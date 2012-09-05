.class public LaX/j;
.super Lcom/google/googlenav/ui/aj;


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:I

.field private final c:Z

.field private d:Lah/f;


# direct methods
.method public constructor <init>(JI)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LaX/j;-><init>(JIZ)V

    return-void
.end method

.method public constructor <init>(JIZ)V
    .registers 6

    invoke-direct {p0}, Lcom/google/googlenav/ui/aj;-><init>()V

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, LaX/j;->a:Ljava/lang/Long;

    iput p3, p0, LaX/j;->b:I

    iput-boolean p4, p0, LaX/j;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, LaX/j;-><init>(Ljava/lang/Long;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LaX/j;-><init>(Ljava/lang/Long;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;IZ)V
    .registers 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/aj;-><init>()V

    iput-object p1, p0, LaX/j;->a:Ljava/lang/Long;

    iput p2, p0, LaX/j;->b:I

    iput-boolean p3, p0, LaX/j;->c:Z

    return-void
.end method

.method static synthetic a(LaX/j;Lah/f;)Lah/f;
    .registers 2

    iput-object p1, p0, LaX/j;->d:Lah/f;

    return-object p1
.end method

.method static synthetic a(LaX/j;)Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, LaX/j;->a:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic b(LaX/j;)Z
    .registers 2

    iget-boolean v0, p0, LaX/j;->c:Z

    return v0
.end method

.method static synthetic c(LaX/j;)Lah/f;
    .registers 2

    iget-object v0, p0, LaX/j;->d:Lah/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, LaX/j;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, LaX/j;->b:I

    return v0
.end method
