.class final Lcom/anddoes/launcher/k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/i;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/i;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/k;->a:Lcom/anddoes/launcher/i;

    iput-object p2, p0, Lcom/anddoes/launcher/k;->b:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .registers 5

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/anddoes/launcher/k;->a:Lcom/anddoes/launcher/i;

    iget-object v0, v0, Lcom/anddoes/launcher/i;->a:Lcom/google/android/apps/analytics/i;

    iget-object v1, p0, Lcom/anddoes/launcher/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/i;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 143
    :goto_9
    const/4 v0, 0x0

    return-object v0

    .line 139
    :catch_b
    move-exception v0

    .line 141
    const-string v1, "AnalyticsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Analytics trackPageView error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anddoes/launcher/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/anddoes/launcher/k;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
