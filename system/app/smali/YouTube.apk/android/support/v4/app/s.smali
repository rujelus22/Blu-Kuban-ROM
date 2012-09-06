.class final Landroid/support/v4/app/s;
.super Landroid/support/v4/app/q;
.source "SourceFile"


# static fields
.field static a:Z


# instance fields
.field final b:Landroid/support/v4/b/c;

.field final c:Landroid/support/v4/b/c;

.field d:Landroid/support/v4/app/FragmentActivity;

.field e:Z

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/s;->a:Z

    return-void
.end method


# virtual methods
.method final a(Landroid/support/v4/app/FragmentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    .line 482
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 797
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    if-lez v0, :cond_59

    .line 798
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 800
    :goto_25
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    if-ge v1, v0, :cond_59

    .line 801
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    .line 802
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v4, v1}, Landroid/support/v4/b/c;->d(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 803
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/t;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/t;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 800
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 807
    :cond_59
    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    if-lez v0, :cond_af

    .line 808
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 810
    :goto_7c
    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    if-ge v2, v0, :cond_af

    .line 811
    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/c;

    invoke-virtual {v0, v2}, Landroid/support/v4/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    .line 812
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/c;

    invoke-virtual {v3, v2}, Landroid/support/v4/b/c;->d(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 813
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/t;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/t;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 810
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 817
    :cond_af
    return-void
.end method

.method public final a()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 822
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 823
    :goto_9
    if-ge v2, v4, :cond_23

    .line 824
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0, v2}, Landroid/support/v4/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    .line 825
    iget-boolean v5, v0, Landroid/support/v4/app/t;->h:Z

    if-eqz v5, :cond_21

    iget-boolean v0, v0, Landroid/support/v4/app/t;->f:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    :goto_1c
    or-int/2addr v3, v0

    .line 823
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_21
    move v0, v1

    .line 825
    goto :goto_1c

    .line 827
    :cond_23
    return v3
.end method

.method final b()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 698
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_19

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_19
    iget-boolean v0, p0, Landroid/support/v4/app/s;->e:Z

    if-eqz v0, :cond_3c

    .line 700
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 702
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStart when already started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    :cond_3b
    return-void

    .line 706
    :cond_3c
    iput-boolean v5, p0, Landroid/support/v4/app/s;->e:Z

    .line 710
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_47
    if-ltz v1, :cond_3b

    .line 711
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    iget-boolean v2, v0, Landroid/support/v4/app/t;->i:Z

    if-eqz v2, :cond_5f

    iget-boolean v2, v0, Landroid/support/v4/app/t;->j:Z

    if-eqz v2, :cond_5f

    iput-boolean v5, v0, Landroid/support/v4/app/t;->h:Z

    .line 710
    :cond_5b
    :goto_5b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_47

    .line 711
    :cond_5f
    iget-boolean v2, v0, Landroid/support/v4/app/t;->h:Z

    if-nez v2, :cond_5b

    iput-boolean v5, v0, Landroid/support/v4/app/t;->h:Z

    sget-boolean v2, Landroid/support/v4/app/s;->a:Z

    if-eqz v2, :cond_7d

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Starting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    iget-object v2, v0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    if-nez v2, :cond_91

    iget-object v2, v0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/r;

    if-eqz v2, :cond_91

    iget-object v2, v0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/r;

    iget v3, v0, Landroid/support/v4/app/t;->a:I

    iget-object v3, v0, Landroid/support/v4/app/t;->b:Landroid/os/Bundle;

    invoke-interface {v2}, Landroid/support/v4/app/r;->a()Landroid/support/v4/content/a;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    :cond_91
    iget-object v2, v0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    if-eqz v2, :cond_5b

    iget-object v2, v0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_c8

    iget-object v2, v0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_c8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c8
    iget-boolean v2, v0, Landroid/support/v4/app/t;->m:Z

    if-nez v2, :cond_d5

    iget-object v2, v0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    iget v3, v0, Landroid/support/v4/app/t;->a:I

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/a;->a(ILandroid/support/v4/content/b;)V

    iput-boolean v5, v0, Landroid/support/v4/app/t;->m:Z

    :cond_d5
    iget-object v0, v0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    invoke-virtual {v0}, Landroid/support/v4/content/a;->a()V

    goto :goto_5b
.end method

.method final c()V
    .registers 5

    .prologue
    .line 716
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_18

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_18
    iget-boolean v0, p0, Landroid/support/v4/app/s;->e:Z

    if-nez v0, :cond_3b

    .line 718
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 720
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStop when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    :goto_3a
    return-void

    .line 724
    :cond_3b
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_44
    if-ltz v1, :cond_55

    .line 725
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->a()V

    .line 724
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_44

    .line 727
    :cond_55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/s;->e:Z

    goto :goto_3a
.end method

.method final d()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 731
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retaining in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_1a
    iget-boolean v0, p0, Landroid/support/v4/app/s;->e:Z

    if-nez v0, :cond_3d

    .line 733
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 735
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doRetain when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    :cond_3c
    return-void

    .line 739
    :cond_3d
    iput-boolean v6, p0, Landroid/support/v4/app/s;->f:Z

    .line 740
    iput-boolean v5, p0, Landroid/support/v4/app/s;->e:Z

    .line 741
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4a
    if-ltz v1, :cond_3c

    .line 742
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    sget-boolean v2, Landroid/support/v4/app/s;->a:Z

    if-eqz v2, :cond_6c

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Retaining: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    iput-boolean v6, v0, Landroid/support/v4/app/t;->i:Z

    iget-boolean v2, v0, Landroid/support/v4/app/t;->h:Z

    iput-boolean v2, v0, Landroid/support/v4/app/t;->j:Z

    iput-boolean v5, v0, Landroid/support/v4/app/t;->h:Z

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/r;

    .line 741
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4a
.end method

.method final e()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 747
    iget-boolean v0, p0, Landroid/support/v4/app/s;->f:Z

    if-eqz v0, :cond_74

    .line 748
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_1d

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finished Retaining in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_1d
    iput-boolean v5, p0, Landroid/support/v4/app/s;->f:Z

    .line 751
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_28
    if-ltz v1, :cond_74

    .line 752
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    iget-boolean v2, v0, Landroid/support/v4/app/t;->i:Z

    if-eqz v2, :cond_5d

    sget-boolean v2, Landroid/support/v4/app/s;->a:Z

    if-eqz v2, :cond_4e

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Finished Retaining: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    iput-boolean v5, v0, Landroid/support/v4/app/t;->i:Z

    iget-boolean v2, v0, Landroid/support/v4/app/t;->h:Z

    iget-boolean v3, v0, Landroid/support/v4/app/t;->j:Z

    if-eq v2, v3, :cond_5d

    iget-boolean v2, v0, Landroid/support/v4/app/t;->h:Z

    if-nez v2, :cond_5d

    invoke-virtual {v0}, Landroid/support/v4/app/t;->a()V

    :cond_5d
    iget-boolean v2, v0, Landroid/support/v4/app/t;->h:Z

    if-eqz v2, :cond_70

    iget-boolean v2, v0, Landroid/support/v4/app/t;->e:Z

    if-eqz v2, :cond_70

    iget-boolean v2, v0, Landroid/support/v4/app/t;->k:Z

    if-nez v2, :cond_70

    iget-object v2, v0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    iget-object v3, v0, Landroid/support/v4/app/t;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/t;->a(Landroid/support/v4/content/a;Ljava/lang/Object;)V

    .line 751
    :cond_70
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_28

    .line 755
    :cond_74
    return-void
.end method

.method final f()V
    .registers 4

    .prologue
    .line 758
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 759
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/t;->k:Z

    .line 758
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 761
    :cond_1a
    return-void
.end method

.method final g()V
    .registers 5

    .prologue
    .line 764
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_2d

    .line 765
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    iget-boolean v2, v0, Landroid/support/v4/app/t;->h:Z

    if-eqz v2, :cond_29

    iget-boolean v2, v0, Landroid/support/v4/app/t;->k:Z

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/t;->k:Z

    iget-boolean v2, v0, Landroid/support/v4/app/t;->e:Z

    if-eqz v2, :cond_29

    iget-object v2, v0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    iget-object v3, v0, Landroid/support/v4/app/t;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/t;->a(Landroid/support/v4/content/a;Ljava/lang/Object;)V

    .line 764
    :cond_29
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 767
    :cond_2d
    return-void
.end method

.method final h()V
    .registers 4

    .prologue
    .line 770
    iget-boolean v0, p0, Landroid/support/v4/app/s;->f:Z

    if-nez v0, :cond_36

    .line 771
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Active in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_25
    if-ltz v1, :cond_36

    .line 773
    iget-object v0, p0, Landroid/support/v4/app/s;->b:Landroid/support/v4/b/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->b()V

    .line 772
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_25

    .line 777
    :cond_36
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_4e

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Inactive in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_4e
    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_57
    if-ltz v1, :cond_68

    .line 779
    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->b()V

    .line 778
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_57

    .line 781
    :cond_68
    iget-object v0, p0, Landroid/support/v4/app/s;->c:Landroid/support/v4/b/c;

    invoke-virtual {v0}, Landroid/support/v4/b/c;->b()V

    .line 782
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 787
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget-object v1, p0, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/b/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 791
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
