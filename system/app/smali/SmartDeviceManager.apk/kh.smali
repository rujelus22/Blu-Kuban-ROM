.class public final Lkh;
.super Lkf;
.source "a"


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnd;Lkd;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lkf;-><init>(Lnd;Lkd;)V

    .line 31
    iput-object p3, p0, Lkh;->a:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 52
    sget-object v1, Lfg;->START_OBJECT:Lfg;

    if-ne v0, v1, :cond_4e

    .line 53
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    :cond_d
    move-object v1, v0

    move-object v0, v3

    .line 61
    :goto_f
    sget-object v2, Lfg;->FIELD_NAME:Lfg;

    if-ne v1, v2, :cond_bb

    .line 62
    invoke-virtual {p1}, Lfd;->f()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lfd;->b()Lfg;

    .line 64
    iget-object v2, p0, Lkh;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 65
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lkh;->a(Lhc;Ljava/lang/String;)Lhf;

    move-result-object v1

    .line 67
    if-eqz v0, :cond_eb

    .line 68
    invoke-virtual {v0, p1}, Lnm;->a(Lfd;)Lfd;

    move-result-object p0

    instance-of v0, p0, Lnk;

    if-nez v0, :cond_76

    instance-of v0, p1, Lnk;

    if-nez v0, :cond_76

    new-instance v0, Lnk;

    const/4 v2, 0x2

    new-array v2, v2, [Lfd;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v2}, Lnk;-><init>([Lfd;)V

    .line 73
    :goto_46
    invoke-virtual {v0}, Lfd;->b()Lfg;

    .line 75
    invoke-virtual {v1, v0, p2}, Lhf;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 54
    :cond_4e
    sget-object v1, Lfg;->FIELD_NAME:Lfg;

    if-eq v0, v1, :cond_d

    .line 55
    sget-object v0, Lfg;->START_OBJECT:Lfg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need JSON Object to contain As.PROPERTY type information (for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lhc;->a(Lfd;Lfg;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    .line 68
    :cond_76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v2, p0, Lnk;

    if-eqz v2, :cond_a0

    check-cast p0, Lnk;

    invoke-virtual {p0, v0}, Lnk;->a(Ljava/util/List;)V

    :goto_84
    instance-of v2, p1, Lnk;

    if-eqz v2, :cond_a4

    check-cast p1, Lnk;

    invoke-virtual {p1, v0}, Lnk;->a(Ljava/util/List;)V

    :goto_8d
    new-instance v2, Lnk;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lfd;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lfd;

    invoke-direct {v2, p0}, Lnk;-><init>([Lfd;)V

    move-object v0, v2

    goto :goto_46

    :cond_a0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_a4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    .line 77
    :cond_a8
    if-nez v0, :cond_af

    .line 78
    new-instance v0, Lnm;

    invoke-direct {v0, v3}, Lnm;-><init>(Lfh;)V

    .line 80
    :cond_af
    invoke-virtual {v0, v1}, Lnm;->a(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p1}, Lnm;->b(Lfd;)V

    .line 61
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v1

    goto/16 :goto_f

    .line 84
    :cond_bb
    sget-object v0, Lfg;->FIELD_NAME:Lfg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' that is to contain type id  (for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lhc;->a(Lfd;Lfg;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    :cond_eb
    move-object v0, p1

    goto/16 :goto_46
.end method

.method public final d(Lfd;Lhc;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lkh;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
