.class public Lek;
.super Ljava/lang/Object;
.source "DocListConfiguration.java"


# instance fields
.field private a:J

.field private a:LOG;

.field private a:Lem;

.field private a:Ljava/lang/String;

.field private a:Lnk;

.field private a:LsO;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lek;->a:J

    .line 21
    iput-object v2, p0, Lek;->a:Lnk;

    .line 22
    iput-object v2, p0, Lek;->b:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lek;->c:Ljava/lang/String;

    .line 25
    sget-object v0, LsO;->b:LsO;

    iput-object v0, p0, Lek;->a:LsO;

    .line 26
    invoke-static {}, LOG;->a()LOG;

    move-result-object v0

    iput-object v0, p0, Lek;->a:LOG;

    .line 145
    new-instance v0, Lem;

    invoke-direct {v0, v2, v2}, Lem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lek;->a:Lem;

    .line 146
    return-void
.end method

.method static synthetic a(Lek;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lek;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 165
    iget-wide v0, p0, Lek;->a:J

    return-wide v0
.end method

.method public a()LOG;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lek;->a:LOG;

    return-object v0
.end method

.method public a()Lem;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lek;->a:Lem;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lek;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Lnk;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lek;->a:Lnk;

    return-object v0
.end method

.method public a()LsO;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lek;->a:LsO;

    return-object v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 167
    iput-wide p1, p0, Lek;->a:J

    return-void
.end method

.method public a(LOG;)V
    .registers 2
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lek;->a:LOG;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lek;->a:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public a(Lnk;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lek;->a:Lnk;

    return-void
.end method

.method public a(LsO;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lek;->a:LsO;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lek;->c:Ljava/lang/String;

    return-object v0
.end method
