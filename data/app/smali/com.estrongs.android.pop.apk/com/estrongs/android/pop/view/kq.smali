.class Lcom/estrongs/android/pop/view/kq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/ftp/n;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

.field private final synthetic b:Lcom/estrongs/android/pop/ftp/l;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Lcom/estrongs/android/pop/ftp/l;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/view/kq;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/kq;->b:Lcom/estrongs/android/pop/ftp/l;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/kq;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/kq;->b:Lcom/estrongs/android/pop/ftp/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/kq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ftp/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kq;->b:Lcom/estrongs/android/pop/ftp/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/kq;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ftp/l;->a(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method
