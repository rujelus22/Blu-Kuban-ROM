.class Lcom/estrongs/android/pop/view/ko;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/ftp/n;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/kn;

.field private final synthetic b:Lcom/estrongs/android/pop/ftp/l;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/kn;Lcom/estrongs/android/pop/ftp/l;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ko;->a:Lcom/estrongs/android/pop/view/kn;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ko;->b:Lcom/estrongs/android/pop/ftp/l;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/ko;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/view/ko;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ko;->b:Lcom/estrongs/android/pop/ftp/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ko;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ko;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/ftp/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ko;->b:Lcom/estrongs/android/pop/ftp/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ko;->a:Lcom/estrongs/android/pop/view/kn;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/kn;->a(Lcom/estrongs/android/pop/view/kn;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ftp/l;->a(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method
