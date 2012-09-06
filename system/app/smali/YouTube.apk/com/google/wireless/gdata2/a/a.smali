.class public final Lcom/google/wireless/gdata2/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lcom/google/wireless/gdata2/a/a/a;


# direct methods
.method private static a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    :cond_8
    const/4 v0, 0x1

    :goto_9
    if-nez v0, :cond_1b

    .line 340
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    :cond_1b
    return-void

    .line 339
    :cond_1c
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    const-string v1, "ID"

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TITLE"

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EDIT URI"

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTML URI"

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SUMMARY"

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CONTENT"

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AUTHOR"

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CATEGORY"

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CATEGORY SCHEME"

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PUBLICATION DATE"

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UPDATE DATE"

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DELETED"

    iget-boolean v2, p0, Lcom/google/wireless/gdata2/a/a;->m:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ETAG"

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/wireless/gdata2/a/a;->n:Lcom/google/wireless/gdata2/a/a/a;

    if-eqz v1, :cond_77

    const-string v1, "BATCH"

    iget-object v2, p0, Lcom/google/wireless/gdata2/a/a;->n:Lcom/google/wireless/gdata2/a/a/a;

    invoke-virtual {v2}, Lcom/google/wireless/gdata2/a/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/a/a;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
