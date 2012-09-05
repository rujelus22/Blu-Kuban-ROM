.class public final Ljw;
.super Lgy;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lgy;-><init>()V

    return-void
.end method

.method private static m(Ljk;)Z
    .registers 2
    .parameter

    .prologue
    .line 640
    const-class v0, Lfs;

    invoke-virtual {p0, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfs;

    .line 641
    if-eqz p0, :cond_12

    invoke-interface {p0}, Lfs;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public final a(Ljo;)Lgy$a;
    .registers 5
    .parameter

    .prologue
    .line 128
    const-class v0, Lfv;

    invoke-virtual {p1, v0}, Ljo;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfv;

    .line 129
    if-eqz p0, :cond_17

    .line 130
    invoke-interface {p0}, Lfv;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lgy$a;

    sget-object v2, Lgy$a$a;->MANAGED_REFERENCE:Lgy$a$a;

    invoke-direct {v1, v2, v0}, Lgy$a;-><init>(Lgy$a$a;Ljava/lang/String;)V

    move-object v0, v1

    .line 136
    :goto_16
    return-object v0

    .line 132
    :cond_17
    const-class v0, Lfn;

    invoke-virtual {p1, v0}, Ljo;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfn;

    .line 133
    if-eqz p0, :cond_2e

    .line 134
    invoke-interface {p0}, Lfn;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lgy$a;

    sget-object v2, Lgy$a$a;->BACK_REFERENCE:Lgy$a$a;

    invoke-direct {v1, v2, v0}, Lgy$a;-><init>(Lgy$a$a;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_16

    .line 136
    :cond_2e
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final a(Ljk;Lhx$a;)Lhx$a;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 271
    const-class v0, Lhx;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lhx;

    .line 272
    if-eqz p0, :cond_f

    .line 273
    invoke-interface {p0}, Lhx;->d()Lhx$a;

    move-result-object v0

    .line 283
    :goto_e
    return-object v0

    .line 278
    :cond_f
    const-class v0, Lge;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lge;

    .line 279
    if-eqz p0, :cond_25

    .line 280
    invoke-interface {p0}, Lge;->a()Z

    move-result v0

    .line 281
    if-eqz v0, :cond_22

    sget-object v0, Lhx$a;->ALWAYS:Lhx$a;

    goto :goto_e

    :cond_22
    sget-object v0, Lhx$a;->NON_NULL:Lhx$a;

    goto :goto_e

    :cond_25
    move-object v0, p2

    .line 283
    goto :goto_e
.end method

.method public final a(Ljl;)Ljava/lang/Boolean;
    .registers 3
    .parameter

    .prologue
    .line 78
    const-class v0, Lhv;

    invoke-virtual {p1, v0}, Ljl;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lhv;

    .line 79
    if-nez p0, :cond_c

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p0}, Lhv;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b
.end method

.method public final a(Ljava/lang/Enum;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljr;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 619
    if-eqz p1, :cond_11

    .line 620
    const-class v0, Lfx;

    invoke-virtual {p1, v0}, Ljr;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfx;

    .line 621
    if-eqz p0, :cond_11

    .line 622
    invoke-interface {p0}, Lfx;->a()Ljava/lang/String;

    move-result-object v0

    .line 629
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final a(Ljk;)Ljava/util/List;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljk;",
            ")",
            "Ljava/util/List",
            "<",
            "Lkb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    const-class v0, Lga;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lga;

    .line 201
    if-nez p0, :cond_c

    const/4 v0, 0x0

    .line 207
    :goto_b
    return-object v0

    .line 202
    :cond_c
    invoke-interface {p0}, Lga;->a()[Lga$a;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    array-length v2, v0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_2f

    aget-object v4, v0, v3

    .line 205
    new-instance v5, Lkb;

    invoke-interface {v4}, Lga$a;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4}, Lga$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lkb;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2f
    move-object v0, v1

    .line 207
    goto :goto_b
.end method

.method public final a(Ljl;Lka;)Lka;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljl;",
            "Lka",
            "<*>;)",
            "Lka",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 114
    const-class v0, Lfm;

    invoke-virtual {p1, v0}, Ljl;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfm;

    .line 115
    if-nez p0, :cond_c

    move-object v0, p2

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p2, p0}, Lka;->a(Lfm;)Lka;

    move-result-object v0

    goto :goto_b
.end method

.method public final a(Ljava/lang/annotation/Annotation;)Z
    .registers 4
    .parameter

    .prologue
    .line 37
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 47
    const-class v1, Lfj;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final a(Ljm;)Z
    .registers 3
    .parameter

    .prologue
    .line 230
    invoke-static {p1}, Ljw;->m(Ljk;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljn;)Z
    .registers 3
    .parameter

    .prologue
    .line 241
    invoke-static {p1}, Ljw;->m(Ljk;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljp;)Z
    .registers 3
    .parameter

    .prologue
    .line 225
    invoke-static {p1}, Ljw;->m(Ljk;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(Ljk;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 23
    const-class v0, Lhx;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lhx;

    if-eqz p0, :cond_13

    invoke-interface {p0}, Lhx;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lhj$a;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final b(Ljn;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 383
    const-class v0, Lfx;

    invoke-virtual {p1, v0}, Ljn;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfx;

    .line 384
    if-eqz p0, :cond_f

    .line 385
    invoke-interface {p0}, Lfx;->a()Ljava/lang/String;

    move-result-object v0

    .line 392
    :goto_e
    return-object v0

    .line 389
    :cond_f
    const-class v0, Lhx;

    invoke-virtual {p1, v0}, Ljn;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-class v0, Lia;

    invoke-virtual {p1, v0}, Ljn;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 390
    :cond_1f
    const-string v0, ""

    goto :goto_e

    .line 392
    :cond_22
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final b(Ljp;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 345
    const-class v0, Lfx;

    invoke-virtual {p1, v0}, Ljp;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfx;

    .line 346
    if-eqz p0, :cond_f

    .line 347
    invoke-interface {p0}, Lfx;->a()Ljava/lang/String;

    move-result-object v0

    .line 363
    :goto_e
    return-object v0

    .line 352
    :cond_f
    const-class v0, Lfr;

    invoke-virtual {p1, v0}, Ljp;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfr;

    .line 353
    if-eqz p0, :cond_1e

    .line 354
    invoke-interface {p0}, Lfr;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 360
    :cond_1e
    const-class v0, Lhx;

    invoke-virtual {p1, v0}, Ljp;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-class v0, Lia;

    invoke-virtual {p1, v0}, Ljp;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 361
    :cond_2e
    const-string v0, ""

    goto :goto_e

    .line 363
    :cond_31
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final b(Ljl;)[Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 94
    const-class v0, Lft;

    invoke-virtual {p1, v0}, Ljl;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lft;

    .line 95
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p0}, Lft;->a()[Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public final c(Ljl;)Ljava/lang/Boolean;
    .registers 3
    .parameter

    .prologue
    .line 100
    const-class v0, Lft;

    invoke-virtual {p1, v0}, Ljl;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lft;

    .line 101
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p0}, Lft;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b
.end method

.method public final c(Ljk;)Ljava/lang/Class;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljk;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 290
    const-class v0, Lhx;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lhx;

    .line 291
    if-eqz p0, :cond_13

    .line 292
    invoke-interface {p0}, Lhx;->b()Ljava/lang/Class;

    move-result-object v0

    .line 293
    const-class v1, Lib;

    if-eq v0, v1, :cond_13

    .line 297
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final c(Ljn;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 598
    const-class v0, Lfx;

    invoke-virtual {p1, v0}, Ljn;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfx;

    .line 599
    if-eqz p0, :cond_f

    .line 600
    invoke-interface {p0}, Lfx;->a()Ljava/lang/String;

    move-result-object v0

    .line 607
    :goto_e
    return-object v0

    .line 604
    :cond_f
    const-class v0, Lhw;

    invoke-virtual {p1, v0}, Ljn;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-class v0, Lia;

    invoke-virtual {p1, v0}, Ljn;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 605
    :cond_1f
    const-string v0, ""

    goto :goto_e

    .line 607
    :cond_22
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final c(Ljp;)Z
    .registers 3
    .parameter

    .prologue
    .line 369
    const-class v0, Lgd;

    invoke-virtual {p1, v0}, Ljp;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lgd;

    .line 371
    if-eqz p0, :cond_12

    invoke-interface {p0}, Lgd;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final d(Ljk;)Lhx$b;
    .registers 3
    .parameter

    .prologue
    .line 303
    const-class v0, Lhx;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lhx;

    .line 304
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p0}, Lhx;->c()Lhx$b;

    move-result-object v0

    goto :goto_b
.end method

.method public final d(Ljp;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 542
    const-class v0, Lfx;

    invoke-virtual {p1, v0}, Ljp;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfx;

    .line 543
    if-eqz p0, :cond_f

    .line 544
    invoke-interface {p0}, Lfx;->a()Ljava/lang/String;

    move-result-object v0

    .line 557
    :goto_e
    return-object v0

    .line 546
    :cond_f
    const-class v0, Lfz;

    invoke-virtual {p1, v0}, Ljp;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfz;

    .line 547
    if-eqz p0, :cond_1e

    .line 548
    invoke-interface {p0}, Lfz;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 554
    :cond_1e
    const-class v0, Lhw;

    invoke-virtual {p1, v0}, Ljp;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-class v0, Lia;

    invoke-virtual {p1, v0}, Ljp;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 555
    :cond_2e
    const-string v0, ""

    goto :goto_e

    .line 557
    :cond_31
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final d(Ljl;)Lke;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljl;",
            ")",
            "Lke",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 150
    const-class v0, Lgb;

    invoke-virtual {p1, v0}, Ljl;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lgb;

    .line 151
    const-class v0, Lhz;

    invoke-virtual {p1, v0}, Ljl;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lhz;

    .line 152
    if-eqz v0, :cond_47

    .line 156
    if-nez p0, :cond_17

    move-object v0, v2

    .line 180
    :goto_16
    return-object v0

    .line 163
    :cond_17
    invoke-interface {v0}, Lhz;->a()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme;->a(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lke;

    move-object v1, v0

    .line 171
    :goto_23
    const-class v0, Lhy;

    invoke-virtual {p1, v0}, Ljl;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lhy;

    .line 172
    if-nez v0, :cond_5a

    move-object v0, v2

    .line 174
    :goto_2e
    invoke-interface {p0}, Lgb;->a()Lgb$b;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lke;->a(Lgb$b;Lkd;)Lke;

    move-result-object v0

    .line 178
    invoke-interface {p0}, Lgb;->b()Lgb$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lke;->a(Lgb$a;)Lke;

    move-result-object v0

    .line 179
    invoke-interface {p0}, Lgb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lke;->a(Ljava/lang/String;)Lke;

    move-result-object v0

    goto :goto_16

    .line 165
    :cond_47
    if-eqz p0, :cond_51

    invoke-interface {p0}, Lgb;->a()Lgb$b;

    move-result-object v0

    sget-object v1, Lgb$b;->NONE:Lgb$b;

    if-ne v0, v1, :cond_53

    :cond_51
    move-object v0, v2

    .line 166
    goto :goto_16

    .line 168
    :cond_53
    new-instance v0, Lko;

    invoke-direct {v0}, Lko;-><init>()V

    move-object v1, v0

    goto :goto_23

    .line 172
    :cond_5a
    invoke-interface {v0}, Lhy;->a()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lme;->a(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkd;

    goto :goto_2e
.end method

.method public final e(Ljl;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 213
    const-class v0, Lgc;

    invoke-virtual {p1, v0}, Ljl;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lgc;

    .line 214
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p0}, Lgc;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public final e(Ljp;)Z
    .registers 3
    .parameter

    .prologue
    .line 567
    const-class v0, Lfl;

    invoke-virtual {p1, v0}, Ljp;->b(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final e(Ljk;)[Ljava/lang/Class;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljk;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 310
    const-class v0, Lia;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lia;

    .line 311
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p0}, Lia;->a()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_b
.end method

.method public final bridge synthetic f(Ljk;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 23
    const-class v0, Lhw;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lhw;

    if-eqz p0, :cond_13

    invoke-interface {p0}, Lhw;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lhf$a;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final f(Ljp;)Z
    .registers 3
    .parameter

    .prologue
    .line 576
    const-class v0, Lfk;

    invoke-virtual {p1, v0}, Ljp;->b(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final f(Ljl;)[Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 322
    const-class v0, Lfy;

    invoke-virtual {p1, v0}, Ljl;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfy;

    .line 323
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p0}, Lfy;->a()[Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public final g(Ljl;)Ljava/lang/Boolean;
    .registers 3
    .parameter

    .prologue
    .line 328
    const-class v0, Lfy;

    invoke-virtual {p1, v0}, Ljl;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfy;

    .line 329
    if-nez p0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p0}, Lfy;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b
.end method

.method public final g(Ljk;)Ljava/lang/Class;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljk;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lhk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    const-class v0, Lhw;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lhw;

    .line 422
    if-eqz p0, :cond_13

    .line 423
    invoke-interface {p0}, Lhw;->c()Ljava/lang/Class;

    move-result-object v0

    .line 424
    const-class v1, Lhk$a;

    if-eq v0, v1, :cond_13

    .line 428
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final h(Ljk;)Ljava/lang/Class;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljk;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lhf",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 434
    const-class v0, Lhw;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lhw;

    .line 435
    if-eqz p0, :cond_13

    .line 436
    invoke-interface {p0}, Lhw;->b()Ljava/lang/Class;

    move-result-object v0

    .line 437
    const-class v1, Lhf$a;

    if-eq v0, v1, :cond_13

    .line 441
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final i(Ljk;)Ljava/lang/Class;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljk;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 449
    const-class v0, Lhw;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lhw;

    .line 450
    if-eqz p0, :cond_13

    .line 451
    invoke-interface {p0}, Lhw;->d()Ljava/lang/Class;

    move-result-object v0

    .line 452
    const-class v1, Lib;

    if-eq v0, v1, :cond_13

    .line 469
    :cond_12
    :goto_12
    return-object v0

    .line 461
    :cond_13
    const-class v0, Lfo;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfo;

    .line 462
    if-eqz p0, :cond_25

    .line 464
    invoke-interface {p0}, Lfo;->a()Ljava/lang/Class;

    move-result-object v0

    .line 465
    const-class v1, Lib;

    if-ne v0, v1, :cond_12

    .line 469
    :cond_25
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final j(Ljk;)Ljava/lang/Class;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljk;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 477
    const-class v0, Lhw;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lhw;

    .line 478
    if-eqz p0, :cond_13

    .line 479
    invoke-interface {p0}, Lhw;->e()Ljava/lang/Class;

    move-result-object v0

    .line 480
    const-class v1, Lib;

    if-eq v0, v1, :cond_13

    .line 497
    :cond_12
    :goto_12
    return-object v0

    .line 489
    :cond_13
    const-class v0, Lfu;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfu;

    .line 490
    if-eqz p0, :cond_25

    .line 492
    invoke-interface {p0}, Lfu;->a()Ljava/lang/Class;

    move-result-object v0

    .line 493
    const-class v1, Lib;

    if-ne v0, v1, :cond_12

    .line 497
    :cond_25
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final k(Ljk;)Ljava/lang/Class;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljk;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 506
    const-class v0, Lhw;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lhw;

    .line 507
    if-eqz p0, :cond_13

    .line 508
    invoke-interface {p0}, Lhw;->f()Ljava/lang/Class;

    move-result-object v0

    .line 509
    const-class v1, Lib;

    if-eq v0, v1, :cond_13

    .line 524
    :cond_12
    :goto_12
    return-object v0

    .line 517
    :cond_13
    const-class v0, Lfp;

    invoke-virtual {p1, v0}, Ljk;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lfp;

    .line 518
    if-eqz p0, :cond_25

    .line 519
    invoke-interface {p0}, Lfp;->a()Ljava/lang/Class;

    move-result-object v0

    .line 520
    const-class v1, Lib;

    if-ne v0, v1, :cond_12

    .line 524
    :cond_25
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final l(Ljk;)Z
    .registers 3
    .parameter

    .prologue
    .line 586
    const-class v0, Lfq;

    invoke-virtual {p1, v0}, Ljk;->b(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
