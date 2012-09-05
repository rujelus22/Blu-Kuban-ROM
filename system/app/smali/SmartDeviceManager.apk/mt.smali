.class public final Lmt;
.super Ljava/lang/Object;
.source "a"


# static fields
.field public static final a:Lmt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lmt;

    invoke-direct {v0}, Lmt;-><init>()V

    sput-object v0, Lmt;->a:Lmt;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)Lmo;
    .registers 2
    .parameter

    .prologue
    .line 35
    if-eqz p0, :cond_7

    invoke-static {}, Lmo;->d()Lmo;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lmo;->e()Lmo;

    move-result-object v0

    goto :goto_6
.end method

.method public static a()Lmv;
    .registers 1

    .prologue
    .line 42
    invoke-static {}, Lmv;->d()Lmv;

    move-result-object v0

    return-object v0
.end method

.method public static a(D)Lmw;
    .registers 3
    .parameter

    .prologue
    .line 90
    new-instance v0, Lmr;

    invoke-direct {v0, p0, p1}, Lmr;-><init>(D)V

    return-object v0
.end method

.method public static a(I)Lmw;
    .registers 2
    .parameter

    .prologue
    .line 66
    invoke-static {p0}, Lms;->a(I)Lms;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Lmw;
    .registers 3
    .parameter

    .prologue
    .line 72
    new-instance v0, Lmu;

    invoke-direct {v0, p0, p1}, Lmu;-><init>(J)V

    return-object v0
.end method

.method public static a(Ljava/math/BigDecimal;)Lmw;
    .registers 2
    .parameter

    .prologue
    .line 96
    new-instance v0, Lmq;

    invoke-direct {v0, p0}, Lmq;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public static a(Ljava/math/BigInteger;)Lmw;
    .registers 2
    .parameter

    .prologue
    .line 78
    new-instance v0, Lmn;

    invoke-direct {v0, p0}, Lmn;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lmy;
    .registers 2
    .parameter

    .prologue
    .line 108
    invoke-static {p0}, Lmy;->a(Ljava/lang/String;)Lmy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Lml;
    .registers 2

    .prologue
    .line 135
    new-instance v0, Lml;

    invoke-direct {v0, p0}, Lml;-><init>(Lmt;)V

    return-object v0
.end method

.method public final c()Lmx;
    .registers 2

    .prologue
    .line 140
    new-instance v0, Lmx;

    invoke-direct {v0, p0}, Lmx;-><init>(Lmt;)V

    return-object v0
.end method
