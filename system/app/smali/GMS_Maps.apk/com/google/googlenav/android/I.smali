.class public Lcom/google/googlenav/android/I;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static g:Z

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;

.field private static volatile o:Ljava/lang/String;

.field private static p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0xa

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "SOJU"

    aput-object v3, v0, v2

    const-string v3, "SOJUA"

    aput-object v3, v0, v1

    const-string v3, "SOJUK"

    aput-object v3, v0, v5

    const-string v3, "SOJU_L10N"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string v4, "GT-I9000"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "GT-I9000B"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "GT-I9000M"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "GT-I9000T"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "SC-02B"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "SGH-T959"

    aput-object v4, v0, v3

    const-string v3, "SGH-T959D"

    aput-object v3, v0, v7

    const/16 v3, 0xb

    const-string v4, "SGH-T959V"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "VIBRANT T959"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "SHW-M110S"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "SCH-I400"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "SGH-I897"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "SGH-I896"

    aput-object v4, v0, v3

    sput-object v0, Lcom/google/googlenav/android/I;->h:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "RTGB"

    aput-object v3, v0, v2

    const-string v3, "SHADOW_VZW"

    aput-object v3, v0, v1

    const-string v3, "DAYTONA"

    aput-object v3, v0, v5

    sput-object v0, Lcom/google/googlenav/android/I;->i:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "MILESTONE"

    aput-object v3, v0, v2

    const-string v3, "UMTS_SHOLES"

    aput-object v3, v0, v1

    const-string v3, "VIVBR"

    aput-object v3, v0, v5

    const-string v3, "VOLES"

    aput-object v3, v0, v6

    sput-object v0, Lcom/google/googlenav/android/I;->j:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "SHADOW_VZW"

    aput-object v3, v0, v2

    const-string v3, "DAYTONA"

    aput-object v3, v0, v1

    const-string v3, "SPYDER_VZW"

    aput-object v3, v0, v5

    sput-object v0, Lcom/google/googlenav/android/I;->k:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "HTC_RUBY"

    aput-object v3, v0, v2

    sput-object v0, Lcom/google/googlenav/android/I;->l:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "HTC_VISION"

    aput-object v3, v0, v2

    sput-object v0, Lcom/google/googlenav/android/I;->m:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "SONY ERICSSON"

    aput-object v3, v0, v2

    sput-object v0, Lcom/google/googlenav/android/I;->n:[Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/google/googlenav/android/I;->h:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_128

    move v0, v1

    :goto_ca
    sput-boolean v0, Lcom/google/googlenav/android/I;->a:Z

    sget-object v0, Lcom/google/googlenav/android/I;->m:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/android/I;->b:Z

    sget-object v0, Lcom/google/googlenav/android/I;->i:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/android/I;->c:Z

    sget-object v0, Lcom/google/googlenav/android/I;->j:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/android/I;->d:Z

    sget-object v0, Lcom/google/googlenav/android/I;->k:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v7, :cond_12a

    move v0, v1

    :goto_101
    sput-boolean v0, Lcom/google/googlenav/android/I;->e:Z

    sget-object v0, Lcom/google/googlenav/android/I;->l:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v7, :cond_12c

    :goto_113
    sput-boolean v1, Lcom/google/googlenav/android/I;->f:Z

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/android/I;->n:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/android/I;->g:Z

    return-void

    :cond_128
    move v0, v2

    goto :goto_ca

    :cond_12a
    move v0, v2

    goto :goto_101

    :cond_12c
    move v1, v2

    goto :goto_113
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/google/googlenav/android/I;->o:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/google/googlenav/android/I;->p:Z

    return-void
.end method

.method public static a()Z
    .registers 2

    sget-object v0, Lcom/google/googlenav/android/I;->o:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adreno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static b()Z
    .registers 1

    sget-boolean v0, Lcom/google/googlenav/android/I;->p:Z

    return v0
.end method
