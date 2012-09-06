.class public final Lcom/google/api/client/googleapis/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/i;
.implements Lcom/google/api/client/http/o;


# instance fields
.field private final a:Ljava/util/EnumSet;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-class v0, Lcom/google/api/client/http/HttpMethod;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/a;->a:Ljava/util/EnumSet;

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/l;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/l;->a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/l;

    .line 75
    return-void
.end method

.method public final b(Lcom/google/api/client/http/l;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1}, Lcom/google/api/client/http/l;->b()Lcom/google/api/client/http/HttpMethod;

    move-result-object v2

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->GET:Lcom/google/api/client/http/HttpMethod;

    if-eq v2, v3, :cond_32

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    if-eq v2, v3, :cond_32

    iget-object v3, p0, Lcom/google/api/client/googleapis/a;->a:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_16
    :goto_16
    if-eqz v0, :cond_31

    .line 79
    invoke-virtual {p1}, Lcom/google/api/client/http/l;->b()Lcom/google/api/client/http/HttpMethod;

    move-result-object v0

    .line 80
    sget-object v2, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {p1, v2}, Lcom/google/api/client/http/l;->a(Lcom/google/api/client/http/HttpMethod;)Lcom/google/api/client/http/l;

    .line 81
    invoke-virtual {p1}, Lcom/google/api/client/http/l;->e()Lcom/google/api/client/http/j;

    move-result-object v2

    const-string v3, "X-HTTP-Method-Override"

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/api/client/http/j;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p1, v1}, Lcom/google/api/client/http/l;->a(Z)Lcom/google/api/client/http/l;

    .line 85
    :cond_31
    return-void

    .line 78
    :cond_32
    sget-object v3, Lcom/google/api/client/googleapis/b;->a:[I

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpMethod;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_58

    move v0, v1

    goto :goto_16

    :pswitch_3f
    invoke-virtual {p1}, Lcom/google/api/client/http/l;->a()Lcom/google/api/client/http/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/r;->d()Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    goto :goto_16

    :pswitch_4b
    invoke-virtual {p1}, Lcom/google/api/client/http/l;->a()Lcom/google/api/client/http/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/r;->c()Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    goto :goto_16

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_4b
    .end packed-switch
.end method
