.class LaM/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Ljava/io/DataInput;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:LaM/am;


# direct methods
.method constructor <init>(LaM/am;IZLjava/io/DataInput;IZZ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3361
    iput-object p1, p0, LaM/ar;->g:LaM/am;

    iput p2, p0, LaM/ar;->a:I

    iput-boolean p3, p0, LaM/ar;->b:Z

    iput-object p4, p0, LaM/ar;->c:Ljava/io/DataInput;

    iput p5, p0, LaM/ar;->d:I

    iput-boolean p6, p0, LaM/ar;->e:Z

    iput-boolean p7, p0, LaM/ar;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 3365
    :try_start_0
    iget v0, p0, LaM/ar;->a:I

    packed-switch v0, :pswitch_data_94

    .line 3415
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 3367
    :pswitch_6
    iget-boolean v0, p0, LaM/ar;->b:Z

    if-eqz v0, :cond_5

    .line 3368
    iget-object v0, p0, LaM/ar;->g:LaM/am;

    iget-object v1, p0, LaM/ar;->c:Ljava/io/DataInput;

    iget v2, p0, LaM/ar;->d:I

    iget-boolean v3, p0, LaM/ar;->e:Z

    iget-boolean v4, p0, LaM/ar;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, LaM/am;->a(LaM/am;Ljava/io/DataInput;IZZ)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_5

    .line 3403
    :catch_18
    move-exception v0

    .line 3410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_MANAGER-LayersManager load ex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LaM/ar;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3412
    iget-object v0, p0, LaM/ar;->g:LaM/am;

    invoke-static {v0}, LaM/am;->a(LaM/am;)V

    goto :goto_5

    .line 3372
    :pswitch_37
    :try_start_37
    iget-boolean v0, p0, LaM/ar;->b:Z

    if-eqz v0, :cond_5

    .line 3373
    iget-object v0, p0, LaM/ar;->g:LaM/am;

    iget-object v1, p0, LaM/ar;->c:Ljava/io/DataInput;

    iget v2, p0, LaM/ar;->d:I

    iget-boolean v3, p0, LaM/ar;->e:Z

    iget-boolean v4, p0, LaM/ar;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, LaM/am;->b(LaM/am;Ljava/io/DataInput;IZZ)V

    goto :goto_5

    .line 3377
    :pswitch_49
    iget-object v0, p0, LaM/ar;->g:LaM/am;

    iget-object v1, p0, LaM/ar;->c:Ljava/io/DataInput;

    iget v2, p0, LaM/ar;->d:I

    iget-boolean v3, p0, LaM/ar;->e:Z

    iget-boolean v4, p0, LaM/ar;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, LaM/am;->c(LaM/am;Ljava/io/DataInput;IZZ)V

    goto :goto_5

    .line 3380
    :pswitch_57
    iget-object v0, p0, LaM/ar;->g:LaM/am;

    iget-object v1, p0, LaM/ar;->c:Ljava/io/DataInput;

    iget v2, p0, LaM/ar;->d:I

    iget-boolean v3, p0, LaM/ar;->e:Z

    iget-boolean v4, p0, LaM/ar;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, LaM/am;->d(LaM/am;Ljava/io/DataInput;IZZ)V

    goto :goto_5

    .line 3383
    :pswitch_65
    iget-boolean v0, p0, LaM/ar;->b:Z

    if-eqz v0, :cond_5

    .line 3384
    iget-object v0, p0, LaM/ar;->g:LaM/am;

    iget-object v1, p0, LaM/ar;->c:Ljava/io/DataInput;

    iget v2, p0, LaM/ar;->d:I

    iget-boolean v3, p0, LaM/ar;->e:Z

    iget-boolean v4, p0, LaM/ar;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, LaM/am;->e(LaM/am;Ljava/io/DataInput;IZZ)V

    goto :goto_5

    .line 3388
    :pswitch_77
    iget-object v0, p0, LaM/ar;->g:LaM/am;

    iget-object v1, p0, LaM/ar;->c:Ljava/io/DataInput;

    iget v2, p0, LaM/ar;->d:I

    iget-boolean v3, p0, LaM/ar;->e:Z

    iget-boolean v4, p0, LaM/ar;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, LaM/am;->f(LaM/am;Ljava/io/DataInput;IZZ)V

    goto :goto_5

    .line 3391
    :pswitch_85
    iget-object v0, p0, LaM/ar;->g:LaM/am;

    iget-object v1, p0, LaM/ar;->c:Ljava/io/DataInput;

    iget v2, p0, LaM/ar;->d:I

    iget-boolean v3, p0, LaM/ar;->e:Z

    iget-boolean v4, p0, LaM/ar;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, LaM/am;->g(LaM/am;Ljava/io/DataInput;IZZ)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_92} :catch_18

    goto/16 :goto_5

    .line 3365
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_6
        :pswitch_65
        :pswitch_5
        :pswitch_49
        :pswitch_5
        :pswitch_5
        :pswitch_57
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_77
        :pswitch_5
        :pswitch_85
        :pswitch_5
        :pswitch_5
        :pswitch_37
    .end packed-switch
.end method
