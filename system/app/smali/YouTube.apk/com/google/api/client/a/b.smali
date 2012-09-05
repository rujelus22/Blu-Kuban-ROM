.class public final Lcom/google/api/client/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/h;
.implements Lcom/google/api/client/http/n;


# instance fields
.field private final a:Ljava/util/EnumSet;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-class v0, Lcom/google/api/client/http/HttpMethod;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/a/b;->a:Ljava/util/EnumSet;

    .line 63
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/k;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p0, p1, Lcom/google/api/client/http/k;->a:Lcom/google/api/client/http/h;

    .line 77
    return-void
.end method

.method public final b(Lcom/google/api/client/http/k;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    iget-object v2, p1, Lcom/google/api/client/http/k;->h:Lcom/google/api/client/http/HttpMethod;

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    if-eq v2, v3, :cond_42

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    if-eq v2, v3, :cond_42

    iget-object v3, p0, Lcom/google/api/client/a/b;->a:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    :cond_14
    :goto_14
    if-eqz v0, :cond_41

    .line 81
    iget-object v0, p1, Lcom/google/api/client/http/k;->h:Lcom/google/api/client/http/HttpMethod;

    .line 82
    sget-object v1, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/k;->a(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/k;

    .line 83
    iget-object v1, p1, Lcom/google/api/client/http/k;->b:Lcom/google/api/client/http/i;

    const-string v2, "X-HTTP-Method-Override"

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/api/client/http/i;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v0, p1, Lcom/google/api/client/http/k;->f:Lcom/google/api/client/http/g;

    if-eqz v0, :cond_38

    iget-object v0, p1, Lcom/google/api/client/http/k;->f:Lcom/google/api/client/http/g;

    invoke-interface {v0}, Lcom/google/api/client/http/g;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_41

    .line 86
    :cond_38
    const/4 v0, 0x0

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/google/api/client/http/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/c;

    move-result-object v0

    iput-object v0, p1, Lcom/google/api/client/http/k;->f:Lcom/google/api/client/http/g;

    .line 89
    :cond_41
    return-void

    .line 80
    :cond_42
    sget-object v3, Lcom/google/api/client/a/c;->a:[I

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpMethod;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_64

    move v0, v1

    goto :goto_14

    :pswitch_4f
    iget-object v2, p1, Lcom/google/api/client/http/k;->g:Lcom/google/api/client/http/p;

    invoke-virtual {v2}, Lcom/google/api/client/http/p;->d()Z

    move-result v2

    if-eqz v2, :cond_14

    move v0, v1

    goto :goto_14

    :pswitch_59
    iget-object v2, p1, Lcom/google/api/client/http/k;->g:Lcom/google/api/client/http/p;

    invoke-virtual {v2}, Lcom/google/api/client/http/p;->c()Z

    move-result v2

    if-eqz v2, :cond_14

    move v0, v1

    goto :goto_14

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_59
    .end packed-switch
.end method
