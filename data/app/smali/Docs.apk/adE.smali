.class public LadE;
.super Ljava/lang/Object;
.source "JsonHttpClient.java"


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field private a:LadH;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final a:LadJ;

.field private final a:LadN;

.field private final a:LadP;

.field private final a:Ladj;

.field private final a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final a:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, LadE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LadE;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lado;LadJ;Ladk;LadN;LadP;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p2, p0, LadE;->a:LadJ;

    .line 344
    invoke-static {p6}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LadE;->a:Ljava/lang/String;

    .line 345
    const-string v0, "/"

    invoke-virtual {p6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, LafQ;->a(Z)V

    .line 346
    iput-object p7, p0, LadE;->d:Ljava/lang/String;

    .line 347
    invoke-static {p4}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LadN;

    iput-object v0, p0, LadE;->a:LadN;

    .line 348
    iput-object p5, p0, LadE;->a:LadP;

    .line 349
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    if-nez p3, :cond_36

    invoke-virtual {p1}, Lado;->a()Ladj;

    move-result-object v0

    :goto_2c
    iput-object v0, p0, LadE;->a:Ladj;

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, LadE;->a:Z

    .line 353
    iput-object v1, p0, LadE;->b:Ljava/lang/String;

    .line 354
    iput-object v1, p0, LadE;->c:Ljava/lang/String;

    .line 355
    return-void

    .line 350
    :cond_36
    invoke-virtual {p1, p3}, Lado;->a(Ladk;)Ladj;

    move-result-object v0

    goto :goto_2c
.end method

.method protected constructor <init>(Lado;LadJ;Ladk;LadN;LadP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p2, p0, LadE;->a:LadJ;

    .line 386
    invoke-static {p6}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LadE;->b:Ljava/lang/String;

    .line 387
    const-string v0, "/"

    invoke-virtual {p6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, LafQ;->a(Z)V

    .line 388
    invoke-static {p7}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_4b

    .line 390
    const-string v0, "/"

    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, LafQ;->a(Z)V

    .line 391
    const-string p7, ""

    .line 395
    :cond_2c
    :goto_2c
    iput-object p7, p0, LadE;->c:Ljava/lang/String;

    .line 396
    iput-object p8, p0, LadE;->d:Ljava/lang/String;

    .line 397
    invoke-static {p4}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LadN;

    iput-object v0, p0, LadE;->a:LadN;

    .line 398
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iput-object p5, p0, LadE;->a:LadP;

    .line 400
    if-nez p3, :cond_68

    invoke-virtual {p1}, Lado;->a()Ladj;

    move-result-object v0

    :goto_43
    iput-object v0, p0, LadE;->a:Ladj;

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, LadE;->a:Ljava/lang/String;

    .line 403
    iput-boolean v2, p0, LadE;->a:Z

    .line 404
    return-void

    .line 392
    :cond_4b
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    .line 393
    const-string v0, "/"

    invoke-virtual {p7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "/"

    invoke-virtual {p7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    move v0, v1

    :goto_62
    invoke-static {v0}, LafQ;->a(Z)V

    goto :goto_2c

    :cond_66
    move v0, v2

    goto :goto_62

    .line 400
    :cond_68
    invoke-virtual {p1, p3}, Lado;->a(Ladk;)Ladj;

    move-result-object v0

    goto :goto_43
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)LadG;
    .registers 4
    .parameter

    .prologue
    .line 215
    new-instance v0, LadG;

    invoke-virtual {p0}, LadE;->a()LadN;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LadG;-><init>(LadN;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a()LadH;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, LadE;->a:LadH;

    if-nez v0, :cond_a

    .line 182
    invoke-virtual {p0}, LadE;->b()LadH;

    move-result-object v0

    iput-object v0, p0, LadE;->a:LadH;

    .line 184
    :cond_a
    iget-object v0, p0, LadE;->a:LadH;

    return-object v0
.end method

.method public final a()LadJ;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, LadE;->a:LadJ;

    return-object v0
.end method

.method public final a()LadN;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, LadE;->a:LadN;

    return-object v0
.end method

.method public final a()LadP;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, LadE;->a:LadP;

    return-object v0
.end method

.method protected a(Ladf;LacZ;Ljava/lang/Object;)Ladh;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, LadE;->a:Ladj;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ladj;->a(Ladf;LacZ;Lada;)Ladh;

    move-result-object v0

    .line 427
    invoke-virtual {p0}, LadE;->a()LadP;

    move-result-object v1

    .line 429
    if-eqz v1, :cond_2b

    .line 430
    invoke-virtual {v0, v1}, Ladh;->a(Laex;)V

    .line 434
    :goto_10
    invoke-virtual {p0}, LadE;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 435
    invoke-virtual {v0}, Ladh;->a()Ladc;

    move-result-object v1

    invoke-virtual {p0}, LadE;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ladc;->a(Ljava/lang/String;)V

    .line 437
    :cond_21
    if-eqz p3, :cond_2a

    .line 438
    invoke-virtual {p0, p3}, LadE;->a(Ljava/lang/Object;)LadG;

    move-result-object v1

    invoke-virtual {v0, v1}, Ladh;->a(Lada;)Ladh;

    .line 440
    :cond_2a
    return-object v0

    .line 432
    :cond_2b
    invoke-virtual {p0}, LadE;->a()LadH;

    move-result-object v1

    invoke-virtual {v0, v1}, Ladh;->a(Ladg;)V

    goto :goto_10
.end method

.method protected a(Ladh;)Ladl;
    .registers 3
    .parameter

    .prologue
    .line 498
    invoke-virtual {p1}, Ladh;->a()Ladl;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    iget-boolean v0, p0, LadE;->a:Z

    if-eqz v0, :cond_7

    .line 121
    iget-object v0, p0, LadE;->a:Ljava/lang/String;

    .line 123
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LadE;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LadE;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected a(LadI;)V
    .registers 3
    .parameter

    .prologue
    .line 242
    invoke-virtual {p0}, LadE;->a()LadJ;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 243
    invoke-virtual {p0}, LadE;->a()LadJ;

    move-result-object v0

    invoke-interface {v0, p1}, LadJ;->a(LadI;)V

    .line 245
    :cond_d
    return-void
.end method

.method protected final a()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    iget-boolean v0, p0, LadE;->a:Z

    return v0
.end method

.method protected b()LadH;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    new-instance v0, LadH;

    iget-object v1, p0, LadE;->a:LadN;

    invoke-direct {v0, v1}, LadH;-><init>(LadN;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-boolean v0, p0, LadE;->a:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 134
    iget-object v0, p0, LadE;->b:Ljava/lang/String;

    return-object v0

    .line 133
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-boolean v0, p0, LadE;->a:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 147
    iget-object v0, p0, LadE;->c:Ljava/lang/String;

    return-object v0

    .line 146
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, LadE;->d:Ljava/lang/String;

    return-object v0
.end method
