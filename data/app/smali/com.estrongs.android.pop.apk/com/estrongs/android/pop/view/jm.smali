.class Lcom/estrongs/android/pop/view/jm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/ftp/n;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/jl;

.field private final synthetic b:Lcom/estrongs/android/pop/ftp/l;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/jl;Lcom/estrongs/android/pop/ftp/l;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jm;->a:Lcom/estrongs/android/pop/view/jl;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/jm;->b:Lcom/estrongs/android/pop/ftp/l;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/jm;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/jm;->b:Lcom/estrongs/android/pop/ftp/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ftp/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jm;->b:Lcom/estrongs/android/pop/ftp/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/jm;->a:Lcom/estrongs/android/pop/view/jl;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/jl;->a(Lcom/estrongs/android/pop/view/jl;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ftp/l;->a(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method
