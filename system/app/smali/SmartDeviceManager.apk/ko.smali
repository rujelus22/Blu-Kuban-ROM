.class public final Lko;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lke;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lko$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lke",
        "<",
        "Lko;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lgb$b;

.field protected b:Lgb$a;

.field protected c:Ljava/lang/String;

.field protected d:Lkd;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lnd;Ljava/util/Collection;ZZ)Lkd;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Ljava/util/Collection",
            "<",
            "Lkb;",
            ">;ZZ)",
            "Lkd;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lko;->d:Lkd;

    if-eqz v0, :cond_7

    .line 129
    iget-object v0, p0, Lko;->d:Lkd;

    .line 140
    :goto_6
    return-object v0

    .line 131
    :cond_7
    iget-object v0, p0, Lko;->a:Lgb$b;

    if-nez v0, :cond_13

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not build, \'init()\' not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_13
    sget-object v0, Lko$1;->b:[I

    iget-object v1, p0, Lko;->a:Lgb$b;

    invoke-virtual {v1}, Lgb$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not know how to construct standard type id resolver for idType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lko;->a:Lgb$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :pswitch_3b
    new-instance v0, Lkl;

    invoke-direct {v0, p1}, Lkl;-><init>(Lnd;)V

    goto :goto_6

    .line 138
    :pswitch_41
    new-instance v0, Lkm;

    invoke-direct {v0, p1}, Lkm;-><init>(Lnd;)V

    goto :goto_6

    .line 140
    :pswitch_47
    invoke-static {p1, p2, p3, p4}, Lkr;->a(Lnd;Ljava/util/Collection;ZZ)Lkr;

    move-result-object v0

    goto :goto_6

    .line 134
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_41
        :pswitch_47
    .end packed-switch
.end method


# virtual methods
.method public final a(Lnd;Ljava/util/Collection;)Lhu;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Ljava/util/Collection",
            "<",
            "Lkb;",
            ">;)",
            "Lhu;"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lko;->a(Lnd;Ljava/util/Collection;ZZ)Lkd;

    move-result-object v0

    .line 59
    sget-object v1, Lko$1;->a:[I

    iget-object v2, p0, Lko;->b:Lgb$a;

    invoke-virtual {v2}, Lgb$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lko;->b:Lgb$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_2e
    new-instance v1, Lkg;

    invoke-direct {v1, v0}, Lkg;-><init>(Lkd;)V

    move-object v0, v1

    .line 65
    :goto_34
    return-object v0

    .line 63
    :pswitch_35
    new-instance v1, Lki;

    iget-object v2, p0, Lko;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lki;-><init>(Lkd;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_34

    .line 65
    :pswitch_3e
    new-instance v1, Lkk;

    invoke-direct {v1, v0}, Lkk;-><init>(Lkd;)V

    move-object v0, v1

    goto :goto_34

    .line 59
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_35
        :pswitch_3e
    .end packed-switch
.end method

.method public final bridge synthetic a(Lgb$a;)Lke;
    .registers 4
    .parameter

    .prologue
    .line 19
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "includeAs can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lko;->b:Lgb$a;

    return-object p0
.end method

.method public final bridge synthetic a(Lgb$b;Lkd;)Lke;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 19
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "idType can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lko;->a:Lgb$b;

    iput-object p2, p0, Lko;->d:Lkd;

    invoke-virtual {p1}, Lgb$b;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lko;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Lke;
    .registers 3
    .parameter

    .prologue
    .line 19
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    :cond_8
    iget-object v0, p0, Lko;->a:Lgb$b;

    invoke-virtual {v0}, Lgb$b;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lko;->c:Ljava/lang/String;

    return-object p0

    :cond_11
    move-object v0, p1

    goto :goto_e
.end method

.method public final b(Lnd;Ljava/util/Collection;)Lht;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Ljava/util/Collection",
            "<",
            "Lkb;",
            ">;)",
            "Lht;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lko;->a(Lnd;Ljava/util/Collection;ZZ)Lkd;

    move-result-object v0

    .line 77
    sget-object v1, Lko$1;->a:[I

    iget-object v2, p0, Lko;->b:Lgb$a;

    invoke-virtual {v2}, Lgb$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lko;->b:Lgb$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_2e
    new-instance v1, Lkf;

    invoke-direct {v1, p1, v0}, Lkf;-><init>(Lnd;Lkd;)V

    move-object v0, v1

    .line 83
    :goto_34
    return-object v0

    .line 81
    :pswitch_35
    new-instance v1, Lkh;

    iget-object v2, p0, Lko;->c:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2}, Lkh;-><init>(Lnd;Lkd;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_34

    .line 83
    :pswitch_3e
    new-instance v1, Lkj;

    invoke-direct {v1, p1, v0}, Lkj;-><init>(Lnd;Lkd;)V

    move-object v0, v1

    goto :goto_34

    .line 77
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_35
        :pswitch_3e
    .end packed-switch
.end method
