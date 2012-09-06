.class Lcom/estrongs/android/pop/app/imageviewer/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ba;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ba;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bb;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bb;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ba;->a:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/estrongs/android/a/h;->a(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_43

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bb;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ba;->a(Lcom/estrongs/android/pop/app/imageviewer/ba;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v2

    iget-wide v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bb;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ba;->a(Lcom/estrongs/android/pop/app/imageviewer/ba;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v2

    iput-wide v0, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bb;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ba;->a(Lcom/estrongs/android/pop/app/imageviewer/ba;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "slide_setting_interval"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bb;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ba;->a(Lcom/estrongs/android/pop/app/imageviewer/ba;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v2

    iget-wide v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_43
    return-void
.end method
