.class final Lcom/anddoes/launcher/l;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/i;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:I


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/l;->a:Lcom/anddoes/launcher/i;

    iput-object p2, p0, Lcom/anddoes/launcher/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/anddoes/launcher/l;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/anddoes/launcher/l;->d:Ljava/lang/String;

    iput p5, p0, Lcom/anddoes/launcher/l;->e:I

    .line 154
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .registers 6

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/anddoes/launcher/l;->a:Lcom/anddoes/launcher/i;

    iget-object v0, v0, Lcom/anddoes/launcher/i;->a:Lcom/google/android/apps/analytics/i;

    iget-object v1, p0, Lcom/anddoes/launcher/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anddoes/launcher/l;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/anddoes/launcher/l;->d:Ljava/lang/String;

    iget v4, p0, Lcom/anddoes/launcher/l;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/analytics/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    .line 166
    :goto_f
    const/4 v0, 0x0

    return-object v0

    .line 161
    :catch_11
    move-exception v0

    .line 163
    const-string v1, "AnalyticsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Analytics trackEvent error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/anddoes/launcher/l;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/anddoes/launcher/l;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/anddoes/launcher/l;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/anddoes/launcher/l;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/anddoes/launcher/l;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
