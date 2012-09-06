.class public final Ldbxyzptlk/e/j;
.super Ldbxyzptlk/r/a;
.source "panda.py"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ldbxyzptlk/e/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ldbxyzptlk/e/l;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Ldbxyzptlk/e/j;->a:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Ldbxyzptlk/e/j;->b:Ldbxyzptlk/e/l;

    .line 28
    return-void
.end method

.method private a(Lcom/dropbox/android/taskqueue/m;)Ldbxyzptlk/e/m;
    .registers 4
    .parameter

    .prologue
    .line 36
    sget-object v0, Ldbxyzptlk/e/k;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 42
    sget-object v0, Ldbxyzptlk/e/m;->c:Ldbxyzptlk/e/m;

    :goto_d
    return-object v0

    .line 38
    :pswitch_e
    sget-object v0, Ldbxyzptlk/e/m;->b:Ldbxyzptlk/e/m;

    goto :goto_d

    .line 40
    :pswitch_11
    sget-object v0, Ldbxyzptlk/e/m;->a:Ldbxyzptlk/e/m;

    goto :goto_d

    .line 36
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method protected final varargs a(Landroid/content/Context;[Ljava/lang/Void;)Lcom/dropbox/android/taskqueue/m;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/e/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/filemanager/v;->a(Ljava/lang/String;)Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 9
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/j;->a(Landroid/content/Context;[Ljava/lang/Void;)Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Lcom/dropbox/android/taskqueue/m;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p2}, Lcom/dropbox/android/taskqueue/m;->b()Lcom/dropbox/android/taskqueue/n;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/n;->a:Lcom/dropbox/android/taskqueue/n;

    if-ne v0, v1, :cond_e

    .line 50
    iget-object v0, p0, Ldbxyzptlk/e/j;->b:Ldbxyzptlk/e/l;

    invoke-interface {v0}, Ldbxyzptlk/e/l;->a()V

    .line 54
    :goto_d
    return-void

    .line 52
    :cond_e
    iget-object v0, p0, Ldbxyzptlk/e/j;->b:Ldbxyzptlk/e/l;

    invoke-direct {p0, p2}, Ldbxyzptlk/e/j;->a(Lcom/dropbox/android/taskqueue/m;)Ldbxyzptlk/e/m;

    move-result-object v1

    invoke-interface {v0, v1}, Ldbxyzptlk/e/l;->a(Ldbxyzptlk/e/m;)V

    goto :goto_d
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    return-void
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 9
    check-cast p2, Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/j;->a(Landroid/content/Context;Lcom/dropbox/android/taskqueue/m;)V

    return-void
.end method
