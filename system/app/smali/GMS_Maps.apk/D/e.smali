.class public LD/e;
.super LD/g;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, LD/g;-><init>(J)V

    .line 20
    iput-object p3, p0, LD/e;->a:Ljava/lang/String;

    .line 21
    iput-boolean p4, p0, LD/e;->b:Z

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/io/Writer;)V
    .registers 6
    .parameter

    .prologue
    .line 26
    const-string v1, "<%s %s=\'%s\' %s=\'%s\' %s=\'%s\' />\n"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "provider-enabled"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "time"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, LD/e;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "provider"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, LD/e;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "enabled"

    aput-object v3, v2, v0

    const/4 v3, 0x6

    iget-boolean v0, p0, LD/e;->b:Z

    if-eqz v0, :cond_36

    const-string v0, "true"

    :goto_2c
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 32
    return-void

    .line 26
    :cond_36
    const-string v0, "false"

    goto :goto_2c
.end method
