.class public Lcom/estrongs/android/pop/d/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/d/f;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field private static f:[I

.field private static g:Lcom/estrongs/android/pop/d/n;


# instance fields
.field protected e:Landroid/content/Context;

.field private h:Lcom/estrongs/android/pop/d/p;

.field private i:Lcom/estrongs/android/pop/d/q;

.field private j:Lcom/estrongs/android/pop/d/d;

.field private k:Lcom/estrongs/android/pop/d/d;

.field private l:Lcom/estrongs/android/pop/d/d;

.field private m:Lcom/estrongs/android/pop/d/d;

.field private n:[Lcom/estrongs/android/pop/d/m;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput v2, Lcom/estrongs/android/pop/d/n;->a:I

    sput v3, Lcom/estrongs/android/pop/d/n;->b:I

    sput v4, Lcom/estrongs/android/pop/d/n;->c:I

    sput v5, Lcom/estrongs/android/pop/d/n;->d:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/estrongs/android/pop/d/n;->a:I

    aput v1, v0, v2

    sget v1, Lcom/estrongs/android/pop/d/n;->b:I

    aput v1, v0, v3

    sget v1, Lcom/estrongs/android/pop/d/n;->c:I

    aput v1, v0, v4

    sget v1, Lcom/estrongs/android/pop/d/n;->d:I

    aput v1, v0, v5

    sput-object v0, Lcom/estrongs/android/pop/d/n;->f:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/d/n;->g:Lcom/estrongs/android/pop/d/n;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    iput-object v1, p0, Lcom/estrongs/android/pop/d/n;->i:Lcom/estrongs/android/pop/d/q;

    new-instance v0, Lcom/estrongs/android/pop/d/d;

    invoke-direct {v0}, Lcom/estrongs/android/pop/d/d;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d/n;->j:Lcom/estrongs/android/pop/d/d;

    new-instance v0, Lcom/estrongs/android/pop/d/d;

    invoke-direct {v0}, Lcom/estrongs/android/pop/d/d;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d/n;->k:Lcom/estrongs/android/pop/d/d;

    new-instance v0, Lcom/estrongs/android/pop/d/d;

    invoke-direct {v0}, Lcom/estrongs/android/pop/d/d;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d/n;->l:Lcom/estrongs/android/pop/d/d;

    new-instance v0, Lcom/estrongs/android/pop/d/d;

    invoke-direct {v0}, Lcom/estrongs/android/pop/d/d;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d/n;->m:Lcom/estrongs/android/pop/d/d;

    iput-object v1, p0, Lcom/estrongs/android/pop/d/n;->e:Landroid/content/Context;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/estrongs/android/pop/d/m;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/n;->n:[Lcom/estrongs/android/pop/d/m;

    invoke-static {p1}, Lcom/estrongs/android/pop/d/p;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/p;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    invoke-static {p1}, Lcom/estrongs/android/pop/d/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/d/n;->i:Lcom/estrongs/android/pop/d/q;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {p1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->f()Z

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->b(Z)Z

    :cond_49
    iput-object p1, p0, Lcom/estrongs/android/pop/d/n;->e:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;
    .registers 2

    sget-object v0, Lcom/estrongs/android/pop/d/n;->g:Lcom/estrongs/android/pop/d/n;

    if-nez v0, :cond_b

    new-instance v0, Lcom/estrongs/android/pop/d/n;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/d/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/d/n;->g:Lcom/estrongs/android/pop/d/n;

    :cond_b
    if-eqz p0, :cond_1b

    sget-object v0, Lcom/estrongs/android/pop/d/n;->g:Lcom/estrongs/android/pop/d/n;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/d/n;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/estrongs/android/pop/d/n;->g:Lcom/estrongs/android/pop/d/n;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/n;->b()Lcom/estrongs/android/pop/d/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/d/p;->b(Landroid/content/Context;)V

    :cond_1b
    sget-object v0, Lcom/estrongs/android/pop/d/n;->g:Lcom/estrongs/android/pop/d/n;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/d/p;->e(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/io/OutputStream;
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .registers 5

    const-wide/16 v1, 0x0

    sget v0, Lcom/estrongs/android/pop/d/n;->a:I

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->j:Lcom/estrongs/android/pop/d/d;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/d;->a(J)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    sget v0, Lcom/estrongs/android/pop/d/n;->b:I

    if-ne p1, v0, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->k:Lcom/estrongs/android/pop/d/d;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/d;->a(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_18
    sget v0, Lcom/estrongs/android/pop/d/n;->c:I

    if-ne p1, v0, :cond_23

    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->l:Lcom/estrongs/android/pop/d/d;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/d;->a(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_23
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->m:Lcom/estrongs/android/pop/d/d;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/d;->a(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;ZLcom/estrongs/android/pop/d/g;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/estrongs/android/pop/d/g;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const v3, 0x10008

    invoke-static {p3}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz p5, :cond_27

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20001

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    :goto_16
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20002

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_27
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    const-wide/16 v3, -0x1

    move-object v1, p3

    move-object v2, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/pop/d/g;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1a
.end method

.method public a(JZ)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p3, :cond_14

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v3, 0x1000c

    const v4, 0x20001

    move-wide v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/Object;)V

    :goto_13
    return-object v5

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/p;->a(J)Ljava/util/Map;

    move-result-object v5

    goto :goto_13
.end method

.method public a(Ljava/lang/String;ZZ)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-wide/16 v1, 0x0

    const v3, 0x10001

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_a

    :goto_9
    return-object v6

    :cond_a
    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/estrongs/android/util/ah;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz p2, :cond_39

    if-eqz v0, :cond_2f

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20001

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    iput-boolean p3, v0, Lcom/estrongs/android/pop/d/l;->b:Z

    :goto_2b
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/Object;)V

    goto :goto_9

    :cond_2f
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20002

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_39
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, p1, v4, p3}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v6

    goto :goto_9
.end method

.method public a()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/d/n;->n:[Lcom/estrongs/android/pop/d/m;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1e

    :goto_7
    return-void

    :cond_8
    iget-object v1, p0, Lcom/estrongs/android/pop/d/n;->n:[Lcom/estrongs/android/pop/d/m;

    new-instance v2, Lcom/estrongs/android/pop/d/m;

    sget-object v3, Lcom/estrongs/android/pop/d/n;->f:[I

    aget v3, v3, v0

    invoke-direct {v2, p0, v3}, Lcom/estrongs/android/pop/d/m;-><init>(Lcom/estrongs/android/pop/d/n;I)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/estrongs/android/pop/d/n;->n:[Lcom/estrongs/android/pop/d/m;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/estrongs/android/pop/d/m;->start()V

    add-int/lit8 v0, v0, 0x1

    :cond_1e
    sget-object v1, Lcom/estrongs/android/pop/d/n;->f:[I

    array-length v1, v1

    if-lt v0, v1, :cond_8

    goto :goto_7
.end method

.method public a(Lcom/estrongs/android/pop/d/o;)V
    .registers 3

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/d/o;)V

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/estrongs/android/pop/d/l;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/d/l;->a()I

    move-result v0

    const v1, 0x10001

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->j:Lcom/estrongs/android/pop/d/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/d/d;->a(Ljava/lang/Object;)V

    :goto_10
    return-void

    :cond_11
    invoke-virtual {p1}, Lcom/estrongs/android/pop/d/l;->a()I

    move-result v0

    const v1, 0x10005

    if-eq v0, v1, :cond_23

    invoke-virtual {p1}, Lcom/estrongs/android/pop/d/l;->a()I

    move-result v0

    const v1, 0x10004

    if-ne v0, v1, :cond_29

    :cond_23
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->k:Lcom/estrongs/android/pop/d/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/d/d;->a(Ljava/lang/Object;)V

    goto :goto_10

    :cond_29
    invoke-virtual {p1}, Lcom/estrongs/android/pop/d/l;->a()I

    move-result v0

    const v1, 0x1000a

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->l:Lcom/estrongs/android/pop/d/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/d/d;->a(Ljava/lang/Object;)V

    goto :goto_10

    :cond_38
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->m:Lcom/estrongs/android/pop/d/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/d/d;->a(Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public a(Z)V
    .registers 9

    const/4 v5, 0x0

    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/p;->a()V

    :goto_8
    return-void

    :cond_9
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const-wide/16 v1, 0x0

    const v3, 0x1000b

    const/4 v4, 0x0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Z)Z
    .registers 13

    const v3, 0x10006

    if-eqz p3, :cond_7

    if-nez p4, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    invoke-static {p3}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz p5, :cond_2d

    if-eqz v0, :cond_21

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20001

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    :goto_1c
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_8

    :cond_21
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20002

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_2d
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, p3, p4}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_8
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 14

    const v3, 0x10004

    if-eqz p3, :cond_7

    if-nez p4, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    invoke-static {p3}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p4}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz p5, :cond_4f

    if-eqz v0, :cond_35

    if-eqz v1, :cond_29

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20001

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    :goto_22
    iput-boolean p6, v0, Lcom/estrongs/android/pop/d/l;->c:Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_8

    :cond_29
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20003

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_35
    if-eqz v1, :cond_43

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20004

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_43
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20002

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_4f
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    const-wide/16 v3, -0x1

    move-object v1, p3

    move-object v2, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;Ljava/lang/String;JZ)Z

    move-result v0

    goto :goto_8
.end method

.method public a(JLjava/lang/String;Z)Z
    .registers 13

    const/4 v6, 0x0

    const v3, 0x10009

    const/4 v7, 0x0

    if-nez p3, :cond_9

    move v0, v7

    :goto_8
    return v0

    :cond_9
    invoke-static {p3}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz p4, :cond_2b

    if-eqz v0, :cond_20

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20001

    move-wide v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    :goto_1b
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/Object;)V

    move v0, v7

    goto :goto_8

    :cond_20
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20002

    move-wide v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_2b
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_8
.end method

.method public a(JLjava/lang/String;ZZ)Z
    .registers 13

    const/4 v6, 0x0

    const v3, 0x10002

    if-nez p3, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-static {p3}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz p5, :cond_2d

    if-eqz v0, :cond_22

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20001

    move-wide v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    :goto_1a
    invoke-virtual {v0, p4}, Lcom/estrongs/android/pop/d/l;->a(Z)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_7

    :cond_22
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20002

    move-wide v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_2d
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, p3, p4}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method public a(JLjava/util/Vector;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const v3, 0x10003

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-nez p3, :cond_8

    :goto_7
    return v1

    :cond_8
    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v2

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    :goto_17
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_30

    if-eqz v2, :cond_3d

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20001

    move-wide v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    :goto_29
    iput-object v7, v0, Lcom/estrongs/android/pop/d/l;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_7

    :cond_30
    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :cond_3d
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20002

    move-wide v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 11

    const-wide/16 v1, 0x0

    const/4 v6, 0x0

    const v3, 0x1000a

    const/4 v7, 0x0

    if-nez p1, :cond_b

    move v0, v7

    :goto_a
    return v0

    :cond_b
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz p2, :cond_2b

    if-eqz v0, :cond_21

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20001

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    :goto_1c
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/Object;)V

    move v0, v7

    goto :goto_a

    :cond_21
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20002

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_2b
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public b()Lcom/estrongs/android/pop/d/p;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    return-object v0
.end method

.method public b(I)V
    .registers 3

    sget v0, Lcom/estrongs/android/pop/d/n;->c:I

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->l:Lcom/estrongs/android/pop/d/d;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/d;->a()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->l:Lcom/estrongs/android/pop/d/d;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/d/d;->b()V

    :cond_11
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->e:Landroid/content/Context;

    if-eq v0, p1, :cond_6

    iput-object p1, p0, Lcom/estrongs/android/pop/d/n;->e:Landroid/content/Context;

    :cond_6
    return-void
.end method

.method public b(JLjava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 14

    const v3, 0x10005

    if-eqz p3, :cond_7

    if-nez p4, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    invoke-static {p3}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p4}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz p5, :cond_4f

    if-eqz v0, :cond_35

    if-eqz v1, :cond_29

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20001

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    :goto_22
    iput-boolean p6, v0, Lcom/estrongs/android/pop/d/l;->c:Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_8

    :cond_29
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20003

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_35
    if-eqz v1, :cond_43

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20004

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_43
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20002

    move-wide v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_4f
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    const-wide/16 v3, -0x1

    move-object v1, p3

    move-object v2, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    move-result v0

    goto :goto_8
.end method

.method public b(JLjava/lang/String;Z)Z
    .registers 12

    const/4 v6, 0x0

    const v3, 0x10003

    if-nez p3, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/estrongs/android/util/ah;->d(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz p4, :cond_31

    if-eqz v0, :cond_26

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20001

    move-wide v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    :goto_21
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_7

    :cond_26
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20002

    move-wide v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_31
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p3, v1, v2}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;J)Z

    move-result v0

    goto :goto_7
.end method

.method public c(JLjava/lang/String;Z)Lcom/estrongs/android/pop/d/e;
    .registers 12

    const v3, 0x10007

    const/4 v6, 0x0

    if-nez p3, :cond_7

    :goto_6
    return-object v6

    :cond_7
    invoke-static {p3}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz p4, :cond_28

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20001

    move-wide v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    :goto_19
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/Object;)V

    goto :goto_6

    :cond_1d
    new-instance v0, Lcom/estrongs/android/pop/d/l;

    const v4, 0x20002

    move-wide v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/d/l;-><init>(JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_28
    iget-object v0, p0, Lcom/estrongs/android/pop/d/n;->h:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/pop/d/p;->c(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v6

    goto :goto_6
.end method

.method public finalize()V
    .registers 1

    return-void
.end method
