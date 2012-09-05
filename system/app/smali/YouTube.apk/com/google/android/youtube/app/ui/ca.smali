.class final Lcom/google/android/youtube/app/ui/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bw;

.field private final b:Lcom/google/android/youtube/core/async/ad;

.field private final c:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final d:Lcom/google/android/youtube/core/utils/l;

.field private final e:Lcom/google/android/youtube/core/model/Subscription;

.field private final f:Lcom/google/android/youtube/core/async/a;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/bw;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/utils/l;Lcom/google/android/youtube/core/model/Subscription;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ca;->a:Lcom/google/android/youtube/app/ui/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/ca;->b:Lcom/google/android/youtube/core/async/ad;

    .line 156
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/ca;->c:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 157
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/ca;->d:Lcom/google/android/youtube/core/utils/l;

    .line 158
    iput-object p5, p0, Lcom/google/android/youtube/app/ui/ca;->e:Lcom/google/android/youtube/core/model/Subscription;

    .line 159
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/bw;->d(Lcom/google/android/youtube/app/ui/bw;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ca;->f:Lcom/google/android/youtube/core/async/a;

    .line 160
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ca;->b:Lcom/google/android/youtube/core/async/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ca;->c:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ca;->f:Lcom/google/android/youtube/core/async/a;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 164
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error retrieving new item count for ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ca;->e:Lcom/google/android/youtube/core/model/Subscription;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ca;->e:Lcom/google/android/youtube/core/model/Subscription;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xa

    .line 135
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/android/youtube/app/ui/ca;->g:I

    if-eq v2, v3, :cond_22

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ca;->d:Lcom/google/android/youtube/core/utils/l;

    invoke-interface {v2, v1}, Lcom/google/android/youtube/core/utils/l;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    :cond_22
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ca;->a:Lcom/google/android/youtube/app/ui/bw;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bw;->a(Lcom/google/android/youtube/app/ui/bw;)Lcom/google/android/youtube/app/a/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ca;->e:Lcom/google/android/youtube/core/model/Subscription;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/youtube/app/ui/ca;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/a/s;->a(Ljava/lang/String;I)V

    :goto_31
    return-void

    :cond_32
    iget v1, p0, Lcom/google/android/youtube/app/ui/ca;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/youtube/app/ui/ca;->g:I

    goto :goto_c

    :cond_39
    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    iget v1, p0, Lcom/google/android/youtube/app/ui/ca;->g:I

    if-gt v1, v3, :cond_41

    if-nez v0, :cond_51

    :cond_41
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ca;->a:Lcom/google/android/youtube/app/ui/bw;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bw;->a(Lcom/google/android/youtube/app/ui/bw;)Lcom/google/android/youtube/app/a/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ca;->e:Lcom/google/android/youtube/core/model/Subscription;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/youtube/app/ui/ca;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/a/s;->a(Ljava/lang/String;I)V

    goto :goto_31

    :cond_51
    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ca;->b:Lcom/google/android/youtube/core/async/ad;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ca;->f:Lcom/google/android/youtube/core/async/a;

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_31
.end method
