.class public Ldbxyzptlk/e/n;
.super Ldbxyzptlk/r/a;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Ldbxyzptlk/e/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/e/n;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Ldbxyzptlk/e/n;->b:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public final varargs a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    .line 54
    iget-object v0, v0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    iget-object v1, p0, Ldbxyzptlk/e/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldbxyzptlk/p/i;->e(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 20
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/n;->a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 61
    check-cast p1, Ldbxyzptlk/e/o;

    .line 62
    iget-object v0, p0, Ldbxyzptlk/e/n;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ldbxyzptlk/e/o;->c(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/dropbox/android/util/h;->ac()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 65
    :cond_14
    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 36
    const v0, 0x7f09003d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    instance-of v1, p2, Ldbxyzptlk/m/g;

    if-eqz v1, :cond_23

    .line 39
    check-cast p2, Ldbxyzptlk/m/g;

    .line 40
    iget v1, p2, Ldbxyzptlk/m/g;->b:I

    const/16 v2, 0x190

    if-ne v1, v2, :cond_1a

    .line 41
    const v0, 0x7f090194

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    return-void

    .line 44
    :cond_23
    sget-object v1, Ldbxyzptlk/e/n;->a:Ljava/lang/String;

    const-string v2, "Error in sending password reset email."

    invoke-static {v1, v2, p2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/n;->a(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method
