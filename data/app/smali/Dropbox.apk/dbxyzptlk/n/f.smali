.class final Ldbxyzptlk/n/f;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Iterator;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Iterator;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Ldbxyzptlk/n/f;->a:I

    .line 48
    iput-object p1, p0, Ldbxyzptlk/n/f;->b:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Ldbxyzptlk/n/f;->c:Ljava/util/Iterator;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Iterator;Ldbxyzptlk/n/e;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ldbxyzptlk/n/f;-><init>(Ljava/lang/String;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a()Ldbxyzptlk/n/k;
    .registers 5

    .prologue
    .line 56
    iget v0, p0, Ldbxyzptlk/n/f;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldbxyzptlk/n/f;->a:I

    .line 57
    new-instance v1, Ldbxyzptlk/n/k;

    iget-object v2, p0, Ldbxyzptlk/n/f;->c:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ldbxyzptlk/n/f;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Ldbxyzptlk/n/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ldbxyzptlk/n/k;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Ldbxyzptlk/n/f;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Ldbxyzptlk/n/f;->a()Ldbxyzptlk/n/k;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
