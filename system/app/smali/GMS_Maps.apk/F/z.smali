.class public LF/z;
.super Ljava/lang/Object;

# interfaces
.implements LF/x;


# static fields
.field static final a:LK/bu;


# instance fields
.field private final b:LF/y;

.field private final c:LK/bu;

.field private d:LG/m;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "gps"

    const-string v1, "network"

    invoke-static {v0, v1}, LK/bu;->b(Ljava/lang/Object;Ljava/lang/Object;)LK/bu;

    move-result-object v0

    sput-object v0, LF/z;->a:LK/bu;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;LF/o;)LF/b;
    .registers 5

    const-string v0, "location_recorder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, LG/c;

    iget-object v1, p0, LF/z;->d:LG/m;

    invoke-direct {v0, v1}, LG/c;-><init>(LG/m;)V

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, LF/z;->b:LF/y;

    invoke-virtual {v0, p1, p2}, LF/y;->a(Ljava/lang/String;LF/o;)LF/b;

    move-result-object v0

    goto :goto_f
.end method

.method public a(Landroid/os/Handler$Callback;)LI/i;
    .registers 3

    iget-object v0, p0, LF/z;->b:LF/y;

    invoke-virtual {v0, p1}, LF/y;->a(Landroid/os/Handler$Callback;)LI/i;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, LF/z;->c:LK/bu;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 3

    const-string v0, "location_recorder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, LF/z;->a:LK/bu;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, LF/z;->b:LF/y;

    invoke-virtual {v0, p1}, LF/y;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_a
.end method
