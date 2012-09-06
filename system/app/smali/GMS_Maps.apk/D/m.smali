.class public LD/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/LinkedList;

.field private final c:LD/j;

.field private final d:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, LD/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LD/m;->a:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, LD/m;->c:LD/j;

    iget-object v1, p0, LD/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, LD/j;->a(Ljava/util/List;)V

    .line 93
    iget-object v0, p0, LD/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 94
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 100
    invoke-direct {p0}, LD/m;->c()V

    .line 101
    iget-object v0, p0, LD/m;->c:LD/j;

    invoke-virtual {v0}, LD/j;->a()V

    .line 102
    return-void
.end method

.method public a(LC/R;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    new-instance v0, LD/d;

    invoke-direct {v0, p1}, LD/d;-><init>(LC/R;)V

    invoke-virtual {p0, v0}, LD/m;->a(LD/g;)V

    .line 55
    return-void
.end method

.method public a(LD/g;)V
    .registers 4
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, LD/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 86
    invoke-direct {p0}, LD/m;->c()V

    .line 88
    :cond_d
    iget-object v0, p0, LD/m;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 61
    new-instance v0, LD/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, LD/e;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {p0, v0}, LD/m;->a(LD/g;)V

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, LD/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, LD/f;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, LD/m;->a(LD/g;)V

    .line 79
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, LD/m;->d:Ljava/io/File;

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, LD/m;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 108
    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 69
    new-instance v0, LD/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, LD/e;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {p0, v0}, LD/m;->a(LD/g;)V

    .line 71
    return-void
.end method
