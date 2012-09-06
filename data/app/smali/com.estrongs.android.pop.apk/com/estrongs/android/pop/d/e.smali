.class public Lcom/estrongs/android/pop/d/e;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:J

.field public f:I

.field public g:I

.field public h:J

.field public i:J

.field public j:J

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:Ljava/lang/String;

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "COMM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FILESYSTEM"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NAMED_PIPE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PRINTER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SERVER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SHARE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WORKGROUP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/d/e;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    iput-wide v2, p0, Lcom/estrongs/android/pop/d/e;->e:J

    iput v1, p0, Lcom/estrongs/android/pop/d/e;->f:I

    iput v1, p0, Lcom/estrongs/android/pop/d/e;->g:I

    iput-wide v2, p0, Lcom/estrongs/android/pop/d/e;->h:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/d/e;->i:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/d/e;->j:J

    iput-boolean v1, p0, Lcom/estrongs/android/pop/d/e;->n:Z

    iput-object v0, p0, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    iput v1, p0, Lcom/estrongs/android/pop/d/e;->q:I

    iput-object v0, p0, Lcom/estrongs/android/pop/d/e;->r:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/d/e;->s:I

    iput-object p1, p0, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    sparse-switch p1, :sswitch_data_3c

    :goto_3
    return-void

    :sswitch_4
    sget-object v0, Lcom/estrongs/android/pop/d/e;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    goto :goto_3

    :sswitch_c
    sget-object v0, Lcom/estrongs/android/pop/d/e;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    goto :goto_3

    :sswitch_14
    sget-object v0, Lcom/estrongs/android/pop/d/e;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    goto :goto_3

    :sswitch_1c
    sget-object v0, Lcom/estrongs/android/pop/d/e;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    goto :goto_3

    :sswitch_24
    sget-object v0, Lcom/estrongs/android/pop/d/e;->a:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    goto :goto_3

    :sswitch_2c
    sget-object v0, Lcom/estrongs/android/pop/d/e;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    goto :goto_3

    :sswitch_34
    sget-object v0, Lcom/estrongs/android/pop/d/e;->a:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    goto :goto_3

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_34
        0x4 -> :sswitch_24
        0x8 -> :sswitch_2c
        0x10 -> :sswitch_14
        0x20 -> :sswitch_1c
        0x40 -> :sswitch_4
    .end sparse-switch
.end method
