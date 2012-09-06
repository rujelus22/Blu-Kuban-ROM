.class public final Lcom/google/android/youtube/core/model/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/youtube/core/model/n;


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/net/Uri;

.field public final g:Landroid/net/Uri;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public final k:Ljava/util/List;

.field public final l:Ljava/util/List;

.field public final m:Ljava/util/List;

.field public final n:Ljava/util/List;

.field public final o:Ljava/util/List;

.field public final p:Ljava/util/List;

.field public final q:Ljava/util/List;

.field public final r:Ljava/util/List;

.field public final s:Ljava/util/List;

.field public final t:Ljava/util/List;

.field public final u:Ljava/util/List;

.field public final v:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/youtube/core/model/n;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/n;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/model/n;->a:Lcom/google/android/youtube/core/model/n;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->b:Ljava/util/List;

    .line 190
    iput-object v1, p0, Lcom/google/android/youtube/core/model/n;->c:Ljava/lang/String;

    .line 191
    iput-object v1, p0, Lcom/google/android/youtube/core/model/n;->d:Ljava/lang/String;

    .line 192
    iput-object v1, p0, Lcom/google/android/youtube/core/model/n;->e:Ljava/lang/String;

    .line 193
    iput-object v1, p0, Lcom/google/android/youtube/core/model/n;->f:Landroid/net/Uri;

    .line 194
    iput-object v1, p0, Lcom/google/android/youtube/core/model/n;->g:Landroid/net/Uri;

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->h:Ljava/util/List;

    .line 196
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->i:Ljava/util/List;

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->j:Ljava/util/List;

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->k:Ljava/util/List;

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->l:Ljava/util/List;

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->m:Ljava/util/List;

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->n:Ljava/util/List;

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->o:Ljava/util/List;

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->p:Ljava/util/List;

    .line 204
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->q:Ljava/util/List;

    .line 205
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->r:Ljava/util/List;

    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->s:Ljava/util/List;

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->t:Ljava/util/List;

    .line 208
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->u:Ljava/util/List;

    .line 209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->v:Ljava/util/List;

    .line 210
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const-string v0, "Impression uris cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7f

    const/4 v0, 0x1

    :goto_f
    const-string v1, "Impression uris cannot be empty"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 162
    invoke-static {p1}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->b:Ljava/util/List;

    .line 163
    iput-object p2, p0, Lcom/google/android/youtube/core/model/n;->c:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/google/android/youtube/core/model/n;->d:Ljava/lang/String;

    .line 165
    iput-object p4, p0, Lcom/google/android/youtube/core/model/n;->e:Ljava/lang/String;

    .line 166
    iput-object p5, p0, Lcom/google/android/youtube/core/model/n;->f:Landroid/net/Uri;

    .line 167
    iput-object p6, p0, Lcom/google/android/youtube/core/model/n;->g:Landroid/net/Uri;

    .line 168
    invoke-static {p7}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->h:Ljava/util/List;

    .line 169
    invoke-static {p8}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->i:Ljava/util/List;

    .line 170
    invoke-static {p9}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->j:Ljava/util/List;

    .line 171
    invoke-static {p10}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->k:Ljava/util/List;

    .line 172
    invoke-static {p11}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->l:Ljava/util/List;

    .line 173
    invoke-static {p12}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->m:Ljava/util/List;

    .line 174
    invoke-static {p13}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->n:Ljava/util/List;

    .line 175
    invoke-static/range {p14 .. p14}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->o:Ljava/util/List;

    .line 176
    invoke-static/range {p15 .. p15}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->p:Ljava/util/List;

    .line 177
    invoke-static/range {p16 .. p16}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->q:Ljava/util/List;

    .line 178
    invoke-static/range {p17 .. p17}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->r:Ljava/util/List;

    .line 179
    invoke-static/range {p18 .. p18}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->s:Ljava/util/List;

    .line 180
    invoke-static/range {p19 .. p19}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->t:Ljava/util/List;

    .line 181
    invoke-static/range {p20 .. p20}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->u:Ljava/util/List;

    .line 182
    invoke-static/range {p21 .. p21}, Lcom/google/android/youtube/core/model/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/n;->v:Ljava/util/List;

    .line 183
    return-void

    .line 161
    :cond_7f
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 132
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/o;
    .registers 3

    .prologue
    .line 213
    new-instance v0, Lcom/google/android/youtube/core/model/o;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/o;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->b(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->q(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->g:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->r(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->c(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->d(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->e(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->f(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->g(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->h(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->n:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->i(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->o:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->j(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->k(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->l(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->m(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->n(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->o(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->u:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->p(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->v:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->q(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/core/model/n;->f:Landroid/net/Uri;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/youtube/core/model/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/core/model/n;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VastAd: [adVideoId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoTitle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/n;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
