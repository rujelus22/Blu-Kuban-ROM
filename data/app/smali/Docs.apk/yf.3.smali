.class public Lyf;
.super Ljava/lang/Object;
.source "LinkNavigator.java"

# interfaces
.implements LxW;
.implements Lyc;


# instance fields
.field private final a:LLz;

.field private final a:Landroid/content/Context;

.field private final a:Ljava/lang/String;

.field private a:LvU;

.field private a:Lwb;

.field private a:Z

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;LLz;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lyf;->a:Landroid/content/Context;

    .line 48
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLz;

    iput-object v0, p0, Lyf;->a:LLz;

    .line 49
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lyf;->a:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lyf;->b:Ljava/lang/String;

    .line 51
    if-eqz p4, :cond_23

    const/4 v0, 0x1

    :goto_20
    iput-boolean v0, p0, Lyf;->a:Z

    .line 52
    return-void

    .line 51
    :cond_23
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyf;->a:Z

    .line 145
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 77
    const-string v0, "Model is not initialized."

    iget-object v1, p0, Lyf;->a:Lwb;

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "Controller is not initialized."

    iget-object v1, p0, Lyf;->a:LvU;

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "LinkNavigator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Navigate to URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyf;->a(Ljava/lang/String;)Z

    .line 104
    :goto_36
    return-void

    .line 85
    :cond_37
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lyf;->a:LLz;

    iget-object v2, p0, Lyf;->a:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, LLz;->a(Landroid/content/Context;Landroid/net/Uri;)LLC;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, LLC;->a()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v1}, LLC;->a()LkU;

    move-result-object v1

    sget-object v3, LkU;->a:LkU;

    if-ne v1, v3, :cond_69

    iget-object v1, p0, Lyf;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 89
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_61

    .line 91
    invoke-virtual {p0, v0}, Lyf;->a(Ljava/lang/String;)Z

    goto :goto_36

    .line 95
    :cond_61
    const-string v0, "LinkNavigator"

    const-string v1, "Navigation to the same document, but the internal link is unknown."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 98
    :cond_69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    :try_start_70
    iget-object v0, p0, Lyf;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_75
    .catch Landroid/content/ActivityNotFoundException; {:try_start_70 .. :try_end_75} :catch_76

    goto :goto_36

    .line 101
    :catch_76
    move-exception v0

    goto :goto_36
.end method

.method public a(LvZ;)V
    .registers 3
    .parameter

    .prologue
    .line 132
    iget-boolean v0, p0, Lyf;->a:Z

    if-eqz v0, :cond_f

    .line 133
    iget-object v0, p0, Lyf;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lyf;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lyf;->a:Z

    .line 135
    :cond_f
    return-void

    .line 133
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(Lwb;)V
    .registers 4
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lyf;->a:Z

    if-eqz v0, :cond_10

    .line 63
    iget-object v0, p0, Lyf;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lyf;->a(Ljava/lang/String;)Z

    .line 64
    const-string v0, "LinkNavigator"

    const-string v1, "navigating"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyf;->a:Z

    .line 67
    return-void
.end method

.method public a(Lwb;LvU;Lwg;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwb;

    iput-object v0, p0, Lyf;->a:Lwb;

    .line 57
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LvU;

    iput-object v0, p0, Lyf;->a:LvU;

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 113
    const-string v1, "LinkNavigator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Navigate to internal link: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lyf;->a:Lwb;

    invoke-interface {v1}, Lwb;->a()Lvo;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Lvo;->b()V

    .line 117
    :try_start_22
    iget-object v2, p0, Lyf;->a:Lwb;

    invoke-interface {v2}, Lwb;->h()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 118
    iget-object v2, p0, Lyf;->a:Lwb;

    invoke-interface {v2, p1}, Lwb;->a(Ljava/lang/String;)I

    move-result v2

    .line 119
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3e

    .line 120
    iget-object v0, p0, Lyf;->a:LvU;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, LvU;->a(IZ)V
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_42

    .line 121
    const/4 v0, 0x1

    .line 125
    invoke-interface {v1}, Lvo;->c()V

    .line 127
    :goto_3d
    return v0

    .line 125
    :cond_3e
    invoke-interface {v1}, Lvo;->c()V

    goto :goto_3d

    :catchall_42
    move-exception v0

    invoke-interface {v1}, Lvo;->c()V

    throw v0
.end method

.method public b(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 140
    return-void
.end method
