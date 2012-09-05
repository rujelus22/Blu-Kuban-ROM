.class public final Lcom/coremobility/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z

.field public static final h:Z

.field public static final i:Z

.field public static final j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/coremobility/a/b;->g:Z

    if-eqz v0, :cond_6c

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/coremobility/a/a;->a:Z

    sget-boolean v0, Lcom/coremobility/a/b;->a:Z

    if-eqz v0, :cond_6e

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/coremobility/a/a;->b:Z

    sget-boolean v0, Lcom/coremobility/a/b;->a:Z

    if-eqz v0, :cond_70

    move v0, v1

    :goto_15
    sput-boolean v0, Lcom/coremobility/a/a;->c:Z

    sget-boolean v0, Lcom/coremobility/a/b;->d:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-eqz v0, :cond_72

    :cond_23
    move v0, v1

    :goto_24
    sput-boolean v0, Lcom/coremobility/a/a;->d:Z

    sget-boolean v0, Lcom/coremobility/a/b;->d:Z

    if-nez v0, :cond_32

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-nez v0, :cond_32

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-eqz v0, :cond_74

    :cond_32
    move v0, v1

    :goto_33
    sput-boolean v0, Lcom/coremobility/a/a;->e:Z

    sget-boolean v0, Lcom/coremobility/a/b;->d:Z

    if-nez v0, :cond_3d

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_76

    :cond_3d
    move v0, v1

    :goto_3e
    sput-boolean v0, Lcom/coremobility/a/a;->f:Z

    sget-boolean v0, Lcom/coremobility/a/b;->d:Z

    if-nez v0, :cond_4c

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-nez v0, :cond_4c

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-eqz v0, :cond_78

    :cond_4c
    move v0, v1

    :goto_4d
    sput-boolean v0, Lcom/coremobility/a/a;->g:Z

    sget-boolean v0, Lcom/coremobility/a/b;->d:Z

    if-nez v0, :cond_5b

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-nez v0, :cond_5b

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-eqz v0, :cond_7a

    :cond_5b
    move v0, v1

    :goto_5c
    sput-boolean v0, Lcom/coremobility/a/a;->h:Z

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-eqz v0, :cond_7c

    move v0, v1

    :goto_63
    sput-boolean v0, Lcom/coremobility/a/a;->i:Z

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-eqz v0, :cond_7e

    :goto_69
    sput-boolean v1, Lcom/coremobility/a/a;->j:Z

    return-void

    :cond_6c
    move v0, v2

    goto :goto_7

    :cond_6e
    move v0, v2

    goto :goto_e

    :cond_70
    move v0, v2

    goto :goto_15

    :cond_72
    move v0, v2

    goto :goto_24

    :cond_74
    move v0, v2

    goto :goto_33

    :cond_76
    move v0, v2

    goto :goto_3e

    :cond_78
    move v0, v2

    goto :goto_4d

    :cond_7a
    move v0, v2

    goto :goto_5c

    :cond_7c
    move v0, v2

    goto :goto_63

    :cond_7e
    move v1, v2

    goto :goto_69
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
