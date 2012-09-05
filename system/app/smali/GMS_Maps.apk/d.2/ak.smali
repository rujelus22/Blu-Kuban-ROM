.class final Ld/ak;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:LW/a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLW/a;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ld/ak;->a:Z

    iput-object p2, p0, Ld/ak;->b:LW/a;

    iput-object p3, p0, Ld/ak;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ld/ak;->a:Z

    iput-object p2, p0, Ld/ak;->c:Ljava/lang/String;

    iput-object p3, p0, Ld/ak;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Ld/ak;->a:Z

    return v0
.end method

.method public b()LW/a;
    .registers 2

    iget-object v0, p0, Ld/ak;->b:LW/a;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/ak;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/ak;->d:Ljava/lang/String;

    return-object v0
.end method
