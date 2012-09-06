.class Landroid/support/v4/app/w;
.super Landroid/support/v4/app/u;
.source "SourceFile"


# static fields
.field static a:Z


# instance fields
.field final b:Lc/c;

.field final c:Lc/c;

.field d:Landroid/support/v4/app/FragmentActivity;

.field e:Z

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/w;->a:Z

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 475
    invoke-direct {p0}, Landroid/support/v4/app/u;-><init>()V

    .line 194
    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    .line 200
    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/w;->c:Lc/c;

    .line 476
    iput-object p1, p0, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    .line 477
    iput-boolean p2, p0, Landroid/support/v4/app/w;->e:Z

    .line 478
    return-void
.end method


# virtual methods
.method a(Landroid/support/v4/app/FragmentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    .line 482
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 797
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()I

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
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()I

    move-result v0

    if-ge v1, v0, :cond_59

    .line 801
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0, v1}, Lc/c;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x;

    .line 802
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v4, v1}, Lc/c;->e(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 803
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/x;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/x;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 800
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 807
    :cond_59
    iget-object v0, p0, Landroid/support/v4/app/w;->c:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()I

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
    iget-object v0, p0, Landroid/support/v4/app/w;->c:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()I

    move-result v0

    if-ge v2, v0, :cond_af

    .line 811
    iget-object v0, p0, Landroid/support/v4/app/w;->c:Lc/c;

    invoke-virtual {v0, v2}, Lc/c;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x;

    .line 812
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/w;->c:Lc/c;

    invoke-virtual {v3, v2}, Lc/c;->e(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 813
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/x;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/x;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 810
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 817
    :cond_af
    return-void
.end method

.method public a()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 821
    .line 822
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 823
    :goto_9
    if-ge v2, v4, :cond_23

    .line 824
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0, v2}, Lc/c;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x;

    .line 825
    iget-boolean v5, v0, Landroid/support/v4/app/x;->h:Z

    if-eqz v5, :cond_21

    iget-boolean v0, v0, Landroid/support/v4/app/x;->f:Z

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

.method b()V
    .registers 5

    .prologue
    .line 698
    sget-boolean v0, Landroid/support/v4/app/w;->a:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1c
    iget-boolean v0, p0, Landroid/support/v4/app/w;->e:Z

    if-eqz v0, :cond_43

    .line 700
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 702
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStart when already started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    :cond_42
    return-void

    .line 706
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/w;->e:Z

    .line 710
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4f
    if-ltz v1, :cond_42

    .line 711
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0, v1}, Lc/c;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->a()V

    .line 710
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4f
.end method

.method c()V
    .registers 5

    .prologue
    .line 716
    sget-boolean v0, Landroid/support/v4/app/w;->a:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_1c
    iget-boolean v0, p0, Landroid/support/v4/app/w;->e:Z

    if-nez v0, :cond_43

    .line 718
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 720
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStop when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    :goto_42
    return-void

    .line 724
    :cond_43
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4c
    if-ltz v1, :cond_5d

    .line 725
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0, v1}, Lc/c;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->e()V

    .line 724
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4c

    .line 727
    :cond_5d
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/w;->e:Z

    goto :goto_42
.end method

.method d()V
    .registers 5

    .prologue
    .line 731
    sget-boolean v0, Landroid/support/v4/app/w;->a:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_1c
    iget-boolean v0, p0, Landroid/support/v4/app/w;->e:Z

    if-nez v0, :cond_43

    .line 733
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 735
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doRetain when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    :cond_42
    return-void

    .line 739
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/w;->f:Z

    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/w;->e:Z

    .line 741
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_52
    if-ltz v1, :cond_42

    .line 742
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0, v1}, Lc/c;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->b()V

    .line 741
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_52
.end method

.method e()V
    .registers 4

    .prologue
    .line 747
    iget-boolean v0, p0, Landroid/support/v4/app/w;->f:Z

    if-eqz v0, :cond_3d

    .line 748
    sget-boolean v0, Landroid/support/v4/app/w;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/w;->f:Z

    .line 751
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2c
    if-ltz v1, :cond_3d

    .line 752
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0, v1}, Lc/c;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->c()V

    .line 751
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2c

    .line 755
    :cond_3d
    return-void
.end method

.method f()V
    .registers 4

    .prologue
    .line 758
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 759
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0, v1}, Lc/c;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/x;->k:Z

    .line 758
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 761
    :cond_1a
    return-void
.end method

.method g()V
    .registers 3

    .prologue
    .line 764
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 765
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0, v1}, Lc/c;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->d()V

    .line 764
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 767
    :cond_1a
    return-void
.end method

.method h()V
    .registers 4

    .prologue
    .line 770
    iget-boolean v0, p0, Landroid/support/v4/app/w;->f:Z

    if-nez v0, :cond_3a

    .line 771
    sget-boolean v0, Landroid/support/v4/app/w;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Active in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_20
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_29
    if-ltz v1, :cond_3a

    .line 773
    iget-object v0, p0, Landroid/support/v4/app/w;->b:Lc/c;

    invoke-virtual {v0, v1}, Lc/c;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->f()V

    .line 772
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_29

    .line 777
    :cond_3a
    sget-boolean v0, Landroid/support/v4/app/w;->a:Z

    if-eqz v0, :cond_56

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Inactive in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_56
    iget-object v0, p0, Landroid/support/v4/app/w;->c:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5f
    if-ltz v1, :cond_70

    .line 779
    iget-object v0, p0, Landroid/support/v4/app/w;->c:Lc/c;

    invoke-virtual {v0, v1}, Lc/c;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->f()V

    .line 778
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5f

    .line 781
    :cond_70
    iget-object v0, p0, Landroid/support/v4/app/w;->c:Lc/c;

    invoke-virtual {v0}, Lc/c;->b()V

    .line 782
    return-void
.end method

.method public toString()Ljava/lang/String;
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
    iget-object v1, p0, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Lc/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 791
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
