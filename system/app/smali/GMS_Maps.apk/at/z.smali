.class Lat/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lat/x;


# direct methods
.method private constructor <init>(Lat/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1096
    iput-object p1, p0, Lat/z;->a:Lat/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lat/x;Lat/y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1096
    invoke-direct {p0, p1}, Lat/z;-><init>(Lat/x;)V

    return-void
.end method

.method private a(Lat/P;)Lat/I;
    .registers 5
    .parameter

    .prologue
    .line 1111
    new-instance v0, Lat/I;

    invoke-direct {v0, p1}, Lat/I;-><init>(Lat/P;)V

    .line 1113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lat/I;->a(Z)V

    .line 1114
    new-instance v1, Lat/A;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lat/A;-><init>(Lat/z;LY/c;Lat/I;)V

    invoke-virtual {v1}, Lat/A;->g()V

    .line 1121
    return-object v0
.end method

.method private a(Lat/I;)V
    .registers 5
    .parameter

    .prologue
    .line 1125
    iget-object v0, p0, Lat/z;->a:Lat/x;

    invoke-virtual {p1}, Lat/I;->c()Lat/P;

    move-result-object v1

    invoke-static {v0, v1}, Lat/x;->a(Lat/x;Lat/P;)Lat/e;

    move-result-object v0

    .line 1126
    iget-object v1, p0, Lat/z;->a:Lat/x;

    invoke-virtual {v0}, Lat/e;->d()Lat/f;

    move-result-object v0

    invoke-virtual {p1}, Lat/I;->c()Lat/P;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lat/x;->a(Lat/x;Lat/f;Lat/P;)Lat/I;

    move-result-object v0

    .line 1128
    if-nez v0, :cond_1f

    .line 1131
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lat/I;->a(Z)V

    .line 1135
    :goto_1e
    return-void

    .line 1133
    :cond_1f
    invoke-virtual {v0}, Lat/I;->b()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lat/I;->a([B)V

    goto :goto_1e
.end method

.method static synthetic a(Lat/z;Lat/I;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1096
    invoke-direct {p0, p1}, Lat/z;->a(Lat/I;)V

    return-void
.end method


# virtual methods
.method public a(Lat/e;Lat/P;)Lat/I;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1103
    invoke-direct {p0, p2}, Lat/z;->a(Lat/P;)Lat/I;

    move-result-object v0

    return-object v0
.end method
