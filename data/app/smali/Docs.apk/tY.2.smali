.class public LtY;
.super Ljava/lang/Object;
.source "UploadQueueService.java"

# interfaces
.implements Lua;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

.field a:LtZ;

.field a:Lua;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;Lua;LtZ;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, LtY;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, LtY;->a:Lua;

    .line 146
    iput-object p3, p0, LtY;->a:LtZ;

    .line 147
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, LtY;->a:Lua;

    invoke-interface {v0}, Lua;->a()V

    .line 157
    return-void
.end method

.method public a(JJ)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, LtY;->a:Lua;

    invoke-interface {v0, p1, p2, p3, p4}, Lua;->a(JJ)V

    .line 172
    iget-object v0, p0, LtY;->a:LtZ;

    const-wide/16 v1, 0x64

    mul-long/2addr v1, p1

    div-long/2addr v1, p3

    long-to-int v1, v1

    iput v1, v0, LtZ;->a:I

    .line 174
    iget-object v0, p0, LtY;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    iget-object v0, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtT;

    .line 175
    invoke-interface {v0}, LtT;->e()V

    goto :goto_16

    .line 177
    :cond_26
    return-void
.end method

.method public a(LtH;)V
    .registers 3
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, LtY;->a:Lua;

    invoke-interface {v0, p1}, Lua;->a(LtH;)V

    .line 152
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, LtY;->a:Lua;

    invoke-interface {v0}, Lua;->b()V

    .line 162
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, LtY;->a:Lua;

    invoke-interface {v0}, Lua;->c()V

    .line 167
    return-void
.end method
