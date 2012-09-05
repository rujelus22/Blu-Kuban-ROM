.class public final Lip;
.super Lja;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lja",
        "<",
        "Ljava/util/EnumMap",
        "<**>;>;"
    }
.end annotation


# instance fields
.field final a:Liq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liq",
            "<*>;"
        }
    .end annotation
.end field

.field final b:Lhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Liq;Lhf;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liq",
            "<*>;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    const-class v0, Ljava/util/EnumMap;

    invoke-direct {p0, v0}, Lja;-><init>(Ljava/lang/Class;)V

    .line 31
    iput-object p1, p0, Lip;->a:Liq;

    .line 32
    iput-object p2, p0, Lip;->b:Lhf;

    .line 33
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
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
    .line 21
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->START_OBJECT:Lfg;

    if-eq v0, v1, :cond_f

    const-class v0, Ljava/util/EnumMap;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    :cond_f
    iget-object v0, p0, Lip;->a:Liq;

    invoke-virtual {v0}, Liq;->a()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    :goto_1a
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    sget-object v2, Lfg;->END_OBJECT:Lfg;

    if-eq v0, v2, :cond_4f

    invoke-virtual {p1}, Lfd;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lip;->a:Liq;

    invoke-virtual {v2, v0}, Liq;->a(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lip;->a:Liq;

    invoke-virtual {v0}, Liq;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "value not one of declared Enum instance names"

    invoke-virtual {p2, v0, v1}, Lhc;->b(Ljava/lang/Class;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    :cond_3b
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v2

    sget-object v3, Lfg;->VALUE_NULL:Lfg;

    if-ne v2, v3, :cond_48

    const/4 v2, 0x0

    :goto_44
    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_48
    iget-object v2, p0, Lip;->b:Lhf;

    invoke-virtual {v2, p1, p2}, Lhf;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_44

    :cond_4f
    return-object v1
.end method

.method public final a(Lfd;Lhc;Lht;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p3, p1, p2}, Lht;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
