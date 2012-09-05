.class public final Lcom/sdgtl/mediahub/spr/b/b;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I


# direct methods
.method public static a()I
    .registers 1

    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->o:I

    return v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 8

    const/16 v6, 0x6e

    const/16 v5, 0x3a

    const/16 v4, 0xf

    const/16 v3, 0x9

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ca

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_91

    sput v4, Lcom/sdgtl/mediahub/spr/b/b;->a:I

    sput v6, Lcom/sdgtl/mediahub/spr/b/b;->b:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->c:I

    sput v5, Lcom/sdgtl/mediahub/spr/b/b;->d:I

    const/16 v0, 0x1e

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->e:I

    const/16 v0, 0x3e

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->f:I

    const/16 v0, 0x1e

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->g:I

    const/16 v0, 0x21

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->h:I

    const/4 v0, 0x4

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->i:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->j:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->k:I

    const/16 v0, 0x15

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->l:I

    const/4 v0, 0x6

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->m:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->n:I

    const/4 v0, 0x7

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->o:I

    const/16 v0, 0x8

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->p:I

    :cond_47
    :goto_47
    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_90

    const-string v1, "MediaHubAPP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "initLayoutConstant - screen Width = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubAPP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initLayoutConstant - screen Height = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    return-void

    :cond_91
    const/16 v0, 0x1d

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->a:I

    const/16 v0, 0xdc

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->c:I

    const/16 v0, 0x73

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->d:I

    const/16 v0, 0x3c

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->e:I

    const/16 v0, 0x7c

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->f:I

    const/16 v0, 0x3d

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->g:I

    const/16 v0, 0x43

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->h:I

    const/16 v0, 0x8

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->i:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->j:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->k:I

    const/16 v0, 0x2b

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->l:I

    const/16 v0, 0xc

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->m:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->n:I

    const/16 v0, 0xe

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->o:I

    sput v4, Lcom/sdgtl/mediahub/spr/b/b;->p:I

    goto/16 :goto_47

    :cond_ca
    const/16 v0, 0x52

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->b:I

    const/4 v0, 0x5

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->a:I

    sput v3, Lcom/sdgtl/mediahub/spr/b/b;->c:I

    const/16 v0, 0x8d

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->d:I

    const/16 v0, 0x3c

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->e:I

    const/16 v0, 0xba

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->f:I

    const/16 v0, 0x3d

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->g:I

    const/16 v0, 0x43

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->h:I

    sput v3, Lcom/sdgtl/mediahub/spr/b/b;->i:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->j:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->k:I

    const/16 v0, 0x22

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->l:I

    const/16 v0, 0xc

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->m:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->n:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_141

    const/16 v0, 0x76

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->r:I

    const/16 v0, 0x7e

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->q:I

    :goto_105
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_16b

    const/16 v0, 0x1d

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->a:I

    sput v6, Lcom/sdgtl/mediahub/spr/b/b;->b:I

    const/16 v0, 0x17

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->c:I

    const/16 v0, 0xea

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->d:I

    const/16 v0, 0x61

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->e:I

    const/16 v0, 0x130

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->f:I

    const/16 v0, 0x62

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->g:I

    const/16 v0, 0x68

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->h:I

    const/16 v0, 0x24

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->i:I

    const/16 v0, 0x34

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->j:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->k:I

    const/16 v0, 0x4e

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->l:I

    const/16 v0, 0x13

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->m:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->n:I

    goto/16 :goto_47

    :cond_141
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_152

    const/16 v0, 0xc6

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->r:I

    const/16 v0, 0xd3

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->q:I

    goto :goto_105

    :cond_152
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_162

    const/16 v0, 0xb2

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->r:I

    const/16 v0, 0xd3

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->q:I

    goto :goto_105

    :cond_162
    const/16 v0, 0x76

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->r:I

    const/16 v0, 0x83

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->q:I

    goto :goto_105

    :cond_16b
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1a4

    sput v3, Lcom/sdgtl/mediahub/spr/b/b;->a:I

    sput v6, Lcom/sdgtl/mediahub/spr/b/b;->b:I

    const/16 v0, 0xd

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->c:I

    const/16 v0, 0xea

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->d:I

    const/16 v0, 0x61

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->e:I

    const/16 v0, 0x130

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->f:I

    const/16 v0, 0x62

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->g:I

    const/16 v0, 0x68

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->h:I

    const/16 v0, 0x10

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->i:I

    const/16 v0, 0x34

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->j:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->k:I

    const/16 v0, 0x4e

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->l:I

    const/16 v0, 0x13

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->m:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->n:I

    goto/16 :goto_47

    :cond_1a4
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_47

    const/16 v0, 0x13

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->a:I

    sput v6, Lcom/sdgtl/mediahub/spr/b/b;->b:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->c:I

    const/16 v0, 0xaa

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->d:I

    sput v5, Lcom/sdgtl/mediahub/spr/b/b;->e:I

    const/16 v0, 0xe4

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->f:I

    sput v5, Lcom/sdgtl/mediahub/spr/b/b;->g:I

    sput v5, Lcom/sdgtl/mediahub/spr/b/b;->h:I

    sput v4, Lcom/sdgtl/mediahub/spr/b/b;->i:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->j:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->k:I

    const/16 v0, 0x3e

    sput v0, Lcom/sdgtl/mediahub/spr/b/b;->l:I

    sput v4, Lcom/sdgtl/mediahub/spr/b/b;->m:I

    sput v2, Lcom/sdgtl/mediahub/spr/b/b;->n:I

    goto/16 :goto_47
.end method

.method public static b()I
    .registers 1

    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->p:I

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->a:I

    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->b:I

    goto :goto_8
.end method

.method public static c(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->c:I

    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->d:I

    goto :goto_8
.end method

.method public static d(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->e:I

    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->f:I

    goto :goto_8
.end method

.method public static e(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->g:I

    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->h:I

    goto :goto_8
.end method

.method public static f(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->i:I

    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->j:I

    goto :goto_8
.end method

.method public static g(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->k:I

    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->l:I

    goto :goto_8
.end method

.method public static h(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->m:I

    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->n:I

    goto :goto_8
.end method

.method public static i(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->q:I

    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/sdgtl/mediahub/spr/b/b;->r:I

    goto :goto_8
.end method
