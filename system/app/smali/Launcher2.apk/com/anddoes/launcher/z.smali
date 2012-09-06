.class final Lcom/anddoes/launcher/z;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field a:Lcom/anddoes/launcher/as;

.field b:I

.field c:I


# direct methods
.method constructor <init>(ILcom/anddoes/launcher/as;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 140
    iput p1, p0, Lcom/anddoes/launcher/z;->b:I

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/z;->c:I

    .line 142
    iput-object p2, p0, Lcom/anddoes/launcher/z;->a:Lcom/anddoes/launcher/as;

    .line 143
    return-void
.end method


# virtual methods
.method final a()V
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/anddoes/launcher/z;->c:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 167
    return-void
.end method

.method final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput p1, p0, Lcom/anddoes/launcher/z;->c:I

    .line 163
    return-void
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1
    check-cast p1, [Lcom/anddoes/launcher/ar;

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/anddoes/launcher/ar;->g:Lcom/anddoes/launcher/aq;

    aget-object v1, p1, v2

    invoke-interface {v0, p0, v1}, Lcom/anddoes/launcher/aq;->a(Lcom/anddoes/launcher/z;Lcom/anddoes/launcher/ar;)V

    aget-object v0, p1, v2

    goto :goto_8
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/anddoes/launcher/ar;

    iget-object v0, p1, Lcom/anddoes/launcher/ar;->h:Lcom/anddoes/launcher/aq;

    invoke-interface {v0, p0, p1}, Lcom/anddoes/launcher/aq;->a(Lcom/anddoes/launcher/z;Lcom/anddoes/launcher/ar;)V

    return-void
.end method
