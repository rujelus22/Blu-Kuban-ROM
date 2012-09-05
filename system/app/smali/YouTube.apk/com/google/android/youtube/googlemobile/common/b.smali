.class public abstract Lcom/google/android/youtube/googlemobile/common/b;
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

.field private static z:Lcom/google/android/youtube/googlemobile/common/b;


# instance fields
.field private E:Lcom/google/android/youtube/googlemobile/common/d;

.field private final F:Lcom/google/android/youtube/googlemobile/common/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, -0x270f

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->a:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->b:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->c:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->d:I

    const/16 v0, 0x2a

    sput v0, Lcom/google/android/youtube/googlemobile/common/b;->e:I

    const/16 v0, 0x23

    sput v0, Lcom/google/android/youtube/googlemobile/common/b;->f:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->g:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->h:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->i:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->j:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->k:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->l:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->m:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->n:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->o:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->p:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->q:I

    sput v1, Lcom/google/android/youtube/googlemobile/common/b;->r:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/youtube/googlemobile/common/b;->s:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/c;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/common/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/b;->F:Lcom/google/android/youtube/googlemobile/common/a;

    return-void
.end method

.method public static a()Lcom/google/android/youtube/googlemobile/common/b;
    .registers 1

    sget-object v0, Lcom/google/android/youtube/googlemobile/common/b;->z:Lcom/google/android/youtube/googlemobile/common/b;

    return-object v0
.end method

.method public static a(Lcom/google/android/youtube/googlemobile/common/b;)V
    .registers 1

    sput-object p0, Lcom/google/android/youtube/googlemobile/common/b;->z:Lcom/google/android/youtube/googlemobile/common/b;

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

    invoke-static {v2, v1}, Lcom/google/android/youtube/googlemobile/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_40
    move-exception v1

    const-string v2, "CONFIG"

    invoke-static {v2, v1}, Lcom/google/android/youtube/googlemobile/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method


# virtual methods
.method protected final b()V
    .registers 7

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {v5}, Lcom/google/android/youtube/googlemobile/common/d;->a(Ljava/lang/String;)Lcom/google/android/youtube/googlemobile/common/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/b;->E:Lcom/google/android/youtube/googlemobile/common/d;

    const-string v0, "microedition.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e3

    const-string v0, ""

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/b;->d()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/google/android/youtube/googlemobile/common/b;->B:Ljava/lang/String;

    if-nez v3, :cond_1f

    const-string v3, "unknown"

    sput-object v3, Lcom/google/android/youtube/googlemobile/common/b;->B:Ljava/lang/String;

    :cond_1f
    sput-object v5, Lcom/google/android/youtube/googlemobile/common/b;->C:Ljava/lang/String;

    if-nez v5, :cond_27

    const-string v3, "unknown"

    sput-object v3, Lcom/google/android/youtube/googlemobile/common/b;->C:Ljava/lang/String;

    :cond_27
    sput-object v5, Lcom/google/android/youtube/googlemobile/common/b;->D:Ljava/lang/String;

    if-nez v5, :cond_2f

    const-string v3, "unknown"

    sput-object v3, Lcom/google/android/youtube/googlemobile/common/b;->D:Ljava/lang/String;

    :cond_2f
    const-string v3, "BackKey"

    sget v3, Lcom/google/android/youtube/googlemobile/common/b;->a:I

    sput v3, Lcom/google/android/youtube/googlemobile/common/b;->a:I

    const-string v3, "LeftSoftKey"

    sget v3, Lcom/google/android/youtube/googlemobile/common/b;->b:I

    sput v3, Lcom/google/android/youtube/googlemobile/common/b;->b:I

    const-string v3, "MiddleSoftKey"

    sget v3, Lcom/google/android/youtube/googlemobile/common/b;->c:I

    sput v3, Lcom/google/android/youtube/googlemobile/common/b;->c:I

    const-string v3, "RightSoftKey"

    sget v3, Lcom/google/android/youtube/googlemobile/common/b;->d:I

    sput v3, Lcom/google/android/youtube/googlemobile/common/b;->d:I

    const-string v3, "ReverseSoftkeys"

    const-string v3, "nokia"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/google/android/youtube/googlemobile/common/b;->u:Z

    const-string v3, "SoftkeysOnSideInLandscape"

    sput-boolean v2, Lcom/google/android/youtube/googlemobile/common/b;->v:Z

    const-string v3, "SideUpKey"

    sget v3, Lcom/google/android/youtube/googlemobile/common/b;->l:I

    sput v3, Lcom/google/android/youtube/googlemobile/common/b;->l:I

    const-string v3, "SideDownKey"

    sget v3, Lcom/google/android/youtube/googlemobile/common/b;->m:I

    sput v3, Lcom/google/android/youtube/googlemobile/common/b;->m:I

    const-string v3, "SideSelectKey"

    sget v3, Lcom/google/android/youtube/googlemobile/common/b;->n:I

    sput v3, Lcom/google/android/youtube/googlemobile/common/b;->n:I

    const-string v3, "QwertyKeyboard"

    sput-boolean v2, Lcom/google/android/youtube/googlemobile/common/b;->w:Z

    sget-boolean v3, Lcom/google/android/youtube/googlemobile/common/b;->u:Z

    if-eqz v3, :cond_77

    sget v3, Lcom/google/android/youtube/googlemobile/common/b;->b:I

    sget v4, Lcom/google/android/youtube/googlemobile/common/b;->d:I

    sput v4, Lcom/google/android/youtube/googlemobile/common/b;->b:I

    sput v3, Lcom/google/android/youtube/googlemobile/common/b;->d:I

    :cond_77
    const-string v3, "MenuKey"

    sget v3, Lcom/google/android/youtube/googlemobile/common/b;->g:I

    sput v3, Lcom/google/android/youtube/googlemobile/common/b;->g:I

    const-string v3, "SelectKey"

    sget v3, Lcom/google/android/youtube/googlemobile/common/b;->h:I

    sput v3, Lcom/google/android/youtube/googlemobile/common/b;->h:I

    const-string v3, "TalkKey"

    sget v3, Lcom/google/android/youtube/googlemobile/common/b;->i:I

    sput v3, Lcom/google/android/youtube/googlemobile/common/b;->i:I

    const-string v3, "VoiceSearchKey"

    sget v3, Lcom/google/android/youtube/googlemobile/common/b;->j:I

    sput v3, Lcom/google/android/youtube/googlemobile/common/b;->j:I

    const-string v3, "ClearKey"

    sget v3, Lcom/google/android/youtube/googlemobile/common/b;->k:I

    sput v3, Lcom/google/android/youtube/googlemobile/common/b;->k:I

    const-string v3, "UseNativeCommands"

    const-string v3, "nokia"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e9

    const-string v3, "sony"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e9

    move v0, v1

    :goto_a8
    sput-boolean v0, Lcom/google/android/youtube/googlemobile/common/b;->t:Z

    const-string v0, "UseNativeMenus"

    sput-boolean v2, Lcom/google/android/youtube/googlemobile/common/b;->x:Z

    const-string v0, "SoftkeyHeight"

    sput v2, Lcom/google/android/youtube/googlemobile/common/b;->y:I

    const/16 v0, 0xc

    invoke-static {v0, v5}, Lcom/google/android/youtube/googlemobile/common/b;->a(ILjava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/b;->A:[I

    const/4 v0, 0x4

    invoke-static {v0, v5}, Lcom/google/android/youtube/googlemobile/common/b;->a(ILjava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_d5

    sput-boolean v1, Lcom/google/android/youtube/googlemobile/common/b;->s:Z

    aget v2, v0, v2

    sput v2, Lcom/google/android/youtube/googlemobile/common/b;->o:I

    aget v2, v0, v1

    sput v2, Lcom/google/android/youtube/googlemobile/common/b;->q:I

    const/4 v2, 0x2

    aget v2, v0, v2

    sput v2, Lcom/google/android/youtube/googlemobile/common/b;->p:I

    const/4 v2, 0x3

    aget v0, v0, v2

    sput v0, Lcom/google/android/youtube/googlemobile/common/b;->r:I

    :cond_d5
    sget-boolean v0, Lcom/google/android/youtube/googlemobile/common/b;->x:Z

    if-eqz v0, :cond_df

    sget-boolean v0, Lcom/google/android/youtube/googlemobile/common/b;->t:Z

    if-nez v0, :cond_df

    sput-boolean v1, Lcom/google/android/youtube/googlemobile/common/b;->t:Z

    :cond_df
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/b;->c()V

    return-void

    :cond_e3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    :cond_e9
    move v0, v2

    goto :goto_a8
.end method

.method protected abstract c()V
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final e()Lcom/google/android/youtube/googlemobile/common/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/b;->E:Lcom/google/android/youtube/googlemobile/common/d;

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Lcom/google/android/youtube/googlemobile/common/io/h;
.end method

.method public abstract h()Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;
.end method

.method public i()Lcom/google/android/youtube/googlemobile/common/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/b;->F:Lcom/google/android/youtube/googlemobile/common/a;

    return-object v0
.end method
