.class public Ldbxyzptlk/e/x;
.super Ldbxyzptlk/r/a;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/dropbox/android/activity/SimpleDropboxBrowser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Ldbxyzptlk/e/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/e/x;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/android/activity/SimpleDropboxBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Ldbxyzptlk/e/x;->b:Lcom/dropbox/android/activity/SimpleDropboxBrowser;

    .line 25
    invoke-virtual {p0}, Ldbxyzptlk/e/x;->e()V

    .line 26
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 16
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/x;->a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    :try_start_1
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v1

    .line 38
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v2

    .line 40
    invoke-virtual {v1}, Ldbxyzptlk/j/m;->c()Ldbxyzptlk/p/x;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_31

    move-result-object v1

    if-nez v1, :cond_12

    .line 42
    :try_start_f
    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/a;->c()Ldbxyzptlk/p/x;
    :try_end_12
    .catch Ldbxyzptlk/m/i; {:try_start_f .. :try_end_12} :catch_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_31

    .line 51
    :cond_12
    :try_start_12
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    invoke-virtual {v1}, Ldbxyzptlk/h/b;->a()Ldbxyzptlk/h/g;

    move-result-object v1

    .line 52
    iget-object v2, v2, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    invoke-static {p1, v1}, Ldbxyzptlk/p/h;->a(Landroid/content/Context;Ldbxyzptlk/h/g;)Ldbxyzptlk/p/h;

    move-result-object v1

    invoke-virtual {v2, v1}, Ldbxyzptlk/p/i;->a(Ldbxyzptlk/p/h;)Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_24
    return-object v0

    .line 43
    :catch_25
    move-exception v1

    .line 45
    sget-object v1, Ldbxyzptlk/e/x;->a:Ljava/lang/String;

    const-string v3, "Unauthorized token, unlinking account."

    invoke-static {v1, v3}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/a;->d()Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_30} :catch_31

    goto :goto_24

    .line 55
    :catch_31
    move-exception v1

    .line 56
    sget-object v2, Ldbxyzptlk/e/x;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in checkForUpgrade: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 30
    sget-object v0, Ldbxyzptlk/e/x;->a:Ljava/lang/String;

    const-string v1, "Error in checking for upgrade."

    invoke-static {v0, v1, p2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    sget-object v1, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v0, p2, v1}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 32
    return-void
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 16
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/x;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 63
    if-eqz p2, :cond_1f

    const-string v0, "show_update"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "force_update"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 64
    :cond_12
    const-string v0, "force_update"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 65
    sput-boolean v0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->n:Z

    .line 66
    iget-object v1, p0, Ldbxyzptlk/e/x;->b:Lcom/dropbox/android/activity/SimpleDropboxBrowser;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->b(Z)V

    .line 68
    :cond_1f
    return-void
.end method
