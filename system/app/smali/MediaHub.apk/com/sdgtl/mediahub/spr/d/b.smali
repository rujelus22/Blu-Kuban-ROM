.class public final Lcom/sdgtl/mediahub/spr/d/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/sdgtl/mediahub/spr/d/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/d/a;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/d/a;->a(Z)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sdgtl/mediahub/spr/d/a;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    :goto_18
    return v0

    :cond_19
    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/d/a;->g:Lcom/sdgtl/mediahub/spr/c/a;

    if-nez v0, :cond_2b

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    sget-object v1, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/d/a;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/d/a;->g:Lcom/sdgtl/mediahub/spr/c/a;

    :cond_2b
    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/d/a;->g:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p1, p2}, Lcom/sdgtl/mediahub/spr/c/a;->d(ILjava/lang/String;)I

    move-result v0

    goto :goto_18

    :cond_34
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sdgtl/mediahub/spr/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/16 v0, -0x7d0

    goto :goto_a
.end method

.method public static a()V
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/d/a;->a()V

    :cond_9
    return-void
.end method

.method public static a(I)V
    .registers 2

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0, p0}, Lcom/sdgtl/mediahub/spr/d/a;->a(I)V

    :cond_9
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_46

    :cond_d
    :try_start_d
    const-string v0, "android.drm.DrmManagerClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/sdgtl/mediahub/spr/d/e;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/d/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_1c} :catch_37
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_d .. :try_end_1c} :catch_3c
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1c} :catch_41

    :cond_1c
    :goto_1c
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    if-eqz v0, :cond_2a

    sget-object v1, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/d/a;->i:Ljava/lang/String;

    :cond_2a
    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    iput-object p0, v0, Lcom/sdgtl/mediahub/spr/d/a;->f:Landroid/content/Context;

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/d/a;->g:Lcom/sdgtl/mediahub/spr/c/a;

    :goto_36
    return-void

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_36

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->printStackTrace()V

    goto :goto_36

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    :cond_46
    :try_start_46
    const-string v0, "sec.drm.DrmManagerClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/sdgtl/mediahub/spr/d/d;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/d/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;
    :try_end_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_46 .. :try_end_55} :catch_56
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_46 .. :try_end_55} :catch_76
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_55} :catch_7b

    goto :goto_1c

    :catch_56
    move-exception v0

    :try_start_57
    const-string v0, "android.playready.playreadymanager.PlayReadyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/sdgtl/mediahub/spr/d/c;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/d/c;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;
    :try_end_66
    .catch Ljava/lang/ClassNotFoundException; {:try_start_57 .. :try_end_66} :catch_67
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_57 .. :try_end_66} :catch_6c
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_66} :catch_71

    goto :goto_1c

    :catch_67
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_36

    :catch_6c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->printStackTrace()V

    goto :goto_36

    :catch_71
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    :catch_76
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->printStackTrace()V

    goto :goto_36

    :catch_7b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sdgtl/mediahub/spr/d/a;->a(Ljava/lang/String;J)V

    :cond_b
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .registers 5

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/d/a;->a(Z)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sdgtl/mediahub/spr/d/a;->b(Ljava/lang/String;J)V

    :cond_f
    return-void
.end method

.method public static a(Z)V
    .registers 2

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    iput-boolean p0, v0, Lcom/sdgtl/mediahub/spr/d/a;->h:Z

    :cond_8
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0, p0, p1}, Lcom/sdgtl/mediahub/spr/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static b(I)I
    .registers 2

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0, p0}, Lcom/sdgtl/mediahub/spr/d/a;->b(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x7

    goto :goto_a
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;)I
    .registers 4

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sdgtl/mediahub/spr/d/a;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sdgtl/mediahub/spr/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/16 v0, -0x7d0

    goto :goto_a
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0, p0}, Lcom/sdgtl/mediahub/spr/d/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static b()V
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/d/a;->c()V

    :cond_9
    return-void
.end method

.method public static b(Ljava/lang/String;J)V
    .registers 4

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sdgtl/mediahub/spr/d/a;->c(Ljava/lang/String;J)V

    :cond_9
    return-void
.end method

.method public static c(Ljava/lang/String;ILjava/lang/String;)I
    .registers 4

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sdgtl/mediahub/spr/d/a;->b(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static c()Z
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/d/a;->d()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static d()I
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/d/a;->e()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x64

    goto :goto_a
.end method

.method public static e()Z
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static f()Z
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/d/a;->b()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static g()Z
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sdgtl/mediahub/spr/d/b;->a:Lcom/sdgtl/mediahub/spr/d/a;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/d/a;->h:Z

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
