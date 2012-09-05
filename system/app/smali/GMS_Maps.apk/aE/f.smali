.class public final LaE/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lam/b;

.field private final b:[LaI/c;


# direct methods
.method private constructor <init>(Lam/b;[LaI/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaE/f;->a:Lam/b;

    iput-object p2, p0, LaE/f;->b:[LaI/c;

    return-void
.end method

.method synthetic constructor <init>(Lam/b;[LaI/c;LaE/e;)V
    .registers 4

    invoke-direct {p0, p1, p2}, LaE/f;-><init>(Lam/b;[LaI/c;)V

    return-void
.end method


# virtual methods
.method public a()Lam/b;
    .registers 2

    iget-object v0, p0, LaE/f;->a:Lam/b;

    return-object v0
.end method

.method public b()[LaI/c;
    .registers 2

    iget-object v0, p0, LaE/f;->b:[LaI/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationInfo[location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaE/f;->a:Lam/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifiInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaE/f;->b:[LaI/c;

    invoke-static {v1}, LaI/c;->a([LaI/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
