.class final LS;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements LY;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LY",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field a:LQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQ",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic a:LR;

.field a:LS;

.field a:LX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final a:Landroid/os/Bundle;

.field a:Ljava/lang/Object;

.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z


# direct methods
.method public constructor <init>(LR;ILandroid/os/Bundle;LQ;)V
    .registers 5
    .parameter
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    iput-object p1, p0, LS;->a:LR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p2, p0, LS;->a:I

    .line 227
    iput-object p3, p0, LS;->a:Landroid/os/Bundle;

    .line 228
    iput-object p4, p0, LS;->a:LQ;

    .line 229
    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 232
    iget-boolean v0, p0, LS;->d:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, LS;->e:Z

    if-eqz v0, :cond_c

    .line 236
    iput-boolean v3, p0, LS;->c:Z

    .line 264
    :cond_b
    :goto_b
    return-void

    .line 240
    :cond_c
    iget-boolean v0, p0, LS;->c:Z

    if-nez v0, :cond_b

    .line 245
    iput-boolean v3, p0, LS;->c:Z

    .line 247
    sget-boolean v0, LR;->a:Z

    if-eqz v0, :cond_2e

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2e
    iget-object v0, p0, LS;->a:LX;

    if-nez v0, :cond_42

    iget-object v0, p0, LS;->a:LQ;

    if-eqz v0, :cond_42

    .line 249
    iget-object v0, p0, LS;->a:LQ;

    iget v1, p0, LS;->a:I

    iget-object v2, p0, LS;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, LQ;->a(ILandroid/os/Bundle;)LX;

    move-result-object v0

    iput-object v0, p0, LS;->a:LX;

    .line 251
    :cond_42
    iget-object v0, p0, LS;->a:LX;

    if-eqz v0, :cond_b

    .line 252
    iget-object v0, p0, LS;->a:LX;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, LS;->a:LX;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LS;->a:LX;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_7d
    iget-boolean v0, p0, LS;->h:Z

    if-nez v0, :cond_8a

    .line 259
    iget-object v0, p0, LS;->a:LX;

    iget v1, p0, LS;->a:I

    invoke-virtual {v0, v1, p0}, LX;->a(ILY;)V

    .line 260
    iput-boolean v3, p0, LS;->h:Z

    .line 262
    :cond_8a
    iget-object v0, p0, LS;->a:LX;

    invoke-virtual {v0}, LX;->c()V

    goto/16 :goto_b
.end method

.method public a(LX;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 359
    sget-boolean v0, LR;->a:Z

    if-eqz v0, :cond_1d

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_1d
    iget-boolean v0, p0, LS;->g:Z

    if-eqz v0, :cond_2d

    .line 362
    sget-boolean v0, LR;->a:Z

    if-eqz v0, :cond_2c

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load complete -- destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_2c
    :goto_2c
    return-void

    .line 366
    :cond_2d
    iget-object v0, p0, LS;->a:LR;

    iget-object v0, v0, LR;->a:LM;

    iget v1, p0, LS;->a:I

    invoke-virtual {v0, v1}, LM;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_45

    .line 369
    sget-boolean v0, LR;->a:Z

    if-eqz v0, :cond_2c

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load complete -- not active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 373
    :cond_45
    iget-object v0, p0, LS;->a:LS;

    .line 374
    if-eqz v0, :cond_79

    .line 378
    sget-boolean v1, LR;->a:Z

    if-eqz v1, :cond_65

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Switching to pending loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_65
    iput-object v4, p0, LS;->a:LS;

    .line 380
    iget-object v1, p0, LS;->a:LR;

    iget-object v1, v1, LR;->a:LM;

    iget v2, p0, LS;->a:I

    invoke-virtual {v1, v2, v4}, LM;->a(ILjava/lang/Object;)V

    .line 381
    invoke-virtual {p0}, LS;->f()V

    .line 382
    iget-object v1, p0, LS;->a:LR;

    invoke-virtual {v1, v0}, LR;->a(LS;)V

    goto :goto_2c

    .line 388
    :cond_79
    iget-object v0, p0, LS;->a:Ljava/lang/Object;

    if-ne v0, p2, :cond_81

    iget-boolean v0, p0, LS;->a:Z

    if-nez v0, :cond_8d

    .line 389
    :cond_81
    iput-object p2, p0, LS;->a:Ljava/lang/Object;

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, LS;->a:Z

    .line 391
    iget-boolean v0, p0, LS;->c:Z

    if-eqz v0, :cond_8d

    .line 392
    invoke-virtual {p0, p1, p2}, LS;->b(LX;Ljava/lang/Object;)V

    .line 402
    :cond_8d
    iget-object v0, p0, LS;->a:LR;

    iget-object v0, v0, LR;->b:LM;

    iget v1, p0, LS;->a:I

    invoke-virtual {v0, v1}, LM;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS;

    .line 403
    if-eqz v0, :cond_ac

    if-eq v0, p0, :cond_ac

    .line 404
    const/4 v1, 0x0

    iput-boolean v1, v0, LS;->b:Z

    .line 405
    invoke-virtual {v0}, LS;->f()V

    .line 406
    iget-object v0, p0, LS;->a:LR;

    iget-object v0, v0, LR;->b:LM;

    iget v1, p0, LS;->a:I

    invoke-virtual {v0, v1}, LM;->b(I)V

    .line 409
    :cond_ac
    iget-object v0, p0, LS;->a:LR;

    iget-object v0, v0, LR;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2c

    iget-object v0, p0, LS;->a:LR;

    invoke-virtual {v0}, LR;->a()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 410
    iget-object v0, p0, LS;->a:LR;

    iget-object v0, v0, LR;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Lz;

    invoke-virtual {v0}, Lz;->b()V

    goto/16 :goto_2c
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, LS;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 449
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, LS;->a:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, LS;->a:LQ;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, LS;->a:LX;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, LS;->a:LX;

    if-eqz v0, :cond_4d

    .line 453
    iget-object v0, p0, LS;->a:LX;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, LX;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 455
    :cond_4d
    iget-boolean v0, p0, LS;->a:Z

    if-nez v0, :cond_55

    iget-boolean v0, p0, LS;->b:Z

    if-eqz v0, :cond_79

    .line 456
    :cond_55
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, LS;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 457
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, LS;->b:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 458
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, LS;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 460
    :cond_79
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, LS;->c:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 461
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, LS;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 462
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, LS;->g:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 463
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, LS;->d:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 464
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, LS;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 465
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, LS;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 466
    iget-object v0, p0, LS;->a:LS;

    if-eqz v0, :cond_e9

    .line 467
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, LS;->a:LS;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, LS;->a:LS;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, LS;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 471
    :cond_e9
    return-void
.end method

.method b()V
    .registers 4

    .prologue
    .line 267
    sget-boolean v0, LR;->a:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, LS;->d:Z

    .line 269
    iget-boolean v0, p0, LS;->c:Z

    iput-boolean v0, p0, LS;->e:Z

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, LS;->c:Z

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, LS;->a:LQ;

    .line 272
    return-void
.end method

.method b(LX;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, LS;->a:LQ;

    if-eqz v0, :cond_5e

    .line 416
    const/4 v0, 0x0

    .line 417
    iget-object v1, p0, LS;->a:LR;

    iget-object v1, v1, LR;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_6f

    .line 418
    iget-object v0, p0, LS;->a:LR;

    iget-object v0, v0, LR;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Lz;

    iget-object v0, v0, Lz;->a:Ljava/lang/String;

    .line 419
    iget-object v1, p0, LS;->a:LR;

    iget-object v1, v1, LR;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Lz;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Lz;->a:Ljava/lang/String;

    move-object v1, v0

    .line 422
    :goto_1e
    :try_start_1e
    sget-boolean v0, LR;->a:Z

    if-eqz v0, :cond_48

    const-string v0, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2}, LX;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_48
    iget-object v0, p0, LS;->a:LQ;

    invoke-interface {v0, p1, p2}, LQ;->a(LX;Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_1e .. :try_end_4d} :catchall_5f

    .line 426
    iget-object v0, p0, LS;->a:LR;

    iget-object v0, v0, LR;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_5b

    .line 427
    iget-object v0, p0, LS;->a:LR;

    iget-object v0, v0, LR;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Lz;

    iput-object v1, v0, Lz;->a:Ljava/lang/String;

    .line 430
    :cond_5b
    const/4 v0, 0x1

    iput-boolean v0, p0, LS;->b:Z

    .line 432
    :cond_5e
    return-void

    .line 426
    :catchall_5f
    move-exception v0

    iget-object v2, p0, LS;->a:LR;

    iget-object v2, v2, LR;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_6e

    .line 427
    iget-object v2, p0, LS;->a:LR;

    iget-object v2, v2, LR;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->a:Lz;

    iput-object v1, v2, Lz;->a:Ljava/lang/String;

    :cond_6e
    throw v0

    :cond_6f
    move-object v1, v0

    goto :goto_1e
.end method

.method c()V
    .registers 4

    .prologue
    .line 275
    iget-boolean v0, p0, LS;->d:Z

    if-eqz v0, :cond_30

    .line 276
    sget-boolean v0, LR;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Finished Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, LS;->d:Z

    .line 278
    iget-boolean v0, p0, LS;->c:Z

    iget-boolean v1, p0, LS;->e:Z

    if-eq v0, v1, :cond_30

    .line 279
    iget-boolean v0, p0, LS;->c:Z

    if-nez v0, :cond_30

    .line 283
    invoke-virtual {p0}, LS;->e()V

    .line 288
    :cond_30
    iget-boolean v0, p0, LS;->c:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, LS;->a:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, LS;->f:Z

    if-nez v0, :cond_43

    .line 295
    iget-object v0, p0, LS;->a:LX;

    iget-object v1, p0, LS;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, LS;->b(LX;Ljava/lang/Object;)V

    .line 297
    :cond_43
    return-void
.end method

.method d()V
    .registers 3

    .prologue
    .line 300
    iget-boolean v0, p0, LS;->c:Z

    if-eqz v0, :cond_16

    .line 301
    iget-boolean v0, p0, LS;->f:Z

    if-eqz v0, :cond_16

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, LS;->f:Z

    .line 303
    iget-boolean v0, p0, LS;->a:Z

    if-eqz v0, :cond_16

    .line 304
    iget-object v0, p0, LS;->a:LX;

    iget-object v1, p0, LS;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, LS;->b(LX;Ljava/lang/Object;)V

    .line 308
    :cond_16
    return-void
.end method

.method e()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 311
    sget-boolean v0, LR;->a:Z

    if-eqz v0, :cond_1d

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1d
    iput-boolean v3, p0, LS;->c:Z

    .line 313
    iget-boolean v0, p0, LS;->d:Z

    if-nez v0, :cond_37

    .line 314
    iget-object v0, p0, LS;->a:LX;

    if-eqz v0, :cond_37

    iget-boolean v0, p0, LS;->h:Z

    if-eqz v0, :cond_37

    .line 316
    iput-boolean v3, p0, LS;->h:Z

    .line 317
    iget-object v0, p0, LS;->a:LX;

    invoke-virtual {v0, p0}, LX;->a(LY;)V

    .line 318
    iget-object v0, p0, LS;->a:LX;

    invoke-virtual {v0}, LX;->f()V

    .line 321
    :cond_37
    return-void
.end method

.method f()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 324
    sget-boolean v0, LR;->a:Z

    if-eqz v0, :cond_1e

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Destroying: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, LS;->g:Z

    .line 326
    iget-boolean v0, p0, LS;->b:Z

    .line 327
    iput-boolean v4, p0, LS;->b:Z

    .line 328
    iget-object v1, p0, LS;->a:LQ;

    if-eqz v1, :cond_7d

    iget-object v1, p0, LS;->a:LX;

    if-eqz v1, :cond_7d

    iget-boolean v1, p0, LS;->a:Z

    if-eqz v1, :cond_7d

    if-eqz v0, :cond_7d

    .line 329
    sget-boolean v0, LR;->a:Z

    if-eqz v0, :cond_4f

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reseting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_4f
    iget-object v0, p0, LS;->a:LR;

    iget-object v0, v0, LR;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_b1

    .line 332
    iget-object v0, p0, LS;->a:LR;

    iget-object v0, v0, LR;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Lz;

    iget-object v0, v0, Lz;->a:Ljava/lang/String;

    .line 333
    iget-object v1, p0, LS;->a:LR;

    iget-object v1, v1, LR;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Lz;

    const-string v3, "onLoaderReset"

    iput-object v3, v1, Lz;->a:Ljava/lang/String;

    move-object v1, v0

    .line 336
    :goto_68
    :try_start_68
    iget-object v0, p0, LS;->a:LQ;

    iget-object v3, p0, LS;->a:LX;

    invoke-interface {v0, v3}, LQ;->a(LX;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_a1

    .line 338
    iget-object v0, p0, LS;->a:LR;

    iget-object v0, v0, LR;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_7d

    .line 339
    iget-object v0, p0, LS;->a:LR;

    iget-object v0, v0, LR;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Lz;

    iput-object v1, v0, Lz;->a:Ljava/lang/String;

    .line 343
    :cond_7d
    iput-object v2, p0, LS;->a:LQ;

    .line 344
    iput-object v2, p0, LS;->a:Ljava/lang/Object;

    .line 345
    iput-boolean v4, p0, LS;->a:Z

    .line 346
    iget-object v0, p0, LS;->a:LX;

    if-eqz v0, :cond_97

    .line 347
    iget-boolean v0, p0, LS;->h:Z

    if-eqz v0, :cond_92

    .line 348
    iput-boolean v4, p0, LS;->h:Z

    .line 349
    iget-object v0, p0, LS;->a:LX;

    invoke-virtual {v0, p0}, LX;->a(LY;)V

    .line 351
    :cond_92
    iget-object v0, p0, LS;->a:LX;

    invoke-virtual {v0}, LX;->j()V

    .line 353
    :cond_97
    iget-object v0, p0, LS;->a:LS;

    if-eqz v0, :cond_a0

    .line 354
    iget-object v0, p0, LS;->a:LS;

    invoke-virtual {v0}, LS;->f()V

    .line 356
    :cond_a0
    return-void

    .line 338
    :catchall_a1
    move-exception v0

    iget-object v2, p0, LS;->a:LR;

    iget-object v2, v2, LR;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_b0

    .line 339
    iget-object v2, p0, LS;->a:LR;

    iget-object v2, v2, LR;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->a:Lz;

    iput-object v1, v2, Lz;->a:Ljava/lang/String;

    :cond_b0
    throw v0

    :cond_b1
    move-object v1, v2

    goto :goto_68
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 437
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget v1, p0, LS;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v1, p0, LS;->a:LX;

    invoke-static {v1, v0}, Lan;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 443
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
