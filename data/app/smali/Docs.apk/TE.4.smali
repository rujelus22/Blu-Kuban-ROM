.class public LTE;
.super Ljava/lang/Object;
.source "ContentSyncTasks.java"


# instance fields
.field private final a:I

.field private final a:J

.field private final a:LTD;

.field private a:Z

.field private final b:J

.field private b:LTD;


# direct methods
.method constructor <init>(LTD;JJI)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, LTD;->f:LTD;

    iput-object v0, p0, LTE;->b:LTD;

    .line 49
    iput-object p1, p0, LTE;->a:LTD;

    .line 50
    iput-wide p2, p0, LTE;->a:J

    .line 51
    iput-wide p4, p0, LTE;->b:J

    .line 52
    iput p6, p0, LTE;->a:I

    .line 53
    return-void
.end method

.method public static a()LTE;
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 56
    new-instance v0, LTE;

    sget-object v1, LTD;->a:LTD;

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, LTE;-><init>(LTD;JJI)V

    return-object v0
.end method

.method public static a(I)LTE;
    .registers 8
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 68
    new-instance v0, LTE;

    sget-object v1, LTD;->d:LTD;

    move-wide v4, v2

    move v6, p0

    invoke-direct/range {v0 .. v6}, LTE;-><init>(LTD;JJI)V

    return-object v0
.end method

.method public static a(JJ)LTE;
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v0, LTE;

    sget-object v1, LTD;->b:LTD;

    const/4 v6, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, LTE;-><init>(LTD;JJI)V

    return-object v0
.end method

.method static synthetic a(LTE;LTE;)LTE;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0, p1}, LTE;->b(LTE;LTE;)LTE;

    move-result-object v0

    return-object v0
.end method

.method public static b()LTE;
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 64
    new-instance v0, LTE;

    sget-object v1, LTD;->c:LTD;

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, LTE;-><init>(LTD;JJI)V

    return-object v0
.end method

.method private static b(LTE;LTE;)LTE;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p1}, LTE;->a()LTD;

    move-result-object v1

    .line 83
    sget-object v0, LTD;->c:LTD;

    if-eq v1, v0, :cond_10

    sget-object v0, LTD;->e:LTD;

    if-eq v1, v0, :cond_10

    sget-object v0, LTD;->d:LTD;

    if-ne v1, v0, :cond_22

    .line 85
    :cond_10
    new-instance v0, LTE;

    invoke-virtual {p0}, LTE;->a()J

    move-result-wide v2

    invoke-virtual {p0}, LTE;->b()J

    move-result-wide v4

    invoke-virtual {p1}, LTE;->a()I

    move-result v6

    invoke-direct/range {v0 .. v6}, LTE;-><init>(LTD;JJI)V

    move-object p1, v0

    .line 88
    :cond_22
    return-object p1
.end method

.method public static c()LTE;
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 72
    new-instance v0, LTE;

    sget-object v1, LTD;->e:LTD;

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, LTE;-><init>(LTD;JJI)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, LTE;->a:I

    return v0
.end method

.method public a()J
    .registers 3

    .prologue
    .line 96
    iget-wide v0, p0, LTE;->a:J

    return-wide v0
.end method

.method public a()LTD;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, LTE;->a:LTD;

    return-object v0
.end method

.method public a(LTD;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, LTE;->b:LTD;

    .line 117
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-boolean p1, p0, LTE;->a:Z

    .line 121
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 112
    iget-boolean v0, p0, LTE;->a:Z

    return v0
.end method

.method public b()J
    .registers 3

    .prologue
    .line 100
    iget-wide v0, p0, LTE;->b:J

    return-wide v0
.end method

.method public b()LTD;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, LTE;->b:LTD;

    return-object v0
.end method
