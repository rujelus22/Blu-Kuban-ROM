.class public Ldbxyzptlk/e/h;
.super Ldbxyzptlk/r/a;
.source "panda.py"


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Ldbxyzptlk/e/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/e/h;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ldbxyzptlk/e/h;->e:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Ldbxyzptlk/e/h;->a:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Ldbxyzptlk/e/h;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ldbxyzptlk/e/h;->e:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Ldbxyzptlk/e/h;->a:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Ldbxyzptlk/e/h;->b:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Ldbxyzptlk/e/h;->c:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Ldbxyzptlk/e/h;->d:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public final varargs a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 10
    .parameter
    .parameter

    .prologue
    const v6, 0x7f09003d

    .line 58
    :try_start_3
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    .line 59
    iget-object v1, p0, Ldbxyzptlk/e/h;->c:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 60
    iget-object v1, p0, Ldbxyzptlk/e/h;->a:Ljava/lang/String;

    iget-object v2, p0, Ldbxyzptlk/e/h;->b:Ljava/lang/String;

    iget-object v3, p0, Ldbxyzptlk/e/h;->c:Ljava/lang/String;

    iget-object v4, p0, Ldbxyzptlk/e/h;->d:Ljava/lang/String;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/filemanager/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_17
    .catch Ldbxyzptlk/m/i; {:try_start_3 .. :try_end_17} :catch_28
    .catch Ldbxyzptlk/m/g; {:try_start_3 .. :try_end_17} :catch_3f
    .catch Ldbxyzptlk/m/b; {:try_start_3 .. :try_end_17} :catch_88
    .catch Ldbxyzptlk/m/a; {:try_start_3 .. :try_end_17} :catch_93

    .line 65
    :goto_17
    :try_start_17
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->c()Ldbxyzptlk/p/x;
    :try_end_1a
    .catch Ldbxyzptlk/m/a; {:try_start_17 .. :try_end_1a} :catch_a4
    .catch Ldbxyzptlk/m/i; {:try_start_17 .. :try_end_1a} :catch_28
    .catch Ldbxyzptlk/m/g; {:try_start_17 .. :try_end_1a} :catch_3f
    .catch Ldbxyzptlk/m/b; {:try_start_17 .. :try_end_1a} :catch_88

    .line 67
    :goto_1a
    const/4 v0, 0x1

    :try_start_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 90
    :goto_1f
    return-object v0

    .line 62
    :cond_20
    iget-object v1, p0, Ldbxyzptlk/e/h;->a:Ljava/lang/String;

    iget-object v2, p0, Ldbxyzptlk/e/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/filemanager/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ldbxyzptlk/m/i; {:try_start_1b .. :try_end_27} :catch_28
    .catch Ldbxyzptlk/m/g; {:try_start_1b .. :try_end_27} :catch_3f
    .catch Ldbxyzptlk/m/b; {:try_start_1b .. :try_end_27} :catch_88
    .catch Ldbxyzptlk/m/a; {:try_start_1b .. :try_end_27} :catch_93

    goto :goto_17

    .line 68
    :catch_28
    move-exception v0

    .line 70
    sget-object v0, Ldbxyzptlk/e/h;->f:Ljava/lang/String;

    const-string v1, "Error logging in"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const v0, 0x7f09001b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/e/h;->e:Ljava/lang/String;

    .line 90
    :goto_39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1f

    .line 72
    :catch_3f
    move-exception v0

    .line 73
    sget-object v1, Ldbxyzptlk/e/h;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating new account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget v1, v0, Ldbxyzptlk/m/g;->b:I

    const/16 v2, 0x190

    if-ne v1, v2, :cond_78

    .line 75
    invoke-virtual {v0}, Ldbxyzptlk/m/g;->a()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 76
    const v0, 0x7f090024

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/e/h;->e:Ljava/lang/String;

    goto :goto_39

    .line 78
    :cond_6e
    const v0, 0x7f090022

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/e/h;->e:Ljava/lang/String;

    goto :goto_39

    .line 81
    :cond_78
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 82
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/e/h;->e:Ljava/lang/String;

    goto :goto_39

    .line 84
    :catch_88
    move-exception v0

    .line 85
    const v0, 0x7f09003c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/e/h;->e:Ljava/lang/String;

    goto :goto_39

    .line 86
    :catch_93
    move-exception v0

    .line 87
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 88
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/e/h;->e:Ljava/lang/String;

    goto :goto_39

    .line 66
    :catch_a4
    move-exception v0

    goto/16 :goto_1a
.end method

.method public final bridge synthetic a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 18
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/h;->a(Landroid/content/Context;[Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 96
    instance-of v0, p1, Ldbxyzptlk/e/i;

    if-eqz v0, :cond_f

    .line 97
    check-cast p1, Ldbxyzptlk/e/i;

    .line 98
    invoke-interface {p1}, Ldbxyzptlk/e/i;->f()V

    .line 104
    :cond_f
    :goto_f
    return-void

    .line 101
    :cond_10
    iget-object v0, p0, Ldbxyzptlk/e/h;->e:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_f
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 51
    sget-object v0, Ldbxyzptlk/e/h;->f:Ljava/lang/String;

    const-string v1, "Error in Logging in."

    invoke-static {v0, v1, p2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    sget-object v1, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v0, p2, v1}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 53
    return-void
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/h;->a(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method
