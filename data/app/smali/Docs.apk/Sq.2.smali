.class public LSq;
.super Lase;
.source "AclEntry.java"


# instance fields
.field private a:Ldw;

.field private a:Ldx;

.field private a:Ljava/lang/String;

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lds;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lase;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, LSq;->a:Ljava/lang/String;

    .line 30
    sget-object v0, Ldw;->f:Ldw;

    iput-object v0, p0, LSq;->a:Ldw;

    .line 31
    sget-object v0, Ldx;->e:Ldx;

    iput-object v0, p0, LSq;->a:Ldx;

    .line 32
    const-class v0, Lds;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, LSq;->a:Ljava/util/Set;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, LSq;->a:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lase;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, LSq;->a:Ljava/lang/String;

    .line 30
    sget-object v0, Ldw;->f:Ldw;

    iput-object v0, p0, LSq;->a:Ldw;

    .line 31
    sget-object v0, Ldx;->e:Ldx;

    iput-object v0, p0, LSq;->a:Ldx;

    .line 32
    const-class v0, Lds;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, LSq;->a:Ljava/util/Set;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, LSq;->a:Z

    .line 40
    invoke-static {p2, p1}, Ldy;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LSq;->q(Ljava/lang/String;)V

    .line 41
    const-string v0, "http://schemas.google.com/acl/2007#accessRule"

    invoke-virtual {p0, v0}, LSq;->l(Ljava/lang/String;)V

    .line 42
    const-string v0, "http://schemas.google.com/g/2005#kind"

    invoke-virtual {p0, v0}, LSq;->m(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static a(Ljava/lang/String;Ldq;)LSq;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 140
    new-instance v1, LSq;

    invoke-virtual {p1}, Ldq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, LSq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Ldq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, LSq;->a(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Ldq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldy;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, LSq;->s(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Ldq;->a()Ldw;

    move-result-object v0

    sget-object v2, Ldw;->e:Ldw;

    if-eq v0, v2, :cond_45

    .line 144
    invoke-virtual {p1}, Ldq;->a()Ldw;

    move-result-object v0

    invoke-virtual {v0}, Ldw;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, LSq;->b(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Ldq;->a()Ldx;

    move-result-object v0

    invoke-virtual {v0}, Ldx;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, LSq;->c(Ljava/lang/String;)V

    .line 147
    :cond_45
    invoke-virtual {p1}, Ldq;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lds;

    .line 148
    invoke-virtual {v1, v0}, LSq;->a(Lds;)V

    goto :goto_4d

    .line 150
    :cond_5d
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ldq;
    .registers 4
    .parameter

    .prologue
    .line 128
    new-instance v0, Ldt;

    invoke-direct {v0}, Ldt;-><init>()V

    invoke-virtual {v0, p1}, Ldt;->a(Ljava/lang/String;)Ldt;

    move-result-object v0

    iget-object v1, p0, LSq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldt;->b(Ljava/lang/String;)Ldt;

    move-result-object v0

    iget-object v1, p0, LSq;->a:Ldx;

    invoke-virtual {v0, v1}, Ldt;->a(Ldx;)Ldt;

    move-result-object v0

    iget-object v1, p0, LSq;->a:Ldw;

    invoke-virtual {v0, v1}, Ldt;->a(Ldw;)Ldt;

    move-result-object v0

    iget-object v1, p0, LSq;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ldt;->a(Ljava/util/Set;)Ldt;

    move-result-object v0

    iget-boolean v1, p0, LSq;->a:Z

    invoke-virtual {v0, v1}, Ldt;->a(Z)Ldt;

    move-result-object v0

    invoke-virtual {v0}, Ldt;->a()Ldq;

    move-result-object v0

    return-object v0
.end method

.method public a()Ldw;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, LSq;->a:Ldw;

    return-object v0
.end method

.method public a()Ldx;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, LSq;->a:Ldx;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, LSq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, LSq;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Lds;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, LSq;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, LSq;->a:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, LSq;->a:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldw;->valueOf(Ljava/lang/String;)Ldw;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_10

    move-result-object v0

    .line 85
    :goto_8
    sget-object v1, Ldw;->d:Ldw;

    if-ne v0, v1, :cond_2c

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, LSq;->a:Z

    .line 90
    :cond_f
    :goto_f
    return-void

    .line 81
    :catch_10
    move-exception v0

    .line 82
    const-string v0, "AclEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown role: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v0, Ldw;->f:Ldw;

    goto :goto_8

    .line 87
    :cond_2c
    sget-object v1, Ldw;->f:Ldw;

    if-eq v0, v1, :cond_f

    .line 88
    iput-object v0, p0, LSq;->a:Ldw;

    goto :goto_f
.end method

.method public c(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldx;->valueOf(Ljava/lang/String;)Ldx;

    move-result-object v0

    iput-object v0, p0, LSq;->a:Ldx;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b

    .line 107
    :goto_a
    return-void

    .line 103
    :catch_b
    move-exception v0

    .line 104
    const-string v0, "AclEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown scope: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Ldx;->e:Ldx;

    iput-object v0, p0, LSq;->a:Ldx;

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\rACL Entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LSq;->a:Ldw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LSq;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LSq;->a:Ldx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LSq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, LSq;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
