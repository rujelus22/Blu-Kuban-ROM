.class public final Lams;
.super Ljava/lang/Object;
.source "TypeAdapters.java"


# static fields
.field public static final a:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lamn;

.field public static final b:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lamn;

.field public static final c:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lamn;

.field public static final d:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lamn;

.field public static final e:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lamn;

.field public static final f:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lamn;

.field public static final g:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lamn;

.field public static final h:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lamn;

.field public static final i:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lamn;

.field public static final j:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lamn;

.field public static final k:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lamn;

.field public static final l:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lamn;

.field public static final m:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lamn;

.field public static final n:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lamn;

.field public static final o:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/lang/StringBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lamn;

.field public static final p:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Lamn;

.field public static final q:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Lamn;

.field public static final r:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Lamn;

.field public static final s:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Lamn;

.field public static final t:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Lamn;

.field public static final u:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Lamm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamm",
            "<",
            "Lame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 59
    new-instance v0, Lamt;

    invoke-direct {v0}, Lamt;-><init>()V

    sput-object v0, Lams;->a:Lamm;

    .line 71
    const-class v0, Ljava/lang/Class;

    sget-object v1, Lams;->a:Lamm;

    invoke-static {v0, v1}, Lams;->a(Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->a:Lamn;

    .line 73
    new-instance v0, LamE;

    invoke-direct {v0}, LamE;-><init>()V

    sput-object v0, Lams;->b:Lamm;

    .line 130
    const-class v0, Ljava/util/BitSet;

    sget-object v1, Lams;->b:Lamm;

    invoke-static {v0, v1}, Lams;->a(Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->b:Lamn;

    .line 132
    new-instance v0, LamO;

    invoke-direct {v0}, LamO;-><init>()V

    sput-object v0, Lams;->c:Lamm;

    .line 158
    new-instance v0, LamQ;

    invoke-direct {v0}, LamQ;-><init>()V

    sput-object v0, Lams;->d:Lamm;

    .line 172
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lams;->c:Lamm;

    invoke-static {v0, v1, v2}, Lams;->a(Ljava/lang/Class;Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->c:Lamn;

    .line 175
    new-instance v0, LamR;

    invoke-direct {v0}, LamR;-><init>()V

    sput-object v0, Lams;->e:Lamm;

    .line 195
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lams;->e:Lamm;

    invoke-static {v0, v1, v2}, Lams;->a(Ljava/lang/Class;Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->d:Lamn;

    .line 198
    new-instance v0, LamS;

    invoke-direct {v0}, LamS;-><init>()V

    sput-object v0, Lams;->f:Lamm;

    .line 217
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lams;->f:Lamm;

    invoke-static {v0, v1, v2}, Lams;->a(Ljava/lang/Class;Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->e:Lamn;

    .line 220
    new-instance v0, LamT;

    invoke-direct {v0}, LamT;-><init>()V

    sput-object v0, Lams;->g:Lamm;

    .line 239
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lams;->g:Lamm;

    invoke-static {v0, v1, v2}, Lams;->a(Ljava/lang/Class;Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->f:Lamn;

    .line 242
    new-instance v0, LamU;

    invoke-direct {v0}, LamU;-><init>()V

    sput-object v0, Lams;->h:Lamm;

    .line 261
    new-instance v0, LamV;

    invoke-direct {v0}, LamV;-><init>()V

    sput-object v0, Lams;->i:Lamm;

    .line 276
    new-instance v0, Lamu;

    invoke-direct {v0}, Lamu;-><init>()V

    sput-object v0, Lams;->j:Lamm;

    .line 291
    new-instance v0, Lamv;

    invoke-direct {v0}, Lamv;-><init>()V

    sput-object v0, Lams;->k:Lamm;

    .line 311
    const-class v0, Ljava/lang/Number;

    sget-object v1, Lams;->k:Lamm;

    invoke-static {v0, v1}, Lams;->a(Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->g:Lamn;

    .line 313
    new-instance v0, Lamw;

    invoke-direct {v0}, Lamw;-><init>()V

    sput-object v0, Lams;->l:Lamm;

    .line 332
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lams;->l:Lamm;

    invoke-static {v0, v1, v2}, Lams;->a(Ljava/lang/Class;Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->h:Lamn;

    .line 335
    new-instance v0, Lamx;

    invoke-direct {v0}, Lamx;-><init>()V

    sput-object v0, Lams;->m:Lamm;

    .line 355
    const-class v0, Ljava/lang/String;

    sget-object v1, Lams;->m:Lamm;

    invoke-static {v0, v1}, Lams;->a(Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->i:Lamn;

    .line 357
    new-instance v0, Lamy;

    invoke-direct {v0}, Lamy;-><init>()V

    sput-object v0, Lams;->n:Lamm;

    .line 372
    const-class v0, Ljava/lang/StringBuilder;

    sget-object v1, Lams;->n:Lamm;

    invoke-static {v0, v1}, Lams;->a(Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->j:Lamn;

    .line 375
    new-instance v0, Lamz;

    invoke-direct {v0}, Lamz;-><init>()V

    sput-object v0, Lams;->o:Lamm;

    .line 390
    const-class v0, Ljava/lang/StringBuffer;

    sget-object v1, Lams;->o:Lamm;

    invoke-static {v0, v1}, Lams;->a(Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->k:Lamn;

    .line 393
    new-instance v0, LamA;

    invoke-direct {v0}, LamA;-><init>()V

    sput-object v0, Lams;->p:Lamm;

    .line 409
    const-class v0, Ljava/net/URL;

    sget-object v1, Lams;->p:Lamm;

    invoke-static {v0, v1}, Lams;->a(Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->l:Lamn;

    .line 411
    new-instance v0, LamB;

    invoke-direct {v0}, LamB;-><init>()V

    sput-object v0, Lams;->q:Lamm;

    .line 431
    const-class v0, Ljava/net/URI;

    sget-object v1, Lams;->q:Lamm;

    invoke-static {v0, v1}, Lams;->a(Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->m:Lamn;

    .line 433
    new-instance v0, LamC;

    invoke-direct {v0}, LamC;-><init>()V

    sput-object v0, Lams;->r:Lamm;

    .line 449
    const-class v0, Ljava/net/InetAddress;

    sget-object v1, Lams;->r:Lamm;

    invoke-static {v0, v1}, Lams;->b(Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->n:Lamn;

    .line 452
    new-instance v0, LamD;

    invoke-direct {v0}, LamD;-><init>()V

    sput-object v0, Lams;->s:Lamm;

    .line 467
    const-class v0, Ljava/util/UUID;

    sget-object v1, Lams;->s:Lamm;

    invoke-static {v0, v1}, Lams;->a(Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->o:Lamn;

    .line 469
    new-instance v0, LamF;

    invoke-direct {v0}, LamF;-><init>()V

    sput-object v0, Lams;->p:Lamn;

    .line 490
    new-instance v0, LamG;

    invoke-direct {v0}, LamG;-><init>()V

    sput-object v0, Lams;->t:Lamm;

    .line 555
    const-class v0, Ljava/util/Calendar;

    const-class v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lams;->t:Lamm;

    invoke-static {v0, v1, v2}, Lams;->b(Ljava/lang/Class;Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->q:Lamn;

    .line 558
    new-instance v0, LamH;

    invoke-direct {v0}, LamH;-><init>()V

    sput-object v0, Lams;->u:Lamm;

    .line 593
    const-class v0, Ljava/util/Locale;

    sget-object v1, Lams;->u:Lamm;

    invoke-static {v0, v1}, Lams;->a(Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->r:Lamn;

    .line 595
    new-instance v0, LamI;

    invoke-direct {v0}, LamI;-><init>()V

    sput-object v0, Lams;->v:Lamm;

    .line 667
    const-class v0, Lame;

    sget-object v1, Lams;->v:Lamm;

    invoke-static {v0, v1}, Lams;->a(Ljava/lang/Class;Lamm;)Lamn;

    move-result-object v0

    sput-object v0, Lams;->s:Lamn;

    .line 702
    invoke-static {}, Lams;->a()Lamn;

    move-result-object v0

    sput-object v0, Lams;->t:Lamn;

    return-void
.end method

.method public static a()Lamn;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">()",
            "Lamn;"
        }
    .end annotation

    .prologue
    .line 705
    new-instance v0, LamJ;

    invoke-direct {v0}, LamJ;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Lamm;)Lamn;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTT;>;",
            "Lamm",
            "<TTT;>;)",
            "Lamn;"
        }
    .end annotation

    .prologue
    .line 732
    new-instance v0, LamK;

    invoke-direct {v0, p0, p1}, LamK;-><init>(Ljava/lang/Class;Lamm;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Lamm;)Lamn;
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTT;>;",
            "Ljava/lang/Class",
            "<TTT;>;",
            "Lamm",
            "<-TTT;>;)",
            "Lamn;"
        }
    .end annotation

    .prologue
    .line 745
    new-instance v0, LamL;

    invoke-direct {v0, p0, p1, p2}, LamL;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lamm;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Class;Lamm;)Lamn;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTT;>;",
            "Lamm",
            "<TTT;>;)",
            "Lamn;"
        }
    .end annotation

    .prologue
    .line 775
    new-instance v0, LamN;

    invoke-direct {v0, p0, p1}, LamN;-><init>(Ljava/lang/Class;Lamm;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/Class;Lamm;)Lamn;
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTT;>;",
            "Ljava/lang/Class",
            "<+TTT;>;",
            "Lamm",
            "<-TTT;>;)",
            "Lamn;"
        }
    .end annotation

    .prologue
    .line 760
    new-instance v0, LamM;

    invoke-direct {v0, p0, p1, p2}, LamM;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lamm;)V

    return-object v0
.end method
