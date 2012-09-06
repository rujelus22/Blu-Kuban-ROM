.class final Lcom/anddoes/launcher/p;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/ApexService;


# direct methods
.method private constructor <init>(Lcom/anddoes/launcher/ApexService;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/anddoes/launcher/p;->a:Lcom/anddoes/launcher/ApexService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anddoes/launcher/ApexService;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/p;-><init>(Lcom/anddoes/launcher/ApexService;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 207
    .line 208
    iget-object v1, p0, Lcom/anddoes/launcher/p;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v1}, Lcom/anddoes/launcher/ApexService;->e(Lcom/anddoes/launcher/ApexService;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 209
    iget-object v1, p0, Lcom/anddoes/launcher/p;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v1}, Lcom/anddoes/launcher/ApexService;->d(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anddoes/launcher/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 210
    iget-object v0, p0, Lcom/anddoes/launcher/p;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0}, Lcom/anddoes/launcher/ApexService;->h(Lcom/anddoes/launcher/ApexService;)Z

    move-result v0

    .line 222
    :cond_1b
    :goto_1b
    if-nez v0, :cond_22

    .line 223
    iget-object v0, p0, Lcom/anddoes/launcher/p;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0}, Lcom/anddoes/launcher/ApexService;->c(Lcom/anddoes/launcher/ApexService;)V

    .line 225
    :cond_22
    return-void

    .line 213
    :cond_23
    iget-object v1, p0, Lcom/anddoes/launcher/p;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v1}, Lcom/anddoes/launcher/ApexService;->f(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/preference/e;

    move-result-object v1

    const-string v2, "license_type"

    invoke-virtual {v1, v2, v0}, Lcom/anddoes/launcher/preference/e;->a(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 214
    iget-object v1, p0, Lcom/anddoes/launcher/p;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v1}, Lcom/anddoes/launcher/ApexService;->d(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anddoes/launcher/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 215
    iget-object v0, p0, Lcom/anddoes/launcher/p;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0}, Lcom/anddoes/launcher/ApexService;->i(Lcom/anddoes/launcher/ApexService;)Z

    move-result v0

    goto :goto_1b

    .line 217
    :cond_45
    iget-object v1, p0, Lcom/anddoes/launcher/p;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v1}, Lcom/anddoes/launcher/ApexService;->d(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anddoes/launcher/a/e;->c()V

    .line 218
    iget-object v1, p0, Lcom/anddoes/launcher/p;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v1, v0}, Lcom/anddoes/launcher/ApexService;->a(Lcom/anddoes/launcher/ApexService;Z)V

    goto :goto_1b
.end method
