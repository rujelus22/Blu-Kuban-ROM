.class public Lorg/mozilla/a/a/h;
.super Lorg/mozilla/a/a/u;


# instance fields
.field a:Lorg/mozilla/a/a/q;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/a/a/u;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/a/a/h;->a:Lorg/mozilla/a/a/q;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/mozilla/a/a/u;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/a/a/h;->a:Lorg/mozilla/a/a/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/a/a/h;->a:Lorg/mozilla/a/a/q;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/mozilla/a/a/h;->a:Lorg/mozilla/a/a/q;

    invoke-interface {v0, p1}, Lorg/mozilla/a/a/q;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public a(Lorg/mozilla/a/a/q;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/a/a/h;->a:Lorg/mozilla/a/a/q;

    return-void
.end method

.method public a([BIZ)Z
    .registers 5

    if-eqz p1, :cond_4

    if-eqz p3, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/a/a/h;->a([BI)Z

    iget-boolean v0, p0, Lorg/mozilla/a/a/h;->i:Z

    goto :goto_5
.end method
