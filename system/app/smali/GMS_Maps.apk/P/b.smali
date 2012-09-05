.class public abstract LP/b;
.super Ljava/lang/Object;


# static fields
.field private static A:[I

.field private static B:Ljava/lang/String;

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field protected static o:I

.field protected static p:I

.field protected static q:I

.field protected static r:I

.field protected static s:Z

.field public static t:Z

.field public static u:Z

.field public static v:Z

.field public static w:Z

.field public static x:Z

.field public static y:I

.field private static z:LP/b;


# instance fields
.field private E:Ljava/lang/String;

.field private F:LP/d;

.field private final G:LP/a;

.field private final H:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, -0x270f

    sput v1, LP/b;->a:I

    sput v1, LP/b;->b:I

    sput v1, LP/b;->c:I

    sput v1, LP/b;->d:I

    const/16 v0, 0x2a

    sput v0, LP/b;->e:I

    const/16 v0, 0x23

    sput v0, LP/b;->f:I

    sput v1, LP/b;->g:I

    sput v1, LP/b;->h:I

    sput v1, LP/b;->i:I

    sput v1, LP/b;->j:I

    sput v1, LP/b;->k:I

    sput v1, LP/b;->l:I

    sput v1, LP/b;->m:I

    sput v1, LP/b;->n:I

    sput v1, LP/b;->o:I

    sput v1, LP/b;->p:I

    sput v1, LP/b;->q:I

    sput v1, LP/b;->r:I

    const/4 v0, 0x0

    sput-boolean v0, LP/b;->s:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LP/b;->E:Ljava/lang/String;

    new-instance v0, LP/c;

    invoke-direct {v0}, LP/c;-><init>()V

    iput-object v0, p0, LP/b;->G:LP/a;

    iget-object v0, p0, LP/b;->G:LP/a;

    invoke-interface {v0}, LP/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, LP/b;->H:J

    return-void
.end method

.method public static a()LP/b;
    .registers 1

    sget-object v0, LP/b;->z:LP/b;

    return-object v0
.end method

.method public static a(LP/b;)V
    .registers 1

    sput-object p0, LP/b;->z:LP/b;

    return-void
.end method

.method private static a(ILjava/lang/String;)[I
    .registers 9

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    new-array v1, p0, [I

    move v3, v2

    :goto_e
    const-string v4, ","

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_29

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_e

    :cond_29
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_35} :catch_39
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_35} :catch_40

    if-ne v4, p0, :cond_a

    move-object v0, v1

    goto :goto_a

    :catch_39
    move-exception v1

    const-string v2, "CONFIG"

    invoke-static {v2, v1}, LP/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_40
    move-exception v1

    const-string v2, "CONFIG"

    invoke-static {v2, v1}, LP/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method private static b(Ljava/lang/String;)V
    .registers 4

    const/4 v2, 0x1

    const/4 v0, 0x4

    invoke-static {v0, p0}, LP/b;->a(ILjava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1d

    sput-boolean v2, LP/b;->s:Z

    const/4 v1, 0x0

    aget v1, v0, v1

    sput v1, LP/b;->o:I

    aget v1, v0, v2

    sput v1, LP/b;->q:I

    const/4 v1, 0x2

    aget v1, v0, v1

    sput v1, LP/b;->p:I

    const/4 v1, 0x3

    aget v0, v0, v1

    sput v0, LP/b;->r:I

    :cond_1d
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .registers 2

    const/16 v0, 0xc

    invoke-static {v0, p0}, LP/b;->a(ILjava/lang/String;)[I

    move-result-object v0

    sput-object v0, LP/b;->A:[I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .registers 4

    invoke-virtual {p0, p1}, LP/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_b

    move-result p2

    :cond_a
    :goto_a
    return p2

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 5

    invoke-virtual {p0, p1}, LP/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p2, 0x1

    :cond_f
    :goto_f
    return p2

    :cond_10
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p2, 0x0

    goto :goto_f
.end method

.method protected b()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LP/b;->F:LP/d;

    if-nez v0, :cond_12

    const-string v0, "DownloadLocale"

    invoke-virtual {p0, v0}, LP/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LP/d;->a(Ljava/lang/String;)LP/d;

    move-result-object v0

    iput-object v0, p0, LP/b;->F:LP/d;

    :cond_12
    const-string v0, "microedition.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_133

    const-string v0, ""

    :goto_1c
    invoke-virtual {p0}, LP/b;->d()Ljava/lang/String;

    move-result-object v3

    sput-object v3, LP/b;->B:Ljava/lang/String;

    sget-object v3, LP/b;->B:Ljava/lang/String;

    if-nez v3, :cond_2a

    const-string v3, "unknown"

    sput-object v3, LP/b;->B:Ljava/lang/String;

    :cond_2a
    invoke-virtual {p0}, LP/b;->e()Ljava/lang/String;

    move-result-object v3

    sput-object v3, LP/b;->C:Ljava/lang/String;

    sget-object v3, LP/b;->C:Ljava/lang/String;

    if-nez v3, :cond_38

    const-string v3, "unknown"

    sput-object v3, LP/b;->C:Ljava/lang/String;

    :cond_38
    const-string v3, "Carrier"

    invoke-virtual {p0, v3}, LP/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, LP/b;->D:Ljava/lang/String;

    sget-object v3, LP/b;->D:Ljava/lang/String;

    if-nez v3, :cond_48

    const-string v3, "unknown"

    sput-object v3, LP/b;->D:Ljava/lang/String;

    :cond_48
    const-string v3, "BackKey"

    sget v4, LP/b;->a:I

    invoke-virtual {p0, v3, v4}, LP/b;->a(Ljava/lang/String;I)I

    move-result v3

    sput v3, LP/b;->a:I

    const-string v3, "LeftSoftKey"

    sget v4, LP/b;->b:I

    invoke-virtual {p0, v3, v4}, LP/b;->a(Ljava/lang/String;I)I

    move-result v3

    sput v3, LP/b;->b:I

    const-string v3, "MiddleSoftKey"

    sget v4, LP/b;->c:I

    invoke-virtual {p0, v3, v4}, LP/b;->a(Ljava/lang/String;I)I

    move-result v3

    sput v3, LP/b;->c:I

    const-string v3, "RightSoftKey"

    sget v4, LP/b;->d:I

    invoke-virtual {p0, v3, v4}, LP/b;->a(Ljava/lang/String;I)I

    move-result v3

    sput v3, LP/b;->d:I

    const-string v3, "ReverseSoftkeys"

    const-string v4, "nokia"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v3, v4}, LP/b;->a(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, LP/b;->u:Z

    const-string v3, "SoftkeysOnSideInLandscape"

    invoke-virtual {p0, v3, v2}, LP/b;->a(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, LP/b;->v:Z

    const-string v3, "SideUpKey"

    sget v4, LP/b;->l:I

    invoke-virtual {p0, v3, v4}, LP/b;->a(Ljava/lang/String;I)I

    move-result v3

    sput v3, LP/b;->l:I

    const-string v3, "SideDownKey"

    sget v4, LP/b;->m:I

    invoke-virtual {p0, v3, v4}, LP/b;->a(Ljava/lang/String;I)I

    move-result v3

    sput v3, LP/b;->m:I

    const-string v3, "SideSelectKey"

    sget v4, LP/b;->n:I

    invoke-virtual {p0, v3, v4}, LP/b;->a(Ljava/lang/String;I)I

    move-result v3

    sput v3, LP/b;->n:I

    const-string v3, "QwertyKeyboard"

    invoke-virtual {p0, v3, v2}, LP/b;->a(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, LP/b;->w:Z

    sget-boolean v3, LP/b;->u:Z

    if-eqz v3, :cond_b8

    sget v3, LP/b;->b:I

    sget v4, LP/b;->d:I

    sput v4, LP/b;->b:I

    sput v3, LP/b;->d:I

    :cond_b8
    const-string v3, "MenuKey"

    sget v4, LP/b;->g:I

    invoke-virtual {p0, v3, v4}, LP/b;->a(Ljava/lang/String;I)I

    move-result v3

    sput v3, LP/b;->g:I

    const-string v3, "SelectKey"

    sget v4, LP/b;->h:I

    invoke-virtual {p0, v3, v4}, LP/b;->a(Ljava/lang/String;I)I

    move-result v3

    sput v3, LP/b;->h:I

    const-string v3, "TalkKey"

    sget v4, LP/b;->i:I

    invoke-virtual {p0, v3, v4}, LP/b;->a(Ljava/lang/String;I)I

    move-result v3

    sput v3, LP/b;->i:I

    const-string v3, "VoiceSearchKey"

    sget v4, LP/b;->j:I

    invoke-virtual {p0, v3, v4}, LP/b;->a(Ljava/lang/String;I)I

    move-result v3

    sput v3, LP/b;->j:I

    const-string v3, "ClearKey"

    sget v4, LP/b;->k:I

    invoke-virtual {p0, v3, v4}, LP/b;->a(Ljava/lang/String;I)I

    move-result v3

    sput v3, LP/b;->k:I

    const-string v3, "UseNativeCommands"

    const-string v4, "nokia"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_139

    const-string v4, "sony"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_139

    move v0, v1

    :goto_fd
    invoke-virtual {p0, v3, v0}, LP/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, LP/b;->t:Z

    const-string v0, "UseNativeMenus"

    invoke-virtual {p0, v0, v2}, LP/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, LP/b;->x:Z

    const-string v0, "SoftkeyHeight"

    invoke-virtual {p0, v0, v2}, LP/b;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, LP/b;->y:I

    const-string v0, "AltNumberKeys"

    invoke-virtual {p0, v0}, LP/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LP/b;->c(Ljava/lang/String;)V

    const-string v0, "AltArrowKeys"

    invoke-virtual {p0, v0}, LP/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LP/b;->b(Ljava/lang/String;)V

    sget-boolean v0, LP/b;->x:Z

    if-eqz v0, :cond_12f

    sget-boolean v0, LP/b;->t:Z

    if-nez v0, :cond_12f

    sput-boolean v1, LP/b;->t:Z

    :cond_12f
    invoke-virtual {p0}, LP/b;->c()V

    return-void

    :cond_133
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    :cond_139
    move v0, v2

    goto :goto_fd
.end method

.method protected abstract c()V
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    const-string v0, "DistributionChannel"

    invoke-virtual {p0, v0}, LP/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    const-string v0, "AdsClient"

    invoke-virtual {p0, v0}, LP/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f()LP/d;
    .registers 2

    iget-object v0, p0, LP/b;->F:LP/d;

    return-object v0
.end method

.method public abstract g()LU/i;
.end method

.method public abstract h()LU/m;
.end method

.method public i()LP/a;
    .registers 2

    iget-object v0, p0, LP/b;->G:LP/a;

    return-object v0
.end method

.method public j()LX/c;
    .registers 2

    new-instance v0, LX/a;

    invoke-direct {v0}, LX/a;-><init>()V

    return-object v0
.end method
