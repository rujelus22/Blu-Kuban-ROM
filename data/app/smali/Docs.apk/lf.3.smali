.class public Llf;
.super Ljava/lang/Object;
.source "GDataConverterImpl.java"

# interfaces
.implements Lle;


# static fields
.field private static final a:Llf;


# instance fields
.field private final a:Llz;

.field private final b:Llz;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Llf;

    invoke-direct {v0}, Llf;-><init>()V

    sput-object v0, Llf;->a:Llf;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Llz;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Llz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llf;->a:Llz;

    .line 27
    new-instance v0, Llz;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSz"

    invoke-direct {v0, v1}, Llz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llf;->b:Llz;

    .line 28
    iget-object v0, p0, Llf;->a:Llz;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Llz;->a(Ljava/util/TimeZone;)V

    .line 29
    iget-object v0, p0, Llf;->b:Llz;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Llz;->a(Ljava/util/TimeZone;)V

    .line 30
    return-void
.end method

.method public static b(Ljava/util/Date;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llf;->a:Llf;

    iget-object v1, v1, Llf;->a:Llz;

    invoke-virtual {v1, p0}, Llz;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Date;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Llf;->a:Llz;

    invoke-virtual {v1, p1}, Llz;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .parameter

    .prologue
    .line 128
    if-nez p1, :cond_4

    .line 129
    const/4 v0, 0x0

    .line 133
    :goto_3
    return-object v0

    .line 131
    :cond_4
    const-string v0, "z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_14
    iget-object v0, p0, Llf;->a:Llz;

    .line 133
    :goto_16
    invoke-virtual {v0, p1}, Llz;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_3

    .line 131
    :cond_1b
    iget-object v0, p0, Llf;->b:Llz;

    goto :goto_16
.end method

.method public a(LSs;LkM;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Llf;->a(LSs;LkT;)V

    .line 117
    return-void
.end method

.method public a(LSs;LkR;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2}, Llf;->a(LSs;LkT;)V

    .line 122
    invoke-virtual {p1}, LSs;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, LkR;->a(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, LSs;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, LkR;->h(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public a(LSs;LkT;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 42
    invoke-virtual {p2}, LkT;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LSs;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, LafQ;->a(Z)V

    .line 44
    invoke-virtual {p1}, LSs;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Llf;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, LSs;->h()Ljava/lang/String;

    move-result-object v5

    .line 46
    instance-of v0, p2, LkR;

    if-eqz v0, :cond_3d

    move-object v0, p2

    .line 47
    check-cast v0, LkR;

    .line 52
    if-eqz v5, :cond_c4

    .line 53
    invoke-virtual {v0}, LkR;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 57
    :goto_2e
    if-nez v4, :cond_3a

    .line 58
    sget-object v4, LQM;->a:LQM;

    invoke-virtual {v0, v3, v4}, LkR;->a(ZLQM;)V

    .line 59
    sget-object v4, LQM;->b:LQM;

    invoke-virtual {v0, v3, v4}, LkR;->a(ZLQM;)V

    .line 61
    :cond_3a
    invoke-virtual {v0, v5}, LkR;->b(Ljava/lang/String;)V

    .line 63
    :cond_3d
    invoke-virtual {p2, v1}, LkT;->b(Ljava/util/Date;)V

    .line 65
    invoke-virtual {p1}, LSs;->s()Ljava/lang/String;

    move-result-object v0

    .line 67
    if-nez v0, :cond_ce

    move-object v0, v1

    :goto_47
    invoke-virtual {p2, v0}, LkT;->a(Ljava/util/Date;)V

    .line 72
    invoke-virtual {p1}, LSs;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Llf;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 73
    invoke-virtual {p2}, LkT;->c()Ljava/util/Date;

    move-result-object v0

    .line 74
    if-nez v0, :cond_d4

    move-object v0, v1

    .line 82
    :cond_59
    :goto_59
    invoke-virtual {p2, v0}, LkT;->c(Ljava/util/Date;)V

    .line 84
    invoke-virtual {p1}, LSs;->c()Ljava/lang/String;

    move-result-object v0

    .line 85
    if-nez v0, :cond_df

    move-object v0, v2

    :goto_63
    invoke-virtual {p2, v0}, LkT;->a(Ljava/lang/Long;)V

    .line 88
    invoke-virtual {p1}, LSs;->d()Ljava/lang/String;

    move-result-object v0

    .line 89
    if-nez v0, :cond_ed

    :goto_6c
    invoke-virtual {p2, v2}, LkT;->b(Ljava/lang/Long;)V

    .line 92
    invoke-virtual {p1}, LSs;->f()Ljava/lang/String;

    move-result-object v0

    .line 93
    if-nez v0, :cond_77

    .line 94
    const-string v0, ""

    .line 96
    :cond_77
    invoke-virtual {p2, v0}, LkT;->e(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, LSs;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, LkT;->f(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, LSs;->y()Ljava/lang/String;

    move-result-object v0

    .line 99
    if-nez v0, :cond_89

    .line 100
    const-string v0, ""

    .line 102
    :cond_89
    invoke-virtual {p2, v0}, LkT;->d(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, LSs;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, LkT;->i(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2, v0}, LkT;->g(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, LSs;->a()Z

    move-result v0

    invoke-virtual {p2, v0}, LkT;->c(Z)V

    .line 106
    invoke-virtual {p1}, LSs;->b()Z

    move-result v0

    invoke-virtual {p2, v0}, LkT;->d(Z)V

    .line 107
    invoke-virtual {p1}, LSs;->c()Z

    move-result v0

    invoke-virtual {p2, v0}, LkT;->e(Z)V

    .line 108
    invoke-virtual {p1}, LSs;->e()Z

    move-result v0

    invoke-virtual {p2, v0}, LkT;->f(Z)V

    .line 109
    invoke-virtual {p1}, LSs;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, LkT;->c(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, LSs;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_fb

    const/4 v0, 0x1

    :goto_c0
    invoke-virtual {p2, v0}, LkT;->h(Z)V

    .line 111
    return-void

    .line 55
    :cond_c4
    invoke-virtual {p2}, LkT;->b()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_2e

    .line 67
    :cond_ce
    invoke-virtual {p0, v0}, Llf;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_47

    .line 77
    :cond_d4
    if-eqz v1, :cond_59

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_59

    move-object v0, v1

    goto/16 :goto_59

    .line 85
    :cond_df
    invoke-virtual {p0, v0}, Llf;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_63

    .line 89
    :cond_ed
    invoke-virtual {p0, v0}, Llf;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_6c

    :cond_fb
    move v0, v3

    .line 110
    goto :goto_c0
.end method
