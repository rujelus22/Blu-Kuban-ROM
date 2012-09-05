.class public LaU/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:LaJ/B;

.field private final b:Ljava/lang/String;

.field private final c:LaJ/B;

.field private final d:LaJ/B;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(LaJ/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LaJ/B;LaJ/B;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaU/f;->a:LaJ/B;

    iput-object p2, p0, LaU/f;->b:Ljava/lang/String;

    iput-object p3, p0, LaU/f;->e:Ljava/lang/String;

    iput-object p4, p0, LaU/f;->f:Ljava/lang/String;

    iput-object p5, p0, LaU/f;->d:LaJ/B;

    iput-object p6, p0, LaU/f;->c:LaJ/B;

    return-void
.end method


# virtual methods
.method public a()LaJ/B;
    .registers 2

    iget-object v0, p0, LaU/f;->a:LaJ/B;

    return-object v0
.end method

.method public b()LaJ/B;
    .registers 2

    iget-object v0, p0, LaU/f;->d:LaJ/B;

    return-object v0
.end method

.method public c()LaJ/B;
    .registers 2

    iget-object v0, p0, LaU/f;->c:LaJ/B;

    return-object v0
.end method
