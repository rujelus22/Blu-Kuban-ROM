.class public final Lcom/acquariusoft/UpdateMe/b/j;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/j;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/j;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/j;->c:Ljava/lang/String;

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/j;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/j;->e:Ljava/lang/String;

    const-string v0, "0644"

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/j;->f:Ljava/lang/String;

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/j;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/j;->i:Ljava/lang/String;

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/j;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/j;->k:Ljava/lang/String;

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/j;->l:I

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/j;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/j;->n:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/j;->o:Ljava/util/List;

    return-void
.end method
