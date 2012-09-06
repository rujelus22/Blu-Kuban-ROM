.class public LR;
.super LP;
.source "LoaderManager.java"


# static fields
.field static a:Z


# instance fields
.field final a:LM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LM",
            "<",
            "LS;",
            ">;"
        }
    .end annotation
.end field

.field a:Landroid/support/v4/app/FragmentActivity;

.field final b:LM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LM",
            "<",
            "LS;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field public c:Z

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 188
    const/4 v0, 0x0

    sput-boolean v0, LR;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 474
    invoke-direct {p0}, LP;-><init>()V

    .line 193
    new-instance v0, LM;

    invoke-direct {v0}, LM;-><init>()V

    iput-object v0, p0, LR;->a:LM;

    .line 199
    new-instance v0, LM;

    invoke-direct {v0}, LM;-><init>()V

    iput-object v0, p0, LR;->b:LM;

    .line 475
    iput-object p1, p0, LR;->a:Landroid/support/v4/app/FragmentActivity;

    .line 476
    iput-boolean p2, p0, LR;->b:Z

    .line 477
    return-void
.end method

.method private a(ILandroid/os/Bundle;LQ;)LS;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "LQ",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "LS;"
        }
    .end annotation

    .prologue
    .line 485
    new-instance v0, LS;

    invoke-direct {v0, p0, p1, p2, p3}, LS;-><init>(LR;ILandroid/os/Bundle;LQ;)V

    .line 486
    invoke-interface {p3, p1, p2}, LQ;->a(ILandroid/os/Bundle;)LX;

    move-result-object v1

    .line 487
    iput-object v1, v0, LS;->a:LX;

    .line 488
    return-object v0
.end method

.method private b(ILandroid/os/Bundle;LQ;)LS;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "LQ",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "LS;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 494
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, LR;->d:Z

    .line 495
    invoke-direct {p0, p1, p2, p3}, LR;->a(ILandroid/os/Bundle;LQ;)LS;

    move-result-object v0

    .line 496
    invoke-virtual {p0, v0}, LR;->a(LS;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    .line 499
    iput-boolean v1, p0, LR;->d:Z

    return-object v0

    :catchall_e
    move-exception v0

    iput-boolean v1, p0, LR;->d:Z

    throw v0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;LQ;)LX;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "LQ",
            "<TD;>;)",
            "LX",
            "<TD;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 589
    iget-boolean v0, p0, LR;->d:Z

    if-eqz v0, :cond_d

    .line 590
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_d
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0, p1}, LM;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS;

    .line 594
    sget-boolean v1, LR;->a:Z

    if-eqz v1, :cond_3b

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restartLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_3b
    if-eqz v0, :cond_77

    .line 596
    iget-object v1, p0, LR;->b:LM;

    invoke-virtual {v1, p1}, LM;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS;

    .line 597
    if-eqz v1, :cond_d5

    .line 598
    iget-boolean v2, v0, LS;->a:Z

    if-eqz v2, :cond_7e

    .line 603
    sget-boolean v2, LR;->a:Z

    if-eqz v2, :cond_67

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Removing last inactive loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_67
    const/4 v2, 0x0

    iput-boolean v2, v1, LS;->b:Z

    .line 605
    invoke-virtual {v1}, LS;->f()V

    .line 606
    iget-object v1, v0, LS;->a:LX;

    invoke-virtual {v1}, LX;->h()V

    .line 607
    iget-object v1, p0, LR;->b:LM;

    invoke-virtual {v1, p1, v0}, LM;->a(ILjava/lang/Object;)V

    .line 642
    :cond_77
    :goto_77
    invoke-direct {p0, p1, p2, p3}, LR;->b(ILandroid/os/Bundle;LQ;)LS;

    move-result-object v0

    .line 643
    iget-object v0, v0, LS;->a:LX;

    :goto_7d
    return-object v0

    .line 611
    :cond_7e
    iget-boolean v1, v0, LS;->c:Z

    if-nez v1, :cond_96

    .line 615
    sget-boolean v1, LR;->a:Z

    if-eqz v1, :cond_8d

    const-string v1, "LoaderManager"

    const-string v2, "  Current loader is stopped; replacing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_8d
    iget-object v1, p0, LR;->a:LM;

    invoke-virtual {v1, p1, v4}, LM;->a(ILjava/lang/Object;)V

    .line 617
    invoke-virtual {v0}, LS;->f()V

    goto :goto_77

    .line 622
    :cond_96
    iget-object v1, v0, LS;->a:LS;

    if-eqz v1, :cond_bf

    .line 623
    sget-boolean v1, LR;->a:Z

    if-eqz v1, :cond_b8

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Removing pending loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, LS;->a:LS;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_b8
    iget-object v1, v0, LS;->a:LS;

    invoke-virtual {v1}, LS;->f()V

    .line 625
    iput-object v4, v0, LS;->a:LS;

    .line 627
    :cond_bf
    sget-boolean v1, LR;->a:Z

    if-eqz v1, :cond_ca

    const-string v1, "LoaderManager"

    const-string v2, "  Enqueuing as new pending loader"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_ca
    invoke-direct {p0, p1, p2, p3}, LR;->a(ILandroid/os/Bundle;LQ;)LS;

    move-result-object v1

    iput-object v1, v0, LS;->a:LS;

    .line 630
    iget-object v0, v0, LS;->a:LS;

    iget-object v0, v0, LS;->a:LX;

    goto :goto_7d

    .line 636
    :cond_d5
    sget-boolean v1, LR;->a:Z

    if-eqz v1, :cond_f1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Making last loader inactive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_f1
    iget-object v1, v0, LS;->a:LX;

    invoke-virtual {v1}, LX;->h()V

    .line 638
    iget-object v1, p0, LR;->b:LM;

    invoke-virtual {v1, p1, v0}, LM;->a(ILjava/lang/Object;)V

    goto/16 :goto_77
.end method

.method public a()V
    .registers 5

    .prologue
    .line 697
    sget-boolean v0, LR;->a:Z

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

    .line 698
    :cond_1c
    iget-boolean v0, p0, LR;->b:Z

    if-eqz v0, :cond_43

    .line 699
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 701
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

    .line 712
    :cond_42
    return-void

    .line 705
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, LR;->b:Z

    .line 709
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0}, LM;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4f
    if-ltz v1, :cond_42

    .line 710
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0, v1}, LM;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS;

    invoke-virtual {v0}, LS;->a()V

    .line 709
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4f
.end method

.method a(LS;)V
    .registers 4
    .parameter

    .prologue
    .line 504
    iget-object v0, p0, LR;->a:LM;

    iget v1, p1, LS;->a:I

    invoke-virtual {v0, v1, p1}, LM;->a(ILjava/lang/Object;)V

    .line 505
    iget-boolean v0, p0, LR;->b:Z

    if-eqz v0, :cond_e

    .line 509
    invoke-virtual {p1}, LS;->a()V

    .line 511
    :cond_e
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, LR;->a:Landroid/support/v4/app/FragmentActivity;

    .line 481
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

    .line 796
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0}, LM;->a()I

    move-result v0

    if-lez v0, :cond_59

    .line 797
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
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

    .line 799
    :goto_25
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0}, LM;->a()I

    move-result v0

    if-ge v1, v0, :cond_59

    .line 800
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0, v1}, LM;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS;

    .line 801
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, LR;->a:LM;

    invoke-virtual {v4, v1}, LM;->a(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 802
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, LS;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0, v3, p2, p3, p4}, LS;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 799
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 806
    :cond_59
    iget-object v0, p0, LR;->b:LM;

    invoke-virtual {v0}, LM;->a()I

    move-result v0

    if-lez v0, :cond_af

    .line 807
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 809
    :goto_7c
    iget-object v0, p0, LR;->b:LM;

    invoke-virtual {v0}, LM;->a()I

    move-result v0

    if-ge v2, v0, :cond_af

    .line 810
    iget-object v0, p0, LR;->b:LM;

    invoke-virtual {v0, v2}, LM;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS;

    .line 811
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, LR;->b:LM;

    invoke-virtual {v3, v2}, LM;->a(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 812
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, LS;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0, v1, p2, p3, p4}, LS;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 809
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 816
    :cond_af
    return-void
.end method

.method public a()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 820
    .line 821
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0}, LM;->a()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 822
    :goto_9
    if-ge v2, v4, :cond_23

    .line 823
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0, v2}, LM;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS;

    .line 824
    iget-boolean v5, v0, LS;->c:Z

    if-eqz v5, :cond_21

    iget-boolean v0, v0, LS;->b:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    :goto_1c
    or-int/2addr v3, v0

    .line 822
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_21
    move v0, v1

    .line 824
    goto :goto_1c

    .line 826
    :cond_23
    return v3
.end method

.method public b()V
    .registers 5

    .prologue
    .line 715
    sget-boolean v0, LR;->a:Z

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

    .line 716
    :cond_1c
    iget-boolean v0, p0, LR;->b:Z

    if-nez v0, :cond_43

    .line 717
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 719
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

    .line 727
    :goto_42
    return-void

    .line 723
    :cond_43
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0}, LM;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4c
    if-ltz v1, :cond_5d

    .line 724
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0, v1}, LM;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS;

    invoke-virtual {v0}, LS;->e()V

    .line 723
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4c

    .line 726
    :cond_5d
    const/4 v0, 0x0

    iput-boolean v0, p0, LR;->b:Z

    goto :goto_42
.end method

.method public c()V
    .registers 5

    .prologue
    .line 730
    sget-boolean v0, LR;->a:Z

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

    .line 731
    :cond_1c
    iget-boolean v0, p0, LR;->b:Z

    if-nez v0, :cond_43

    .line 732
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 734
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

    .line 743
    :cond_42
    return-void

    .line 738
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, LR;->c:Z

    .line 739
    const/4 v0, 0x0

    iput-boolean v0, p0, LR;->b:Z

    .line 740
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0}, LM;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_52
    if-ltz v1, :cond_42

    .line 741
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0, v1}, LM;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS;

    invoke-virtual {v0}, LS;->b()V

    .line 740
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_52
.end method

.method public d()V
    .registers 4

    .prologue
    .line 746
    iget-boolean v0, p0, LR;->c:Z

    if-eqz v0, :cond_3d

    .line 747
    sget-boolean v0, LR;->a:Z

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

    .line 749
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, LR;->c:Z

    .line 750
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0}, LM;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2c
    if-ltz v1, :cond_3d

    .line 751
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0, v1}, LM;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS;

    invoke-virtual {v0}, LS;->c()V

    .line 750
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2c

    .line 754
    :cond_3d
    return-void
.end method

.method public e()V
    .registers 4

    .prologue
    .line 757
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0}, LM;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 758
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0, v1}, LM;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS;

    const/4 v2, 0x1

    iput-boolean v2, v0, LS;->f:Z

    .line 757
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 760
    :cond_1a
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 763
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0}, LM;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 764
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0, v1}, LM;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS;

    invoke-virtual {v0}, LS;->d()V

    .line 763
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 766
    :cond_1a
    return-void
.end method

.method public g()V
    .registers 4

    .prologue
    .line 769
    iget-boolean v0, p0, LR;->c:Z

    if-nez v0, :cond_3a

    .line 770
    sget-boolean v0, LR;->a:Z

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

    .line 771
    :cond_20
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0}, LM;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_29
    if-ltz v1, :cond_3a

    .line 772
    iget-object v0, p0, LR;->a:LM;

    invoke-virtual {v0, v1}, LM;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS;

    invoke-virtual {v0}, LS;->f()V

    .line 771
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_29

    .line 776
    :cond_3a
    sget-boolean v0, LR;->a:Z

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

    .line 777
    :cond_56
    iget-object v0, p0, LR;->b:LM;

    invoke-virtual {v0}, LM;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5f
    if-ltz v1, :cond_70

    .line 778
    iget-object v0, p0, LR;->b:LM;

    invoke-virtual {v0, v1}, LM;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS;

    invoke-virtual {v0}, LS;->f()V

    .line 777
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5f

    .line 780
    :cond_70
    iget-object v0, p0, LR;->b:LM;

    invoke-virtual {v0}, LM;->a()V

    .line 781
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 786
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    iget-object v1, p0, LR;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Lan;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 790
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
