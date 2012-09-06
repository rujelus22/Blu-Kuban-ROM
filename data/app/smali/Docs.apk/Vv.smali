.class public LVv;
.super LTV;
.source "UpdatedDateMonitorProcessorImpl.java"

# interfaces
.implements LVu;


# instance fields
.field private a:Ljava/util/Date;

.field private final a:Lle;


# direct methods
.method public constructor <init>(LTN;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, LTV;-><init>(LTN;)V

    .line 32
    new-instance v0, Llf;

    invoke-direct {v0}, Llf;-><init>()V

    iput-object v0, p0, LVv;->a:Lle;

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, LVv;->a:Ljava/util/Date;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, LVv;->a:Ljava/util/Date;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, LVv;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_5
.end method

.method public a(LSr;LSs;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-virtual {p2}, LSs;->v()Ljava/lang/String;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_16

    .line 42
    :try_start_6
    iget-object v0, p0, LVv;->a:Lle;

    invoke-interface {v0, v1}, Lle;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 43
    iget-object v2, p0, LVv;->a:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 44
    iput-object v0, p0, LVv;->a:Ljava/util/Date;
    :try_end_16
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_16} :catch_1a

    .line 50
    :cond_16
    :goto_16
    invoke-super {p0, p1, p2}, LTV;->a(LSr;LSs;)V

    .line 51
    return-void

    .line 46
    :catch_1a
    move-exception v0

    .line 47
    const-string v2, "UpdatedDateMonitorProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing date "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    if-nez p1, :cond_5

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, LVv;->a:Ljava/util/Date;

    .line 59
    :cond_5
    invoke-super {p0, p1}, LTV;->a(Ljava/lang/String;)V

    .line 60
    return-void
.end method
