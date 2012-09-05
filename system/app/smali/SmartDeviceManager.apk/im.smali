.class public final Lim;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final b:Z

.field c:Ljp;

.field d:Ljp;

.field e:Ljp;

.field f:Ljp;

.field g:Ljp;

.field h:[Liy;

.field i:Ljm;

.field j:Ljm;

.field k:Ljm;

.field l:Ljm;

.field m:Ljm;

.field n:[Liy;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Z)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lim;->h:[Liy;

    .line 24
    iput-object v0, p0, Lim;->n:[Liy;

    .line 27
    iput-boolean p2, p0, Lim;->b:Z

    .line 28
    iput-object p1, p0, Lim;->a:Ljava/lang/Class;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Lil$c;
    .registers 6

    .prologue
    .line 111
    iget-object v0, p0, Lim;->m:Ljm;

    if-nez v0, :cond_a

    iget-object v0, p0, Lim;->g:Ljp;

    if-nez v0, :cond_a

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lil$c;

    iget-object v1, p0, Lim;->m:Ljm;

    iget-object v2, p0, Lim;->n:[Liy;

    iget-object v3, p0, Lim;->g:Ljp;

    iget-object v4, p0, Lim;->h:[Liy;

    invoke-direct {v0, v1, v2, v3, v4}, Lil$c;-><init>(Ljm;[Liy;Ljp;[Liy;)V

    goto :goto_9
.end method

.method final a(Ljm;Ljm;Ljava/lang/String;)Ljm;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    if-eqz p2, :cond_2f

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " constructors: already had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2f
    iget-boolean v0, p0, Lim;->b:Z

    if-eqz v0, :cond_3a

    .line 131
    invoke-virtual {p1}, Ljm;->d()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lme;->a(Ljava/lang/reflect/Member;)V

    .line 133
    :cond_3a
    return-object p1
.end method

.method final a(Ljp;Ljp;Ljava/lang/String;)Ljp;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    if-eqz p2, :cond_2f

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " factory methods: already had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_2f
    iget-boolean v0, p0, Lim;->b:Z

    if-eqz v0, :cond_38

    .line 143
    iget-object v0, p1, Ljp;->a:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lme;->a(Ljava/lang/reflect/Member;)V

    .line 145
    :cond_38
    return-object p1
.end method

.method public final a(Ljm;[Liy;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lim;->m:Ljm;

    const-string v1, "property-based"

    invoke-virtual {p0, p1, v0, v1}, Lim;->a(Ljm;Ljm;Ljava/lang/String;)Ljm;

    move-result-object v0

    iput-object v0, p0, Lim;->m:Ljm;

    .line 54
    iput-object p2, p0, Lim;->n:[Liy;

    .line 55
    return-void
.end method

.method public final a(Ljp;[Liy;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lim;->g:Ljp;

    const-string v1, "property-based"

    invoke-virtual {p0, p1, v0, v1}, Lim;->a(Ljp;Ljp;Ljava/lang/String;)Ljp;

    move-result-object v0

    iput-object v0, p0, Lim;->g:Ljp;

    .line 74
    iput-object p2, p0, Lim;->h:[Liy;

    .line 75
    return-void
.end method
