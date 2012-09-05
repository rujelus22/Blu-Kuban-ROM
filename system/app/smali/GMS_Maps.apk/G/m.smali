.class public LG/m;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/LinkedList;

.field private final c:LG/j;

.field private final d:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, LG/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/m;->a:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, LG/m;->c:LG/j;

    iget-object v1, p0, LG/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, LG/j;->a(Ljava/util/List;)V

    iget-object v0, p0, LG/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-direct {p0}, LG/m;->c()V

    iget-object v0, p0, LG/m;->c:LG/j;

    invoke-virtual {v0}, LG/j;->a()V

    return-void
.end method

.method public a(LF/R;)V
    .registers 3

    new-instance v0, LG/d;

    invoke-direct {v0, p1}, LG/d;-><init>(LF/R;)V

    invoke-virtual {p0, v0}, LG/m;->a(LG/g;)V

    return-void
.end method

.method public a(LG/g;)V
    .registers 4

    iget-object v0, p0, LG/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    invoke-direct {p0}, LG/m;->c()V

    :cond_d
    iget-object v0, p0, LG/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    new-instance v0, LG/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, LG/e;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {p0, v0}, LG/m;->a(LG/g;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 6

    new-instance v0, LG/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, LG/f;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, LG/m;->a(LG/g;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, LG/m;->d:Ljava/io/File;

    if-eqz v0, :cond_9

    iget-object v0, p0, LG/m;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    new-instance v0, LG/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, LG/e;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {p0, v0}, LG/m;->a(LG/g;)V

    return-void
.end method
