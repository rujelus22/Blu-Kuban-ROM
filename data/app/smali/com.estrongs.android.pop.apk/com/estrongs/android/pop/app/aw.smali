.class Lcom/estrongs/android/pop/app/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/av;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/av;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/aw;->a:Lcom/estrongs/android/pop/app/av;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/aw;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/.estrongs/bookmark"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/aw;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aw;->a:Lcom/estrongs/android/pop/app/av;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/av;->a(Lcom/estrongs/android/pop/app/av;)Lcom/estrongs/android/pop/app/au;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/au;->a(Lcom/estrongs/android/pop/app/au;)Lcom/estrongs/android/pop/app/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ar;->a()V

    :cond_1f
    return-void
.end method
