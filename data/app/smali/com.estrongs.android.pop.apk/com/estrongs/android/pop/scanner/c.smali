.class public Lcom/estrongs/android/pop/scanner/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/app/ProgressDialog;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/scanner/c;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/scanner/c;->b:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/scanner/c;->c:Z

    return-void
.end method

.method public static final a()V
    .registers 2

    sget-boolean v0, Lcom/estrongs/android/pop/scanner/c;->c:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/estrongs/android/pop/scanner/c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/scanner/e;

    invoke-direct {v1}, Lcom/estrongs/android/pop/scanner/e;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method static synthetic a(Landroid/app/ProgressDialog;)V
    .registers 1

    sput-object p0, Lcom/estrongs/android/pop/scanner/c;->b:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .registers 7

    const/4 v3, 0x1

    sget-boolean v0, Lcom/estrongs/android/pop/scanner/c;->c:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/estrongs/android/pop/scanner/c;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/estrongs/android/pop/scanner/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_e
    sput-boolean v3, Lcom/estrongs/android/pop/scanner/c;->c:Z

    const/4 v1, 0x0

    const v0, 0x7f090136

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v5, Lcom/estrongs/android/pop/scanner/d;

    invoke-direct {v5, p0}, Lcom/estrongs/android/pop/scanner/d;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/scanner/c;->b:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/estrongs/android/pop/scanner/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method static synthetic a(Z)V
    .registers 1

    sput-boolean p0, Lcom/estrongs/android/pop/scanner/c;->c:Z

    return-void
.end method

.method static synthetic b()Landroid/app/ProgressDialog;
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/scanner/c;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method
