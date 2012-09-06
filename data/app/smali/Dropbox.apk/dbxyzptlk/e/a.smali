.class public Ldbxyzptlk/e/a;
.super Ldbxyzptlk/r/a;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Ldbxyzptlk/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/e/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/a;->a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 23
    if-eqz p1, :cond_9

    .line 24
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->c()V

    .line 27
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 47
    sget-object v0, Ldbxyzptlk/e/a;->a:Ljava/lang/String;

    const-string v1, "Error in clearing cache"

    invoke-static {v0, v1, p2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    sget-object v1, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v0, p2, v1}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 49
    return-void
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/a;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Void;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Ldbxyzptlk/e/a;->c()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/PrefsActivity;

    .line 34
    if-eqz v0, :cond_20

    .line 35
    const v1, 0x7f0900ed

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 40
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/activity/PrefsActivity;->a(J)V

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/PrefsActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 43
    :cond_20
    return-void
.end method
