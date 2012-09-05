.class public Lau/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Date;

.field private final d:Ljava/util/Date;

.field private final e:LaJ/B;

.field private final f:Lau/u;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;LaJ/B;Lau/u;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau/t;->a:Ljava/lang/String;

    iput-object p2, p0, Lau/t;->b:Ljava/lang/String;

    iput-object p3, p0, Lau/t;->c:Ljava/util/Date;

    iput-object p4, p0, Lau/t;->d:Ljava/util/Date;

    iput-object p5, p0, Lau/t;->e:LaJ/B;

    iput-object p6, p0, Lau/t;->f:Lau/u;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lau/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lau/t;->c:Ljava/util/Date;

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lau/t;->d:Ljava/util/Date;

    return-object v0
.end method

.method public d()LaJ/B;
    .registers 2

    iget-object v0, p0, Lau/t;->e:LaJ/B;

    return-object v0
.end method

.method public e()Lau/u;
    .registers 2

    iget-object v0, p0, Lau/t;->f:Lau/u;

    return-object v0
.end method
