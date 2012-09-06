.class Lyi;
.super Ljava/lang/Object;
.source "ModelCacheImpl.java"

# interfaces
.implements LvB;


# instance fields
.field a:I

.field final synthetic a:Lyh;


# direct methods
.method constructor <init>(Lyh;)V
    .registers 3
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lyi;->a:Lyh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iget-object v0, p0, Lyi;->a:Lyh;

    invoke-static {v0}, Lyh;->a(Lyh;)I

    move-result v0

    iput v0, p0, Lyi;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 150
    sget-object v0, LwT;->a:LwT;

    invoke-virtual {v0}, LwT;->a()I

    move-result v0

    return v0
.end method

.method public a()J
    .registers 3

    .prologue
    .line 163
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a()Lcom/google/android/apps/docs/editors/jsvm/JSContext;
    .registers 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic a()Lvo;
    .registers 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lyi;->a()Lcom/google/android/apps/docs/editors/jsvm/JSContext;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 155
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lyi;->a:I

    return v0
.end method

.method public b()V
    .registers 1

    .prologue
    .line 159
    return-void
.end method
