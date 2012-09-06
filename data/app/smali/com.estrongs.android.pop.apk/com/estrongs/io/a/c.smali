.class public Lcom/estrongs/io/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/io/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)V
    .registers 3

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 4

    return-void
.end method

.method public a(Ljava/lang/String;JI)V
    .registers 5

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
