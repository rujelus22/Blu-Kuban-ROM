.class final LaE/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaE/h;

.field final synthetic b:LaJ/B;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Z

.field final synthetic h:LaE/f;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:LaJ/B;

.field final synthetic k:Z

.field final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(LaE/h;LaJ/B;IILjava/lang/String;IZLaE/f;Ljava/lang/String;LaJ/B;ZLjava/lang/String;)V
    .registers 13

    iput-object p1, p0, LaE/e;->a:LaE/h;

    iput-object p2, p0, LaE/e;->b:LaJ/B;

    iput p3, p0, LaE/e;->c:I

    iput p4, p0, LaE/e;->d:I

    iput-object p5, p0, LaE/e;->e:Ljava/lang/String;

    iput p6, p0, LaE/e;->f:I

    iput-boolean p7, p0, LaE/e;->g:Z

    iput-object p8, p0, LaE/e;->h:LaE/f;

    iput-object p9, p0, LaE/e;->i:Ljava/lang/String;

    iput-object p10, p0, LaE/e;->j:LaJ/B;

    iput-boolean p11, p0, LaE/e;->k:Z

    iput-object p12, p0, LaE/e;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    invoke-static {}, LaF/b;->d()LaF/b;

    move-result-object v5

    invoke-static {}, LaI/c;->c()LaI/c;

    move-result-object v6

    invoke-virtual {v5}, LaF/b;->f()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v6}, LaI/c;->f()Z

    move-result v1

    if-nez v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, LaE/e;->a:LaE/h;

    if-eqz v1, :cond_58

    :cond_1a
    new-instance v1, LaE/d;

    move-object/from16 v0, p0

    iget-object v2, v0, LaE/e;->b:LaJ/B;

    move-object/from16 v0, p0

    iget v3, v0, LaE/e;->c:I

    move-object/from16 v0, p0

    iget v4, v0, LaE/e;->d:I

    move-object/from16 v0, p0

    iget-object v7, v0, LaE/e;->a:LaE/h;

    move-object/from16 v0, p0

    iget-object v8, v0, LaE/e;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, LaE/e;->f:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, LaE/e;->g:Z

    move-object/from16 v0, p0

    iget-object v11, v0, LaE/e;->h:LaE/f;

    move-object/from16 v0, p0

    iget-object v12, v0, LaE/e;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, LaE/e;->j:LaJ/B;

    move-object/from16 v0, p0

    iget-boolean v14, v0, LaE/e;->k:Z

    move-object/from16 v0, p0

    iget-object v15, v0, LaE/e;->l:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, LaE/d;-><init>(LaJ/B;IILaF/b;LaI/c;LaE/h;Ljava/lang/String;IZLaE/f;Ljava/lang/String;LaJ/B;ZLjava/lang/String;LaE/e;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lat/h;->c(Lat/g;)V

    :cond_58
    return-void
.end method
