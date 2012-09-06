.class public final Lcom/dropbox/android/taskqueue/i;
.super Lcom/dropbox/android/taskqueue/p;
.source "panda.py"


# instance fields
.field private final b:Ljava/util/HashSet;

.field private final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 22
    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/dropbox/android/taskqueue/p;-><init>(IILjava/util/List;)V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/i;->b:Ljava/util/HashSet;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/i;->c:Ljava/util/HashMap;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/i;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 53
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/MetadataTask;)V
    .registers 4
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/i;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/MetadataTask;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 28
    invoke-super {p0, p1}, Lcom/dropbox/android/taskqueue/p;->b(Lcom/dropbox/android/taskqueue/k;)V

    .line 30
    :cond_f
    return-void
.end method

.method protected final a(Lcom/dropbox/android/taskqueue/MetadataTask;Lcom/dropbox/android/taskqueue/m;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p2}, Lcom/dropbox/android/taskqueue/m;->b()Lcom/dropbox/android/taskqueue/n;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/n;->a:Lcom/dropbox/android/taskqueue/n;

    if-ne v0, v1, :cond_22

    .line 42
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/i;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/MetadataTask;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/i;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/MetadataTask;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_22
    return-void
.end method

.method protected final bridge synthetic a(Lcom/dropbox/android/taskqueue/k;Lcom/dropbox/android/taskqueue/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/dropbox/android/taskqueue/MetadataTask;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/taskqueue/i;->a(Lcom/dropbox/android/taskqueue/MetadataTask;Lcom/dropbox/android/taskqueue/m;)V

    return-void
.end method

.method protected final synthetic a(Lcom/dropbox/android/taskqueue/k;)Z
    .registers 3
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/dropbox/android/taskqueue/MetadataTask;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/taskqueue/i;->b(Lcom/dropbox/android/taskqueue/MetadataTask;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/dropbox/android/taskqueue/k;Z)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 58
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 59
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 60
    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-gez v0, :cond_26

    .line 62
    const/4 v0, 0x0

    .line 68
    :goto_25
    return v0

    .line 65
    :cond_26
    if-eqz p2, :cond_31

    .line 66
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/i;->c:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_31
    const/4 v0, 0x1

    goto :goto_25
.end method

.method public final synthetic b(Lcom/dropbox/android/taskqueue/k;)V
    .registers 2
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/dropbox/android/taskqueue/MetadataTask;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/taskqueue/i;->a(Lcom/dropbox/android/taskqueue/MetadataTask;)V

    return-void
.end method

.method protected final b(Lcom/dropbox/android/taskqueue/MetadataTask;)Z
    .registers 3
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/android/taskqueue/i;->a(Lcom/dropbox/android/taskqueue/k;Z)Z

    move-result v0

    return v0
.end method
